# My website

My personal website [henrydashwood.com](http://www.henrydashwood.com)

### Running Locally

```shell
stack build
stack exec site build
stack exec site watch
```

Then you can view it at `http://localhost:8000/`

### TODO

#### Posts

- How I built the site

#### Technical

- RSS
- icons
- links should popup on hover over superscript
- Preview

# CIless Deployments

```shell
scp -i [SSH_KEY] _site/[PATH_TO_UPDATED_FILE] [USERNAME]]@[PUBLIC_IP]:~/[NAME_OF_FILE]
ssh -i  [SSH_KEY] [USERNAME]]@[PUBLIC_IP] "sudo mv ~/[NAME_OF_FILE] /var/www/henrydashwood.com/[PATH/T0/FILE/DESTINATION]"
```
