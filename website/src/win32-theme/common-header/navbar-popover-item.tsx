import { useLocation } from '@docusaurus/router';
import {
  Popover,
  PopoverButton,
  PopoverPanel,
  Transition,
} from '@headlessui/react';
import clsx from 'clsx';
import React, { Fragment, useState } from 'react';
import { FaChevronDown } from 'react-icons/fa';
import { MenuPopoverItemType } from '../../config';
import { PointIcon } from '../icons/popover';

type NavbarPopoverItemProps = {
  item: MenuPopoverItemType;
  variant?: 'landing' | 'blog';
  children: React.ReactNode;
};

export const NavbarPopoverItem: React.FC<NavbarPopoverItemProps> = ({
  item,
  variant = 'landing',
  children,
}) => {
  const [isShowing, setIsShowing] = useState(false);
  const timeoutRef = React.useRef(null);
  const timeoutEnterRef = React.useRef(null);
  const location = useLocation();

  React.useEffect(() => {
    setIsShowing(false);
  }, [location]);

  return (
    <Popover
      id={`popover-${item.label}`}
      key={item.label}
      className={clsx('relative', 'inline-flex items-center')}
      onMouseEnter={() => {
        timeoutEnterRef.current = setTimeout(() => setIsShowing(true), 210);
        clearTimeout(timeoutRef.current);
      }}
      onMouseLeave={() => {
        timeoutRef.current = setTimeout(() => setIsShowing(false), 210);
        clearTimeout(timeoutEnterRef.current);
      }}
    >
      {() => (
        <>
          <PopoverButton
            className={clsx(
              'inline-flex items-center',
              'text-sm leading-6',
              'font-normal'
            )}
          >
            <span
              className={clsx(
                variant === 'landing' && 'text-gray-900 dark:text-gray-300',
                variant === 'blog' &&
                  'text-win32-react-8 dark:text-win32-react-3',
                'transition-colors duration-150 ease-in-out inline-block',
                'hover:text-gray-600 dark:hover:text-white'
              )}
            >
              {item.label}
            </span>
            <FaChevronDown
              aria-hidden="true"
              className={clsx(
                'w-2.5 h-2.5 transition duration-150 ease-out',
                'ml-1.5',
                variant === 'landing' && 'text-gray-500 dark:text-gray-400',
                variant === 'blog' && 'text-win32-react-4',
                isShowing ? 'translate-y-0.5' : ''
              )}
            />
          </PopoverButton>
          <Transition
            as={Fragment}
            enter="transition ease-in duration-150"
            enterFrom="opacity-0 translate-y-3"
            enterTo="opacity-100 translate-y-0"
            leave="transition ease-out duration-150"
            leaveFrom="opacity-100 translate-y-0"
            leaveTo="opacity-0 translate-y-3"
            show={isShowing}
          >
            <PopoverPanel
              className={clsx('absolute', 'z-50', 'top-12', {
                '-left-32 center-point':
                  item.label === 'Community' || item.label === 'Resources',
                'left-point': item.label === 'Learn',
              })}
            >
              <PointIcon
                id={item.label}
                variant={variant}
                className={clsx('absolute', 'top-[-9px]', {
                  'left-1/2': item.label !== 'Learn',
                  'left-8': item.label === 'Learn',
                })}
                style={{ transform: 'translateX(-50%)' }}
              />
              <div
                className={clsx(
                  'overflow-hidden',
                  'rounded-xl',
                  variant === 'landing' &&
                    'border dark:border-gray-700 border-gray-200',
                  variant === 'landing' &&
                    'dark:shadow-menu-dark shadow-menu-light',
                  variant === 'blog' &&
                    'border border-win32-react-3 dark:border-win32-react-6',
                  variant === 'blog' &&
                    'dark:shadow-menu-blog-dark shadow-menu-blog-light'
                )}
              >
                {children}
              </div>
            </PopoverPanel>
          </Transition>
        </>
      )}
    </Popover>
  );
};
