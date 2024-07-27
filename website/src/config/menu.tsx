import {
  BlogIcon,
  ChangelogIcon,
  ContributeIcon,
  DocumentsIcon,
  PackagesIcon,
} from '../win32-theme/icons/popover';

export type MenuPopoverItemType = {
  isPopover: true;
  label: string;
  items: {
    label: string;
    icon: React.ComponentType<React.SVGProps<SVGSVGElement>>;
    badge?: React.ComponentType<React.SVGProps<SVGSVGElement>>;
    description: string;
    href: string;
  }[];
};

export type MenuRegularItemType = {
  isPopover?: false;
  label: string;
  badge?: React.ComponentType<React.SVGProps<SVGSVGElement>>;
  href?: string;
};

export type MenuItemType = MenuPopoverItemType | MenuRegularItemType;

export const menuItems: MenuItemType[] = [
  {
    isPopover: true,
    label: 'Learn',
    items: [
      {
        label: 'Documentation',
        icon: DocumentsIcon,
        description: 'Everything you need to get started.',
        href: '/docs',
      },
      // {
      //   label: 'Examples',
      //   icon: ExamplesIcon,
      //   badge: NewBadgeIcon,
      //   description: 'Ready-made examples for your project',
      //   href: '/examples',
      // },
      {
        label: 'Packages',
        icon: PackagesIcon,
        description: 'Discover the win32 ecosystem.',
        href: '/packages',
      },
    ],
  },
  {
    isPopover: true,
    label: 'Community',
    items: [
      {
        label: 'Contributing',
        icon: ContributeIcon,
        description: 'Join open-source contributors.',
        href: '/docs/guides-concepts/contributing',
      },
    ],
  },
  {
    isPopover: true,
    label: 'Resources',
    items: [
      {
        label: 'Blog',
        icon: BlogIcon,
        description: 'Articles about Windows development.',
        href: '/blog',
      },
      // TODO(halildurmus): Uncomment when the page is ready.
      // {
      //   label: 'Changelog',
      //   icon: ChangelogIcon,
      //   description: 'Learn what has changed recently.',
      //   href: '/changelog',
      // },
      // {
      //   label: 'Roadmap',
      //   icon: RoadmapIcon,
      //   badge: NewBadgeIcon,
      //   description: 'Learn what we are working on.',
      //   href: '/roadmap',
      // },
    ],
  },
];
