#!/bin/bash

echo "🚀 Starting deployment..."

# Build the project
echo "📦 Building project..."
npm run build

# Navigate to build output directory
cd dist

# Initialize git if not already initialized
if [ ! -d .git ]; then
  git init
  git checkout -b gh-pages
fi

# Add all files
git add -A

# Commit changes
git commit -m "Deploy: $(date +'%Y-%m-%d %H:%M:%S')"

# Push to GitHub Pages
echo "📤 Pushing to GitHub..."
git push -f git@github.com:Achilovraf/turon-analitics.git gh-pages

cd ..

echo "✅ Deployment completed successfully!"
echo "🌐 Your site will be available at: https://achilovraf.github.io/turon-analitics/"
