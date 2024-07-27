import Link from '@docusaurus/Link';
import type { BlogSidebar } from '@docusaurus/plugin-content-blog';
import {
  Dialog,
  DialogPanel,
  Transition,
  TransitionChild,
} from '@headlessui/react';
import clsx from 'clsx';
import { Fragment } from 'react';
import { ChangelogWin32Logo } from './changelog-win32-logo';
import { CommonGithubStarButton } from './common-github-star-button';
import { CommonHamburgerIcon } from './common-hamburger-icon';
import { CommonHomeButton } from './common-home-button';
import { CommonThemeToggleAlt } from './common-theme-toggle';

type Props = {
  isOpen: boolean;
  onClose: () => void;
  sidebar: BlogSidebar;
};

export const ChangelogSidebarModal = ({ isOpen, onClose, sidebar }: Props) => {
  if (!sidebar?.items.length) return null;
  const items = sidebar.items;
  return (
    <Transition appear show={isOpen} as={Fragment}>
      <Dialog as="div" className="relative z-mobileNavbar" onClose={onClose}>
        <TransitionChild
          as={Fragment}
          enter="ease-out duration-75"
          enterFrom="opacity-0"
          enterTo="opacity-100"
          leave="ease-in duration-75"
          leaveFrom="opacity-100"
          leaveTo="opacity-0"
        >
          <div className="fixed inset-0 bg-gray-0 dark:bg-gray-800" />
        </TransitionChild>

        <div className="fixed inset-0 overflow-y-auto">
          <div className="flex min-h-full items-start justify-center">
            <TransitionChild
              as={Fragment}
              enter="ease-out duration-75"
              enterFrom="opacity-0"
              enterTo="opacity-100"
              leave="ease-in duration-75"
              leaveFrom="opacity-100"
              leaveTo="opacity-0"
            >
              <DialogPanel
                className={clsx('w-full h-[100dvh]', 'flex flex-col', 'px-2')}
              >
                <div
                  className={clsx(
                    'py-4',
                    'px-2',
                    'w-full h-16',
                    'flex items-center justify-between'
                  )}
                >
                  <ChangelogWin32Logo />
                  <div className={clsx('flex items-center gap-4')}>
                    <CommonHamburgerIcon onClick={onClose} active={true} />
                  </div>
                </div>

                <div
                  className={clsx(
                    'relative',
                    'w-full max-w-[480px]',
                    'flex',
                    'flex-col',
                    'flex-1',
                    'mx-auto',
                    'rounded-lg',
                    'border border-gray-300 dark:border-gray-600'
                  )}
                >
                  <div
                    className={clsx(
                      'h-12',
                      'rounded-tl-lg rounded-tr-lg',
                      'bg-gray-100 dark:bg-gray-700',
                      'border-b border-gray-300 dark:border-gray-600',
                      'flex items-center gap-2',
                      'px-4 py-2',
                      'justify-end'
                    )}
                  >
                    {/* <span
                      className={clsx(
                        'text-sm',
                        'text-gray-500 dark:text-gray-400'
                      )}
                    >
                      Version
                    </span> */}
                  </div>

                  <div
                    className={clsx('flex-1', 'overflow-hidden', 'relative')}
                  >
                    <div
                      className={clsx(
                        'inset-0',
                        'overflow-scroll',
                        'h-full',
                        'px-8',
                        'absolute',
                        'flex flex-col gap-6',
                        'py-6'
                      )}
                    >
                      <div
                        className={clsx(
                          'ml-2',
                          'font-bold',
                          'text-win32-react-6 dark:text-win32-react-3'
                        )}
                      >
                        {sidebar.title}
                      </div>
                      <ul>
                        {items.map((item) => {
                          const className = (isActive: boolean) =>
                            clsx(
                              'px-4 py-2',
                              isActive &&
                                'bg-win32-blue-2-light dark:bg-win32-blue-2 dark:bg-opacity-10',
                              isActive &&
                                'text-win32-react-light-link dark:text-win32-react-dark-link',
                              !isActive && 'text-win32-600 dark:text-win32-300',
                              !isActive &&
                                'hover:bg-gray-100 dark:hover:bg-gray-700',
                              !isActive &&
                                'hover:text-gray-600 dark:hover:text-gray-300',
                              'rounded-[18px]',
                              'block',
                              'text-sm',
                              'no-underline hover:no-underline',
                              'transition-colors duration-200 ease-in-out'
                            );
                          return (
                            <li key={item.permalink} className="mb-0.5">
                              <Link
                                isNavLink
                                to={item.permalink}
                                className={className}
                              >
                                {item.title}
                              </Link>
                            </li>
                          );
                        })}
                      </ul>
                    </div>
                  </div>
                </div>

                <div className={clsx('flex', 'flex-col', 'gap-0')}>
                  <div
                    className={clsx(
                      'flex items-center justify-start',
                      'gap-10',
                      'px-2',
                      'py-4'
                    )}
                  >
                    <span
                      className={clsx(
                        'text-sm',
                        'text-gray-800',
                        'dark:text-gray-100'
                      )}
                    >
                      Appearance
                    </span>
                    <CommonThemeToggleAlt />
                  </div>
                  <div
                    className={clsx(
                      'border-t',
                      'border-t-gray-300 dark:border-t-gray-700',
                      'px-4',
                      'py-2',
                      'flex',
                      'items-center',
                      'justify-between'
                    )}
                  >
                    <CommonHomeButton />
                    <CommonGithubStarButton />
                  </div>
                </div>
              </DialogPanel>
            </TransitionChild>
          </div>
        </div>
      </Dialog>
    </Transition>
  );
};
