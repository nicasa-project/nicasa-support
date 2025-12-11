# Nicasa Support

This repository contains the technical support documentation for **Nicasa**, a smooth, modern image-viewing application for desktop.

## About Nicasa

Nicasa brings a smooth, modern image-viewing experience to your desktop. It provides fast, intuitive navigation through your image collections with a clean, responsive interface.

## Documentation

This site is built with [VitePress](https://vitepress.dev/) and contains comprehensive guides for users and developers.

### Getting Help

- **Submit Issues**: Report bugs or request features at [GitHub Issues](https://github.com/nicasa-project/nicasa-support/issues)
- **Documentation**: Browse the full documentation at [nicasa-support.pages.dev](https://nicasa-support.pages.dev) (when deployed)
- **Wiki**: Additional resources in the GitHub Wiki

## Development

### Prerequisites

- Node.js 18+
- pnpm

### Setup

```bash
pnpm install
```

### Development

```bash
pnpm docs:dev
```

This will start a local development server at `http://localhost:4173`.

### Build

```bash
pnpm docs:build
```

### Preview

```bash
pnpm docs:preview
```

## Deployment

This documentation site is automatically deployed to GitHub Pages when changes are pushed to the `main` branch.

### Manual Deployment

To deploy manually:

1. Build the site: `pnpm docs:build`
2. The built files will be in `docs/.vitepress/dist`
3. Deploy to your hosting platform

### GitHub Pages Setup

The repository includes a GitHub Actions workflow that automatically:

- Builds the documentation on every push to `main`
- Deploys to GitHub Pages
- Makes the site available at `https://nicasa-project.github.io/nicasa-support`

To enable GitHub Pages:

1. Go to repository Settings > Pages
2. Select "GitHub Actions" as the source
3. The site will be available at the provided URL

## Contributing

We welcome contributions to improve the documentation:

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## License

This documentation is licensed under the MIT License.
