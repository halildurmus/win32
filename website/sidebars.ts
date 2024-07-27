import type { SidebarsConfig } from '@docusaurus/plugin-content-docs';

const sidebars: SidebarsConfig = {
  mainSidebar: [
    // Getting Started
    {
      type: 'category',
      label: 'Getting Started',
      className: 'category-as-header',
      items: [
        'getting-started/overview',
        'getting-started/quick-start',
        {
          type: 'link',
          href: 'https://win32.pub/examples',
          label: 'Examples',
          customProps: {
            external: true,
          },
        },
        {
          type: 'link',
          href: 'https://win32.pub/packages',
          label: 'Packages',
          customProps: {
            external: true,
          },
        },
        {
          type: 'link',
          href: 'https://pub.dev/documentation/win32/latest/',
          label: 'API reference',
          customProps: {
            external: true,
          },
        },
      ],
    },

    // Guides & Concepts
    {
      type: 'category',
      label: 'Guides & Concepts',
      className: 'category-as-header',
      items: [
        'guides-concepts/functions',
        'guides-concepts/integer-types',
        'guides-concepts/memory-allocation',
        'guides-concepts/structs',
        'guides-concepts/memory-patterns',
        'guides-concepts/callbacks',
        {
          type: 'category',
          label: 'COM',
          link: {
            type: 'generated-index',
            title: 'COM (Component Object Model)',
            slug: '/com',
          },
          items: [
            'guides-concepts/com/basic-concepts',
            'guides-concepts/com/strings',
          ],
        },
        'guides-concepts/contributing',
      ],
    },

    // Migration Guide
    // {
    //   type: 'category',
    //   label: 'Migration Guide 🚀',
    //   className: 'category-as-header',
    //   items: ['migration-guide/5x-to-6x'],
    // },
  ],
};

export default sidebars;
