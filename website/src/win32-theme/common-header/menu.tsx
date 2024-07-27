import Link from '@docusaurus/Link';
import {
  MenuRegularItemType,
  githubRepoUrl,
  githubSponsorsUrl,
  menuItems,
  socialLinks,
} from '@site/src/config';
import clsx from 'clsx';
import React from 'react';
import { GitHubSponsorIcon, GitHubStarIcon } from '../icons/popover';
import { MenuItem } from './menu-item';
import { NavbarItem } from './navbar-item';
import { NavbarPopoverItem } from './navbar-popover-item';

type Props = {
  variant?: 'landing' | 'blog';
};

export const Menu: React.FC<Props> = ({ variant = 'landing' }) => {
  return (
    <>
      {menuItems.map((item) => {
        if (item.isPopover) {
          return (
            <NavbarPopoverItem
              key={`navbar-${item.label}`}
              item={item}
              variant={variant}
            >
              {item.label === 'Learn' && (
                <>
                  <div
                    className={clsx(
                      'grid grid-cols-2 gap-4',
                      'p-4',
                      'w-[672px]',
                      'bg-white',
                      variant === 'landing' && 'dark:bg-gray-900',
                      variant === 'blog' && 'dark:bg-win32-react-dark-code'
                    )}
                  >
                    {item.items.map((subItem) => (
                      <MenuItem
                        key={subItem.label}
                        item={subItem}
                        variant={variant}
                      />
                    ))}
                  </div>
                  <Link to={githubRepoUrl} className="no-underline">
                    <div
                      className={clsx(
                        'border-t',
                        variant === 'blog' &&
                          'border-win32-react-3 dark:border-win32-react-6',
                        variant === 'landing' &&
                          'border-gray-300 dark:border-gray-700',
                        variant === 'landing' && 'bg-gray-100 dark:bg-gray-800',
                        variant === 'blog' &&
                          'bg-win32-react-1 dark:bg-win32-react-7',
                        'flex items-center',
                        'py-4 px-7'
                      )}
                    >
                      <GitHubStarIcon />
                      <div
                        className={clsx(
                          'ml-4',
                          'dark:text-gray-400 text-gray-600'
                        )}
                      >
                        If you like{' '}
                        <span className={clsx('font-semibold')}>win32</span>,
                        don’t forget to star us on GitHub!
                      </div>
                    </div>
                  </Link>
                </>
              )}

              {item.label === 'Community' && (
                <>
                  <div
                    className={clsx(
                      'grid gap-4',
                      'p-4',
                      'w-[336px]',
                      'bg-white',
                      variant === 'landing' && ' dark:bg-gray-900',
                      variant === 'blog' && 'dark:bg-win32-react-dark-code'
                    )}
                  >
                    {item.items.map((subItem) => (
                      <MenuItem
                        key={subItem.label}
                        item={subItem}
                        variant={variant}
                      />
                    ))}
                  </div>
                  <div
                    className={clsx(
                      'border-t',
                      variant === 'blog' &&
                        'border-win32-react-3 dark:border-win32-react-6',
                      variant === 'landing' &&
                        'border-gray-300 dark:border-gray-700',
                      variant === 'landing' && 'bg-gray-100 dark:bg-gray-800',
                      variant === 'blog' &&
                        'bg-win32-react-1 dark:bg-win32-react-7',
                      'flex justify-between items-center',
                      'py-4 px-7'
                    )}
                  >
                    <div
                      className={clsx(
                        variant === 'landing' &&
                          'text-gray-600 dark:text-gray-400 ',
                        variant === 'blog' &&
                          'text-win32-react-5 dark:text-win32-react-4'
                      )}
                    >
                      Join the community!
                    </div>
                    <div className="flex gap-4">
                      {socialLinks.map(({ href, icon: Icon }) => (
                        <Link key={href} href={href}>
                          <Icon
                            className={clsx(
                              'size-6',
                              'text-gray-500 dark:text-gray-400',
                              'hover:text-gray-800 dark:hover:text-gray-300'
                            )}
                          />
                        </Link>
                      ))}
                    </div>
                  </div>
                </>
              )}

              {item.label === 'Resources' && (
                <>
                  <div
                    className={clsx(
                      'grid gap-4',
                      'p-4',
                      'w-[336px]',
                      'bg-white',
                      variant === 'landing' && ' dark:bg-gray-900',
                      variant === 'blog' && 'dark:bg-win32-react-dark-code'
                    )}
                  >
                    {item.items.map((subItem) => (
                      <MenuItem
                        key={subItem.label}
                        item={subItem}
                        variant={variant}
                      />
                    ))}
                  </div>
                  <Link to={githubSponsorsUrl} className="no-underline">
                    <div
                      className={clsx(
                        'border-t',
                        variant === 'blog' &&
                          'border-win32-react-3 dark:border-win32-react-6',
                        variant === 'landing' &&
                          'border-gray-300 dark:border-gray-700',
                        variant === 'landing' && 'bg-gray-100 dark:bg-gray-800',
                        variant === 'blog' &&
                          'bg-win32-react-1 dark:bg-win32-react-7',
                        'flex items-center',
                        'py-4 px-7'
                      )}
                    >
                      <GitHubSponsorIcon className={clsx('size-6')} />
                      <div
                        className={clsx(
                          'ml-2',
                          'text-gray-600 dark:text-gray-400'
                        )}
                      >
                        Become a sponsor!
                      </div>
                    </div>
                  </Link>
                </>
              )}
            </NavbarPopoverItem>
          );
        }

        return (
          <NavbarItem
            key={`navbar-${item.label}`}
            item={item as MenuRegularItemType}
            variant={variant}
          />
        );
      })}
    </>
  );
};
