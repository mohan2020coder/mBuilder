#!/bin/sh
set -e

# ---------------------------
# 1️⃣ Build mBuilder binary
# ---------------------------

# Default values
EMBED_PATH=${EMBED:-"./public"}
OUT_BINARY=${OUT_BINARY:-"mbuilder"}

echo "🏗️  Building mBuilder with embed: $EMBED_PATH"
echo "🔧 Output binary will be: $OUT_BINARY"

xcaddy build \
  --output "$OUT_BINARY" \
  --with github.com/mohan2020coder/mBuilder/caddy \
  ${XCADDY_ARGS}

echo "✅ mBuilder build complete: ./$OUT_BINARY"