import Link from '@docusaurus/Link';
import clsx from 'clsx';
import React from 'react';
import { FaExternalLinkAlt } from 'react-icons/fa';
import { MenuPopoverItemType } from '../../config';

type MenuItemProps = {
  item: MenuPopoverItemType['items'][0];
  variant?: 'landing' | 'blog';
};

export const MenuItem: React.FC<MenuItemProps> = ({
  item,
  variant = 'landing',
}) => {
  const { icon: Icon, badge: Badge } = item;
  const isExternalLink = item.href.startsWith('http');
  return (
    <Link to={item.href} className="no-underline">
      <div
        className={clsx(
          'flex items-start',
          'p-4',
          'transition duration-150 ease-in-out',
          'rounded-lg',
          'hover:bg-gray-50',
          variant === 'landing' && 'dark:hover:bg-gray-800',
          variant === 'blog' && 'dark:hover:bg-gray-700'
        )}
      >
        <div className="shrink-0">
          <Icon />
        </div>
        <div className="ml-2">
          <div
            className={clsx(
              'inline-flex items-center gap-2',
              variant === 'landing' && 'text-gray-900 dark:text-white',
              variant === 'blog' &&
                'text-win32-react-8 dark:text-win32-react-3',
              'font-semibold'
            )}
          >
            {item.label}
            {isExternalLink && (
              <FaExternalLinkAlt className={clsx('w-3 h-3')} />
            )}
            {item.badge && <Badge />}
          </div>
          <div
            className={clsx(
              variant === 'landing' && 'text-gray-500 dark:text-gray-400',
              variant === 'blog' &&
                'text-win32-react-5 dark:text-win32-react-4',
              'text-xs'
            )}
          >
            {item.description}
          </div>
        </div>
      </div>
    </Link>
  );
};
