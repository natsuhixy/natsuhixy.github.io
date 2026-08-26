#!/bin/zsh

cd "$(dirname "$0")"

echo "🌱 Publishing your garden..."
echo ""

git add .

if git diff --cached --quiet; then
    echo "✨ No new changes to publish."
    echo ""
    read -k 1 "?Press any key to close..."
    exit 0
fi

git commit -m "Update garden"

git push

echo ""
echo "🌿 Garden published successfully!"
echo ""
echo "Your website:"
echo "https://natsuhixy.github.io"
echo ""

read -k 1 "?Press any key to close..."