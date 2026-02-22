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
          href: 'https://pub.dev/documentation/win32/latest/',
          label: 'API reference',
          customProps: {
            external: true,
          },
        },
      ],
    },

    // Core Concepts
    {
      type: 'category',
      label: 'Core Concepts',
      className: 'category-as-header',
      items: [
        'core/functions',
        'core/memory-allocation',
        'core/memory-management-patterns',
        'core/integer-types',
        'core/strings',
        'core/structs',
      ],
    },

    // Advanced Concepts
    {
      type: 'category',
      label: 'Advanced Concepts',
      className: 'category-as-header',
      items: [
        'advanced/callbacks',
        {
          type: 'category',
          label: 'COM',
          link: {
            type: 'generated-index',
            title: 'COM (Component Object Model)',
            slug: '/advanced/com',
          },
          items: [
            'advanced/com/basic-concepts',
            'advanced/com/methods',
          ],
        },
        'advanced/leak-tracking',
      ],
    },

    // Migration
    {
      type: 'category',
      label: 'Migration',
      className: 'category-as-header',
      items: ['migration/5xx-to-6xx'],
    },

    // Community
    {
      type: 'category',
      label: 'Community',
      className: 'category-as-header',
      items: ['community/contributing',
        {
          type: 'link',
          href: 'https://github.com/halildurmus/win32',
          label: 'GitHub Repository',
          customProps: {
            external: true,
          },
        },
      ],
    },
  ],
};

export default sidebars;
