import { defineConfig } from 'vitepress'

export default defineConfig({
  base: '/nicasa-support/',
  title: 'Nicasa Support',
  description: 'Technical support documentation for Nicasa application - a smooth, modern image-viewing experience',
  lastUpdated: true,
  themeConfig: {
    search: {
      provider: 'local'
    },
    nav: [
      { text: 'Home', link: '/' },
      { text: 'Guide', link: '/guide' },
      { text: 'Contributing', link: '/contributing' },
      { text: 'Changelog', link: 'https://github.com/nicasa-project/nicasa-support/blob/main/CHANGELOG.md' },
      { text: 'Issues', link: 'https://github.com/nicasa-project/nicasa-support/issues' },
      { text: 'GitHub', link: 'https://github.com/nicasa-project/nicasa-support' }
    ],
    sidebar: [
      {
        text: 'Guide',
        items: [
          { text: 'Introduction', link: '/guide/introduction' },
          { text: 'Installation', link: '/guide/installation' },
          { text: 'Usage', link: '/guide/usage' },
          { text: 'Troubleshooting', link: '/guide/troubleshooting' },
          { text: 'FAQ', link: '/guide/faq' }
        ]
      }
    ],
    socialLinks: [
      { icon: 'github', link: 'https://github.com/nicasa-project/nicasa-support' }
    ],
    footer: {
      message: 'Released under the ISC License.',
      copyright: 'Copyright © 2025 Nicasa Project'
    }
  }
})