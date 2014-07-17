# docker-jekyll

## Run:
```docker run -d -v $PWD:/jekyll -p 4000:4000 pandrew/jekyll```

To run with *drafts* enabled:

```docker run -d -v $PWD:/jekyll -e DRAFTS=true -p 4000:4000 pandrew/jekyll```
