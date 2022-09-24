FROM elixir:1.14.0-slim

USER root

RUN apt-get update -y
RUN apt-get install inotify-tools -y

RUN useradd -ms /bin/bash elixir

USER elixir

WORKDIR /home/elixir/app

RUN mix local.hex --force && \
    mix local.rebar --force
    
COPY . .

EXPOSE 4000

CMD [ "sh", "-c", "tail -f /dev/null" ]