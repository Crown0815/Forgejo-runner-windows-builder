#!/bin/bash
set -euo pipefail
shopt -s nullglob
tag=$1
for dir in "$(dirname "$0")"/*/; do
  range=${dir%/}
  range=${range##*/}
  case $range in
    *+)
      low=${range%+}
      if [[ $tag == v[0-9]* ]] && [ "$(printf '%s\n' "$low" "$tag" | sort -V | head -n1)" != "$low" ]; then
        continue
      fi
      ;;
    *-v*)
      low=${range%-v*}
      high=${range##*-}
      if [[ $tag != v[0-9]* ]] ||
         [ "$(printf '%s\n' "$low" "$tag" | sort -V | head -n1)" != "$low" ] ||
         [ "$(printf '%s\n' "$high" "$tag" | sort -V | tail -n1)" != "$high" ]; then
        continue
      fi
      ;;
    *)
      echo "unknown patch range: $range" >&2
      exit 1
      ;;
  esac
  git apply --ignore-whitespace "$dir"*.patch  # Windows may check out the patch or source with CRLF
done
