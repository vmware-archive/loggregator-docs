#!/bin/bash

gem install therubyracer
gem install jekyll
cd loggregator-docs/docs_site
jekyll build
