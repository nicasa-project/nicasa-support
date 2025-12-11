#!/bin/bash

# Deploy script for Nicasa Support documentation
# Based on the provided deployment pattern

set -e

echo "🚀 Starting deployment process..."

# Create temp directory for deployment
mkdir -p temp_deploy
cd temp_deploy

# Configure git
git config --global user.name "GitHub Actions"
git config --global user.email "gidcai@gmail.com"

# Build the documentation in parent directory
echo "📦 Building documentation..."
cd ..
pnpm docs:build
cd temp_deploy

# Check if dist directory exists
if [ ! -d "../docs/.vitepress/dist" ]; then
    echo "❌ Build failed - dist directory not found"
    exit 1
fi

echo "✅ Build completed successfully"

# Clone gh-pages branch
echo "📥 Cloning gh-pages branch..."
git clone --depth 1 -b gh-pages --single-branch https://github.com/nicasa-project/nicasa-support.git gh-pages
cd gh-pages

# Clean existing files (keep .git directory)
echo "🧹 Cleaning existing files..."
rm -rf `find . -maxdepth 1 ! -name .git ! -name .`

# Copy built files
echo "📋 Copying built files..."
cp -rf ../../docs/.vitepress/dist/* .

# Add and commit
echo "📝 Committing changes..."
git add -A .
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

# Cleanup
cd ../..
rm -rf temp_deploy

echo "🎉 Deployment completed successfully!"
echo "📖 Documentation available at: https://nicasa-project.github.io/nicasa-support/"