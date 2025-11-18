#!/bin/bash

echo "🚀 Installing mkpyenv..."

# 1. Define Destinations
BIN_DIR="$HOME/bin"
TEMPLATE_DIR="$HOME/templates"

# 2. Create Directories if missing
mkdir -p "$BIN_DIR"
mkdir -p "$TEMPLATE_DIR"

# 3. Copy the script
cp mkpyenv "$BIN_DIR/"
chmod +x "$BIN_DIR/mkpyenv"
echo "✅ Script copied to $BIN_DIR"

# 4. Copy the templates
# We use -r for recursive and -u to update only if newer
cp -ru templates/* "$TEMPLATE_DIR/"
echo "✅ Templates copied to $TEMPLATE_DIR"

# 5. Path Check
if [[ ":$PATH:" != *":$HOME/bin:"* ]]; then
    echo "⚠️  Warning: $HOME/bin is not in your PATH."
    echo "   Add 'export PATH=\$HOME/bin:\$PATH' to your .bashrc"
fi

echo "🎉 Installation complete! Try running: mkpyenv --help"
