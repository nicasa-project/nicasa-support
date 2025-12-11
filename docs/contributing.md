# Contributing

We welcome contributions to improve the Nicasa Support documentation! Whether you're fixing a typo, adding a new guide, or improving existing content, your help is appreciated.

## Ways to Contribute

### Documentation Improvements
- Fix typos or grammatical errors
- Clarify confusing instructions
- Add missing information
- Update outdated content
- Improve formatting and readability

### New Content
- Create guides for common issues
- Add tutorials or examples
- Translate documentation to other languages
- Write FAQ entries

### Technical Contributions
- Improve the build process
- Add new features to the documentation site
- Fix bugs in the deployment workflow

## Getting Started

### Prerequisites
- Node.js 18 or later
- pnpm package manager
- Git

### Development Setup

1. **Fork the repository** on GitHub
2. **Clone your fork**:
   ```bash
   git clone https://github.com/YOUR_USERNAME/nicasa-support.git
   cd nicasa-support
   ```
3. **Install dependencies**:
   ```bash
   pnpm install
   ```
4. **Start development server**:
   ```bash
   pnpm docs:dev
   ```
5. **Open** `http://localhost:4173` in your browser

### Making Changes

1. Create a new branch for your changes:
   ```bash
   git checkout -b feature/your-feature-name
   ```
2. Make your changes to the documentation files in `docs/`
3. Test your changes by building the site:
   ```bash
   pnpm docs:build
   ```
4. Commit your changes:
   ```bash
   git add .
   git commit -m "Description of your changes"
   ```

### Submitting Changes

1. **Push your branch** to your fork:
   ```bash
   git push origin feature/your-feature-name
   ```
2. **Create a Pull Request** on GitHub
3. **Wait for review** and address any feedback

## Guidelines

### Writing Style
- Use clear, concise language
- Write in active voice when possible
- Be inclusive and welcoming
- Use consistent formatting
- Include code examples when helpful

### File Structure
- Documentation pages go in `docs/`
- Guides go in `docs/guide/`
- Use lowercase filenames with hyphens: `my-new-guide.md`
- Frontmatter is not required but can be used for metadata

### Links
- Use relative links for internal documentation
- Link to external resources when helpful
- Ensure all links work

### Images and Assets
- Place images in `docs/public/` or subdirectories
- Use descriptive filenames
- Optimize images for web (under 500KB preferred)

## Code of Conduct

This project follows a code of conduct. By participating, you agree to:
- Be respectful and inclusive
- Focus on constructive feedback
- Accept responsibility for mistakes

See [CODE_OF_CONDUCT.md](https://github.com/nicasa-project/nicasa-support/blob/main/CODE_OF_CONDUCT.md) for details.

## Questions?

If you have questions about contributing:
- Check existing [issues](https://github.com/nicasa-project/nicasa-support/issues) and [discussions](https://github.com/nicasa-project/nicasa-support/discussions)
- Create a new issue if needed
- Contact the maintainers

Thank you for helping improve Nicasa Support documentation! 🎉