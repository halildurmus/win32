import Link from '@docusaurus/Link';
import clsx from 'clsx';
import React, { useEffect, useState } from 'react';
import { FaExternalLinkAlt } from 'react-icons/fa';
import { MenuRegularItemType } from '../../config';

type NavbarItemProps = {
  item: MenuRegularItemType;
  variant?: 'landing' | 'blog';
};

export const NavbarItem: React.FC<NavbarItemProps> = ({ item }) => {
  const [theme, setTheme] = useState(null);

  useEffect(() => {
    setTheme(localStorage.getItem('theme') || null);
    window.addEventListener('storage', storageEventHandler, false);

    return () => {
      window.removeEventListener('storage', storageEventHandler, false);
    };
  }, []);

  const storageEventHandler = () => {
    setTheme(localStorage.getItem('theme') || null);
  };

  const Badge = item.badge;
  const isExternalLink = item.href.startsWith('http');
  return (
    <Link
      key={item.label}
      to={item.href}
      {...(isExternalLink
        ? {
            target: '_blank',
            rel: 'noopener noreferrer',
          }
        : {})}
      className={clsx(
        'inline-flex items-center gap-2',
        'text-sm leading-6 font-normal text-gray-900 dark:text-gray-300',
        'transition-colors duration-150 ease-in-out',
        'no-underline',
        'hover:text-gray-600 dark:hover:text-white'
      )}
    >
      {item.label}
      {isExternalLink && <FaExternalLinkAlt className={clsx('w-3 h-3')} />}
      {item.badge && <Badge />}
    </Link>
  );
};
