FROM pandrew/rbenv

MAINTAINER Paul Andrew Liljenberg "letters@paulnotcom.se"

RUN bash -c "rbenv install 1.9.3-p484 && rbenv rehash"
RUN bash -c "rbenv global 1.9.3-p484"
RUN bash -c "gem install --no-rdoc --no-ri jekyll rake sass  && rbenv rehash"
VOLUME ["/jekyll"]
WORKDIR /jekyll
ENTRYPOINT ["bash","-l","-c","jekyll serve"]
