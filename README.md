# docker-jekyll

Run [Jekyll](http://jekyllrb.com/) in a [Docker](http://docker.io/) container.

Link: [frvi/jekyll](https://registry.hub.docker.com/u/frvi/jekyll/)


## Run:
```docker run -d -v $PWD:/jekyll -p 4000:4000 frvi/jekyll```

where $PWD should contain your jekyll content.

Point your browser to [http://localhost:4000/](http://localhost:4000/).

### Enable drafts
To run with *drafts* enabled:

```docker run -d -v $PWD:/jekyll -p 4000:4000 frvi/jekyll --drafts```
