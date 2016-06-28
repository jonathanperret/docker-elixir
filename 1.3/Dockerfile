FROM buildpack-deps:jessie

MAINTAINER Jonathan Perret <jonathan@ut7.fr>

ENV LC_ALL C.UTF-8

RUN curl -sSL https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb -o erlang-solutions_1.0_all.deb \
  && DEBIAN_FRONTEND=noninteractive dpkg -i erlang-solutions_1.0_all.deb \
  && rm -f erlang-solutions_1.0_all.deb

ENV ELIXIR_VERSION 1.3.0
ENV ERLANG_VERSION 18.3

RUN apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    erlang-dev=1:$ERLANG_VERSION-1 \
    erlang-nox=1:$ERLANG_VERSION-1 \
    erlang-src=1:$ERLANG_VERSION-1 \
    elixir=$ELIXIR_VERSION-1

RUN mix local.hex --force && \
    mix local.rebar --force

CMD ["iex"]
