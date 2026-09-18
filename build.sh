#!/bin/bash
# Build script: converte cv_alex.md in index.html
# Usage: ./build.sh

set -e

echo "🔨 Building CV from cv_alex.md..."

# Check if pandoc is installed
if ! command -v pandoc &> /dev/null; then
    echo "⚠️  pandoc non installato. Installo con Homebrew..."
    brew install pandoc
fi

# Generate HTML from Markdown using pandoc with custom template
pandoc cv_alex.md \
    --template=template.html \
    --metadata title="CV — Alessandro Fratello" \
    -o index.html

echo "✅ index.html generato con successo!"
echo "📄 File: $(pwd)/index.html"
