FROM erlang:18.1

MAINTAINER Anthony Smith <anthony@sticksnleaves.com>

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN apt-get update -y \
  && apt-get install locales -y

RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen \
  && locale-gen

RUN curl -sSL https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb -o erlang-solutions_1.0_all.deb \
  && dpkg -i erlang-solutions_1.0_all.deb \
  && rm -f erlang-solutions_1.0_all.deb

RUN apt-get update -y \
  && apt-get install elixir -y

CMD ["iex"]
