#!/usr/bin/env bash

if test $(which apm)
then
  cat packages.list | xargs apm install
fi
