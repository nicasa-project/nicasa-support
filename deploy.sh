#!/bin/bash

# Deploy script for Nicasa Support documentation
# This script builds the documentation and pushes it to gh-pages branch

set -e

echo "🚀 Starting deployment process..."

# Build the documentation
echo "📦 Building documentation..."
pnpm docs:build

# Check if dist directory exists
if [ ! -d "docs/.vitepress/dist" ]; then
    echo "❌ Build failed - dist directory not found"
    exit 1
fi

echo "✅ Build completed successfully"

# Switch to gh-pages branch
echo "🔄 Switching to gh-pages branch..."
git checkout gh-pages

# Remove all files except .git
echo "🧹 Cleaning gh-pages branch..."
git rm -rf . --ignore-unmatch
git clean -fd

# Copy built files
echo "📋 Copying built files..."
cp -r docs/.vitepress/dist/* .

# Add and commit
echo "📝 Committing changes..."
git add .
if git diff --staged --quiet; then
    echo "ℹ️  No changes to commit"
else
    git commit -m "Deploy Nicasa Support documentation

Built from $(git rev-parse --short HEAD)
Deployed on $(date -u +'%Y-%m-%d %H:%M:%S UTC')"
fi

# Push to gh-pages
echo "🚀 Pushing to gh-pages branch..."
git push origin gh-pages

# Switch back to main
echo "🔙 Switching back to main branch..."
git checkout main

echo "🎉 Deployment completed successfully!"
echo "📖 Documentation available at: https://nicasa-project.github.io/nicasa-support/"