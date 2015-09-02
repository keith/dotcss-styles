#!/bin/sh

file=github.com.css
url=https://raw.githubusercontent.com/StylishThemes/GitHub-Dark/master/github-dark.css

curl "$url" -o "$file"

sed -E -i "" "s/\/\*\[\[bg-choice\]\].*$/none;/" "$file"
sed -i "" "/moz-document/d" "$file"
sed -i "" "$ d" "$file"
