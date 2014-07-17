FROM pandrew/rbenv

MAINTAINER Paul Andrew Liljenberg "letters@paulnotcom.se"

RUN bash -c "rbenv install 1.9.3-p484 && rbenv rehash"
RUN bash -c "rbenv global 1.9.3-p484"
RUN bash -c "gem install --no-rdoc --no-ri jekyll -v 1.5.1 && rbenv rehash"
RUN bash -c "gem install --no-rdoc --no-ri rake sass kramdown && rbenv rehash"

VOLUME ["/jekyll"]
WORKDIR /jekyll

ADD run.sh /
ENTRYPOINT ["/run.sh"]
