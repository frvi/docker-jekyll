#!/bin/bash

if [[ ! -z "$DRAFTS" ]]; then
  exec jekyll serve --drafts
else
  exec jekyll serve
fi

