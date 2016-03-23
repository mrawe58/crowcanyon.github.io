#!/bin/bash
## Deploy to gh-pages
{
git clone -b gh-pages https://cboettig:${GH_TOKEN}@github.com/crowcanyon/crowcanyon.github.io ../deploy 
rsync -a _site/ ../deploy/
cd ../deploy 
git add -A . 
git commit -m 'Site updated from script' 
git push
} &> /dev/null

