import { NewBadgeIcon } from "../win32-theme/icons/popover";

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
    label: "Learn",
    items: [
      {
        label: "Overview",
        href: "/docs",
      },
      {
        label: "Getting Started",
        href: "/docs/getting-started/quick-start",
      },
      // {
      //   label: 'FAQ',
      //   badge: NewBadgeIcon,
      //   href: '/docs/core/faq',
      // },
      {
        label: "Examples",
        href: "https://win32.pub/examples",
      },
      {
        label: "Packages",
        href: "/packages",
      },
      {
        label: "Migrating from 5.x.x to 6.x.x",
        badge: NewBadgeIcon,
        href: "/docs/migration/5xx-to-6xx",
      },
    ],
  },
  {
    label: "Community",
    items: [
      {
        label: "Contributing",
        href: "/docs/community/contributing",
      },
      {
        label: "GitHub",
        href: "https://github.com/halildurmus/win32",
      },
    ],
  },
  {
    label: "Resources",
    items: [
      {
        label: "Blog",
        href: "/blog",
      },
      {
        label: "Changelog",
        href: "/changelog",
      },
      // {
      //   label: 'Roadmap',
      //   badge: NewBadgeIcon,
      //   href: '/roadmap',
      // },
    ],
  },
];
