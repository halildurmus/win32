import {
  Dialog,
  DialogPanel,
  Transition,
  TransitionChild,
} from '@headlessui/react';
import clsx from 'clsx';
import { Fragment } from 'react';
import { CommonGithubStarButton } from './common-github-star-button';
import { CommonHamburgerIcon } from './common-hamburger-icon';
import { CommonHomeButton } from './common-home-button';
import { CommonThemeToggleAlt } from './common-theme-toggle';
import { useSidebarItems } from './doc-sidebar';
import { DocWin32Logo } from './doc-win32-logo';

type Props = {
  isOpen: boolean;
  onClose: () => void;
};

export const DocSidebarModal = ({ isOpen, onClose }: Props) => {
  const { items } = useSidebarItems({
    variant: 'mobile',
    onLinkClick: onClose,
    deferred: true,
  });

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
                  <DocWin32Logo />
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
                      {items}
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
