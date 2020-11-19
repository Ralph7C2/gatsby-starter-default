#!/usr/bin/env bash

build_with_cache() {
  if [[ -d "$XDG_CACHE_DIR"/public ]]; then
    echo "Copying cached public dir"
    ln -s -f "$XDG_CACHE_DIR"/public public
  else
    echo "No cached public dir found"
  fi

  echo "Building"

  gatsby build

  echo "Done, caching public dir"
  ln -s -f -L public "$XDG_CACHE_DIR"
}

if [[ "$RENDER" ]]; then
  build_with_cache
else
  gatsby build
fi
