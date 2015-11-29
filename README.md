# Elixir

## What is Elixir

Elixir is a dynamic, functional language designed for building scalable and
maintainable applications.

Elixir leverages the Erlang VM, known for running low-latency, distributed and
fault-tolerant systems, while also being successfully used in web development
and the embedded software domain.

To learn more about Elixir, check the
[getting started guide](http://elixir-lang.org/getting_started/1.html) or
[the official website](http://elixir-lang.org/).

## About this Image

This image is based off of the official Docker Erlang image. It is configured
for the latest release of Elixir and exposes the `iex` command.

## How to use This Image

#### Create a `Dockerfile` in your Project

```
  FROM sticksnleaves/elixir

  # Do stuff for my project here
```

You can also use it for a simple IEx repl:

```
  docker pull sticksnleaves/elixir
  docker run -t -i sticksnleaves/elixir
```

## Issues

If you have a problem please submit an issue in [the issue tracker](https://github.com/sticksnleaves/docker-elixir/issues).
