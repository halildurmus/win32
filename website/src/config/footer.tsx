export type FooterItemType = {
  label: string;
  items: {
    label: string;
    badge?: React.ComponentType<React.SVGProps<SVGSVGElement>>;
    href?: string;
  }[];
};

export const footerItems: FooterItemType[] = [
  {
    label: 'Learn',
    items: [
      {
        label: 'Overview',
        href: '/docs',
      },
      {
        label: 'Getting Started',
        href: '/docs/getting-started/quick-start',
      },
      // {
      //   label: 'FAQ',
      //   badge: NewBadgeIcon,
      //   href: '/docs/guides-concepts/faq',
      // },
      {
        label: 'Examples',
        href: 'https://win32.pub/examples',
      },
      {
        label: 'Packages',
        href: '/packages',
      },
      // {
      //   label: 'Migrating from v5 to v6',
      //   href: '/docs/migration-guide/5x-to-6x',
      // },
    ],
  },
  {
    label: 'Community',
    items: [
      {
        label: 'Contributing',
        href: '/docs/guides-concepts/contributing',
      },
      {
        label: 'GitHub',
        href: 'https://github.com/halildurmus/win32',
      },
      {
        label: 'Stack Overflow',
        href: 'https://stackoverflow.com/questions/tagged/dart+winapi',
      },
      // {
      //   label: '𝕏',
      //   href: 'https://x.com/thehalildurmus',
      // },
    ],
  },
  {
    label: 'Resources',
    items: [
      {
        label: 'Blog',
        href: '/blog',
      },
      {
        label: 'Changelog',
        href: '/changelog',
      },
      // {
      //   label: 'Roadmap',
      //   badge: NewBadgeIcon,
      //   href: '/roadmap',
      // },
    ],
  },
];
