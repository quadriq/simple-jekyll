FROM ubuntu:16.04
RUN apt-get update
RUN apt-get -y install ruby rubygems ruby-dev make gcc vim git
RUN gem install jekyll bundler
RUN jekyll new quadriq
RUN cd /quadriq && bundle install

WORKDIR /quadriq
CMD ["jekyll", "serve", "--host", "0.0.0.0", "--port", "100"]

