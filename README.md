# Loggregator Docs

This repository is used to generate the loggregator docs website. It uses [jekyll](http://jekyllrb.com/) to achieve this.

# Prerequisites

```bash
gem install jekyll
```

# Running the site locally

```bash
cd docs_site
jekyll serve # starts the site on localhost:4000
```

# Deploying the site to CloudFoundry

```bash
cd docs_site
jekyll build
cd _site
cf push loggregator-docs -m 64M -b https://github.com/cloudfoundry/staticfile-buildpack.git
```
