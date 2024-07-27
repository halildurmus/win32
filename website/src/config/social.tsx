import { FaGithub } from 'react-icons/fa';
import { FaXTwitter } from 'react-icons/fa6';

export type SocialLinkItemType = {
  icon: React.ComponentType<React.SVGProps<SVGSVGElement>>;
  href: string;
};

export const socialLinks: SocialLinkItemType[] = [
  {
    icon: FaGithub,
    href: 'https://github.com/halildurmus/win32',
  },
  // {
  //   icon: FaXTwitter,
  //   href: 'https://x.com/thehalildurmus',
  // },
];
