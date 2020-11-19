#!/usr/bin/env bash

build_with_cache() {
  if [[ -d "$RENDER_ROOT"/public ]]; then
    echo "Copying cached public dir"
    cp -rf "$RENDER_ROOT"/public public
  else
    echo "No cached public dir found"
  fi

  echo "Building"

  gatsby build

  echo "Done, caching public dir"
  cp -rf public "$RENDER_ROOT"/public
}

if [[ ""$RENDER" ]]; then
  build_with_cache
else
  gatsby build

