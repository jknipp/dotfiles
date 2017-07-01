#!/bin/bash

# Add asdf plugins
asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git


# Add some versions
asdf install elixir 1.4.5
asdf install erlang 20.0

asdf global erlang 1.4.5
asdf global erlang 20.0