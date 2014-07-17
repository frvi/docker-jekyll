FROM frvi/ruby

MAINTAINER Fredrik Vihlborg "fredrik.wihlborg@gmail.com"

RUN gem install --no-rdoc --no-ri jekyll rake sass kramdown

VOLUME ["/jekyll"]
WORKDIR /jekyll

ENTRYPOINT ["/usr/local/bin/jekyll", "serve"]
