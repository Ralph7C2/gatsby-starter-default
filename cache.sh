#!/usr/bin/env bash

if [[ -d "$RENDER_ROOT"/public ]]; then
  cp -rf "$RENDER_ROOT"/public public
fi

gatsby build

cp -rf public "$RENDER_ROOT"/public