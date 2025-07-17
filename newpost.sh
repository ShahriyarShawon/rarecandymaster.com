#!/bin/bash

# Prompt for the post title
read -p "Enter post title: " title

# Create slug: lowercase, replace spaces with dashes, remove special characters
slug=$(echo "$title" | tr '[:upper:]' '[:lower:]' | sed -E 's/[^a-z0-9 ]//g' | tr ' ' '-')

# Create the post with Hugo
hugo new "posts/${slug}.md"

# Optional: Print confirmation and path
echo "New post created: content/posts/${slug}.md"
``
