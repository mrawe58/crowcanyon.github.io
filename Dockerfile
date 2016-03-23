FROM ruby:2.1
MAINTAINER Kyle Bocinsky kbocinsky@crowcanyon.org

RUN apt-get update \
  && apt-get install -y \
    git \
    node \
    python-pygments

# copy the whole crowcanyon.github.io repo onto the container
COPY . /src

WORKDIR /src
RUN bundle install

EXPOSE 4000

CMD jekyll serve -H 0.0.0.0

