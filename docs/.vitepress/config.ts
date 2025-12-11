import { defineConfig } from 'vitepress'

export default defineConfig({
  title: 'Nicasa Support',
  description: 'Technical support documentation for Nicasa application - a smooth, modern image-viewing experience',
  themeConfig: {
    nav: [
      { text: 'Home', link: '/' },
      { text: 'Guide', link: '/guide' },
      { text: 'Issues', link: 'https://github.com/nicasa-project/nicasa-support/issues' }
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
    ]
  }
})