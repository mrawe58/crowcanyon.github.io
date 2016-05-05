#!/bin/bash
## Rebuild

jekyll clean
jekyll build
cp -r _site/people/associates people/associates

