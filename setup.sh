#!/bin/bash

echo "�� Setting up GitHub repository connection..."

if [ ! -d .git ]; then
  echo "📝 Initializing git repository..."
  git init
  git branch -M main
else
  echo "✓ Git already initialized"
fi

echo "🔗 Adding remote repository..."
git remote remove origin 2>/dev/null
git remote add origin git@github.com:Achilovraf/turon-analitics.git

echo "📦 Adding files..."
git add .

echo "💾 Creating first commit..."
git commit -m "Initial commit: Turon Analytics website"

echo "📤 Pushing to GitHub..."
git push -u origin main

echo ""
echo "✅ Setup completed!"
echo "🌐 Repository: https://github.com/Achilovraf/turon-analitics"
echo ""
echo "Next: Go to Settings > Pages and select 'gh-pages' branch"
