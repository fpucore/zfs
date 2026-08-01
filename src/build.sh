#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"

SRC="$ROOT/src"
BUILD="$ROOT/build"
DIST="$ROOT/dist"
STATE="$ROOT/state"

rm -rf "$BUILD"
mkdir -p "$BUILD" "$DIST" "$STATE"

echo "[1] Copying source tree..."
cp -a "$SRC/." "$BUILD/"

cd "$BUILD"

echo "[2] Applying environment..."
source "$ROOT/env.conf" 2>/dev/null || true

export enable_linux_experimental=yes

echo "[3] Autotools bootstrap (if needed)..."
if [ -f autogen.sh ]; then
    ./autogen.sh || true
fi

echo "[4] Configuring..."
./configure

echo "[5] Building..."
make -j"$(nproc)"

echo "[6] Staging install into dist/..."
make DESTDIR="$DIST" install

echo "[7] Writing build stamp..."
date > "$STATE/last_build_time"
git rev-parse HEAD 2>/dev/null > "$STATE/commit" || true

echo "[✓] Build complete"
