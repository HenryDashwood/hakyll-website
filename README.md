# My website

My personal website [henrydashwood.com](http://www.henrydashwood.com)

## Running Locally

To install Hakyll (ARM Mac):

```shell
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | arch -x86_64 /bin/zsh
cabal new-install hakyll
```

To view the site locally, `cd` into its directory and run

```shell
site build
site watch
```

Then you can view it at `http://localhost:8000/`

## CIless Deployments

```shell
scp -r -i [SSH_KEY] _site ubuntu@[PUBLIC_IP]:~
ssh -i [SSH_KEY] ubuntu@[PUBLIC_IP] "sudo cp -r ~/_site/* /var/www/henrydashwood.com/ && rm -rf _site/"
```

## Setup remote machine to host site

```shell
sudo apt update -y
sudo apt install -y apache2
sudo service apache2 start
```
