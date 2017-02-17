FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.4

RUN gem install hamlizer --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["hamlize"]
CMD ["--help"]