--------------------------------------------------------------------------------
{-# LANGUAGE OverloadedStrings #-}
import           Data.Monoid (mappend)
import           Hakyll
--------------------------------------------------------------------------------
main :: IO ()
main = hakyll $ do
    match "images/*" $ do
        route   idRoute
        compile copyFileCompiler

    match "css/*" $ do
        route   idRoute
        compile compressCssCompiler

    match "things/*" $ do
        route   $ setExtension "html"
        compile $ pandocCompiler
            >>= loadAndApplyTemplate "templates/post.html" defaultContext
            >>= loadAndApplyTemplate "templates/default.html" defaultContext
            >>= relativizeUrls

    match "posts/*" $ do
        route $ setExtension "html"
        compile $ do
            pandocCompiler
                >>= loadAndApplyTemplate "templates/post.html"    postCtx
                >>= saveSnapshot         "content"
                >>= loadAndApplyTemplate "templates/default.html" postCtx
                >>= relativizeUrls

    create ["archive.html"] $ do
        route idRoute
        compile $ do
            posts <- recentFirst =<< loadAll "posts/*"
            let archiveCtx =
                    listField "posts" postCtx (return posts) `mappend`
                    constField "title" "Archives"            `mappend`
                    defaultContext
            makeItem ""
                >>= loadAndApplyTemplate "templates/archive.html" archiveCtx
                >>= loadAndApplyTemplate "templates/default.html" archiveCtx
                >>= relativizeUrls

    match "index.html" $ do
        route idRoute
        compile $ do
            posts <- recentFirst =<< loadAll "posts/*"
            let indexCtx =
                    listField "posts" postCtx (return posts) `mappend`
                    defaultContext
            getResourceBody
                >>= applyAsTemplate indexCtx
                >>= loadAndApplyTemplate "templates/default.html" indexCtx
                >>= relativizeUrls

    match "templates/*" $ compile templateBodyCompiler

    create ["rss.xml"] $ do
        route idRoute
        compile $ do
            let feedCtx = postCtx `mappend` bodyField "description"
            posts <- fmap (take 10) . recentFirst =<< loadAllSnapshots "posts/*" "content"
            renderRss feedConfiguration feedCtx posts

postCtx :: Context String
postCtx = dateField "date" "%B %e, %Y" `mappend` defaultContext

feedConfiguration :: FeedConfiguration
feedConfiguration = FeedConfiguration
    { feedTitle       = "Henry Dashwood's blog"
    , feedDescription = "The blog of Henry Dashwood"
    , feedAuthorName  = "Henry Dashwood"
    , feedAuthorEmail = "hcndashwood@gmail.com"
    , feedRoot        = "https://henrydashwood.com"
    }
