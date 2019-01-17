FROM alpine:3.8

RUN apk add --update \
    build-base \
    git \
    libpcap-dev \
    postgresql-dev \
    ruby \
    ruby-bundler \
    ruby-dev \
    ruby-rdoc \
    sqlite-dev \
    zlib-dev \
  && rm -rf /var/cache/apk/*

WORKDIR /opt/metasploit-framework

RUN git clone https://github.com/rapid7/metasploit-framework.git /opt/metasploit-framework

RUN bundle install && bundle add bigdecimal && bundle add webrick

COPY database.yml /root/.msf4/database.yml

COPY docker-entrypoint.sh /docker-entrypoint.sh

CMD /docker-entrypoint.sh
