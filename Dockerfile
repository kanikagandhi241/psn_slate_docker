FROM ruby:2.2.6-onbuild
EXPOSE 4567

RUN apt-get update && apt-get install -y nodejs \
&& apt-get clean && rm -rf /var/lib/apt/lists/*

ADD source /usr/src/app/source

CMD ["bundle", "exec", "middleman", "server", "--watcher-force-polling"]
