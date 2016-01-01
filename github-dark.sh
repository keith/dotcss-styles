#!/bin/sh

file=github.com.css
url=https://raw.githubusercontent.com/StylishThemes/GitHub-Dark/master/github-dark.css

curl "$url" -o "$file"

# This is kind of a hack, allow code blocks to scroll
sed -i "" "s=.*nowrap=/**=" "$file"

# Set my background image of choice
sed -E -i "" "s/\/\*\[\[bg-choice\]\].*$/none;/" "$file"

# Remove the moz annotations
sed -i "" "/moz-document/d" "$file"
sed -i "" "$ d" "$file"
