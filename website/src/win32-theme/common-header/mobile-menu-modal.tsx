import Link from '@docusaurus/Link';
import { useLocation } from '@docusaurus/router';
import {
  Dialog,
  Disclosure,
  DisclosureButton,
  DisclosurePanel,
  Transition,
  TransitionChild,
} from '@headlessui/react';
import {
  MenuRegularItemType,
  githubRepoUrl,
  menuItems,
} from '@site/src/config';
import clsx from 'clsx';
import React, { FC, Fragment, PropsWithChildren } from 'react';
import { MdClose } from 'react-icons/md';
import { AnnouncementBar } from '../announcement-bar';
import { CommonThemeToggleAlt } from '../common-theme-toggle';
import { GitHubStarIcon } from '../icons/popover';
import { Win32Logotype } from '../icons/win32';
import { MenuItem } from './menu-item';
import { MobileNavItem } from './mobile-nav-item';

type MobileMenuModalProps = {
  isModalOpen: boolean;
  setIsModalOpen: React.Dispatch<React.SetStateAction<boolean>>;
};

export const MobileMenuModal: React.FC<MobileMenuModalProps> = ({
  isModalOpen,
  setIsModalOpen,
}) => {
  const location = useLocation();

  React.useEffect(() => {
    setIsModalOpen(false);
  }, [location]);

  return (
    <Modal isModalOpen={isModalOpen} setIsModalOpen={setIsModalOpen}>
      <Tablet
        className={clsx(
          'hidden landing-sm:block',
          'overflow-auto',
          'border border-gray-200 dark:border-gray-700 rounded-lg'
        )}
      />
      <Phone
        className={clsx(
          'block landing-sm:hidden',
          'overflow-auto',
          'border border-gray-200 dark:border-gray-700 rounded-lg'
        )}
      />
    </Modal>
  );
};

const Modal: FC<PropsWithChildren<MobileMenuModalProps>> = ({
  isModalOpen,
  setIsModalOpen,
  children,
}) => {
  return (
    <Transition appear show={isModalOpen} as={Fragment}>
      <Dialog
        as="div"
        className="relative z-10"
        onClose={() => setIsModalOpen(false)}
      >
        <TransitionChild
          as={Fragment}
          enter="ease-out duration-75"
          enterFrom="opacity-0"
          enterTo="opacity-100"
          leave="ease-in duration-75"
          leaveFrom="opacity-100"
          leaveTo="opacity-0"
        >
          <div
            className={clsx(
              'fixed inset-0',
              'bg-gray-0 dark:bg-gray-900',
              'flex',
              'flex-col'
            )}
          >
            <AnnouncementBar />
            <div
              className={clsx(
                'flex items-center justify-between',
                'p-4',
                'landing-sm:px-8'
              )}
            >
              <Win32Logotype />
              <button
                type="button"
                className={clsx(
                  'rounded-lg',
                  'hover:brightness-105',
                  'active:scale-90',
                  'transition-transform duration-75 ease-in-out'
                )}
              >
                <MdClose
                  className="w-8 h-8 text-gray-900 dark:text-white"
                  onClick={() => setIsModalOpen(false)}
                />
              </button>
            </div>
            <TransitionChild
              as={Fragment}
              enter="ease-out duration-75"
              enterFrom="opacity-0 scale-95"
              enterTo="opacity-100 scale-100"
              leave="ease-in duration-75"
              leaveFrom="opacity-100 scale-100"
              leaveTo="opacity-0 scale-95"
            >
              <div
                className={clsx('flex-1', 'overflow-y-auto', 'px-4', 'pb-4')}
              >
                {children}
              </div>
            </TransitionChild>
          </div>
        </TransitionChild>
      </Dialog>
    </Transition>
  );
};

const Tablet = (props: { className?: string }) => {
  return (
    <div className={clsx(props.className)}>
      {menuItems.map((item, i) => {
        const Icon = 'badge' in item && item.badge;
        return (
          <div
            key={i}
            className={clsx(
              'not-prose',
              'p-4',
              'border-t dark:border-gray-700 border-gray-200'
            )}
          >
            <Link
              to={'href' in item ? item.href : undefined}
              className={clsx(
                'appearance-none',
                'block',
                'no-underline',
                'dark:text-gray-0 text-gray-900',
                'font-bold'
              )}
            >
              <div className={clsx('flex items-center gap-2')}>
                <div>{item.label}</div>
                {Icon && <Icon />}
              </div>
            </Link>
            {'items' in item && (
              <div
                className={clsx(
                  'mt-2',
                  'grid grid-cols-2 min-[800px]:grid-cols-3',
                  'gap-x-8 gap-y-4'
                )}
              >
                {item.items.map((subItem) => (
                  <MenuItem key={subItem.label} item={subItem} />
                ))}
              </div>
            )}
          </div>
        );
      })}
      {themeToggle}
      <GitHub id="tablet" />
    </div>
  );
};

const Phone = (props: { className?: string }) => {
  return (
    <div className={clsx(props.className)}>
      <div className="flex-grow">
        {menuItems.map((item) => {
          if (item.isPopover) {
            return (
              <Disclosure key={`modal-${item.label}`}>
                {({ open }) => (
                  <>
                    <MobileNavItem
                      component={DisclosureButton}
                      label={item.label}
                      open={open}
                    />

                    <DisclosurePanel
                      className={clsx(
                        open && 'pb-4',
                        open && 'border-b border-gray-200 dark:border-gray-700'
                      )}
                    >
                      {item.items.map((subItem) => (
                        <MenuItem key={subItem.label} item={subItem} />
                      ))}
                    </DisclosurePanel>
                  </>
                )}
              </Disclosure>
            );
          }

          return (
            <MobileNavItem
              key={`modal-${item.label}`}
              label={item.label}
              href={(item as MenuRegularItemType).href}
              badge={(item as MenuRegularItemType).badge}
            />
          );
        })}
      </div>
      {themeToggle}
      <GitHub id="phone" />
    </div>
  );
};

const GitHub = (props: { id?: string }) => {
  return (
    <Link to={githubRepoUrl} className="no-underline">
      <div
        className={clsx(
          'border-t dark:border-gray-700 border-gray-300',
          'dark:bg-gray-800 bg-gray-100',
          'flex items-center',
          'p-4'
        )}
      >
        <GitHubStarIcon id={props?.id || ''} />
        <div className={clsx('ml-4', 'dark:text-gray-400 text-gray-600')}>
          If you like <span className={clsx('font-semibold')}>win32</span>,
          don’t forget to star us on GitHub!
        </div>
      </div>
    </Link>
  );
};

const themeToggle = (
  <div className={clsx('not-prose p-4 flex items-center')}>
    <div className={clsx('text-sm mr-10 dark:text-gray-400 text-gray-600')}>
      Apperance
    </div>
    <CommonThemeToggleAlt />
  </div>
);
