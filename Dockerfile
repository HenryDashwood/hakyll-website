FROM henrydashwood/hakyll:v0.0.2

COPY . /usr/src/website

WORKDIR /usr/src/website

# RUN cabal new-install

# RUN site build
