import clsx from 'clsx';
import React, { useState } from 'react';
import SearchBar from '../theme/SearchBar';
import { AnnouncementBar } from './announcement-bar';
import { CommonGithubStarButton } from './common-github-star-button';
import { CommonHamburgerIcon } from './common-hamburger-icon';
import { CommonThemeToggle } from './common-theme-toggle';
import { DocSearchButton } from './doc-search-button';
import { DocSidebarModal } from './doc-sidebar-modal';
import { DocWin32Logo } from './doc-win32-logo';

export const HEADER_HEIGHT = 65;

const Desktop = () => {
  return (
    <div className={clsx('w-full', 'hidden lg:flex items-center', 'mx-auto')}>
      <DocWin32Logo className={clsx('lg:min-w-[256px]')} />
      <div
        className={clsx(
          'flex-1',
          'flex',
          'justify-end',
          'items-center',
          'gap-4'
        )}
      >
        <SearchBar className={clsx('hidden lg:flex')} />
        <SearchBar
          className={clsx('lg:hidden flex')}
          CustomButton={React.forwardRef<
            HTMLButtonElement,
            React.PropsWithChildren<{}>
          >(function CustomButton(props, ref) {
            return <DocSearchButton ref={ref} {...props} iconOnly />;
          })}
        />
        <CommonGithubStarButton />
        <CommonThemeToggle />
      </div>
    </div>
  );
};

export const Mobile = () => {
  const [isSidebarOpen, setIsSidebarOpen] = useState(false);
  return (
    <div
      className={clsx('w-full', 'flex lg:hidden items-center justify-between')}
    >
      <DocWin32Logo />
      <div className={clsx('flex items-center gap-4')}>
        <SearchBar
          CustomButton={React.forwardRef<
            HTMLButtonElement,
            React.PropsWithChildren<{}>
          >(function CustomButton(props, ref) {
            return <DocSearchButton ref={ref} {...props} iconOnly />;
          })}
        />
        <CommonHamburgerIcon
          onClick={() => setIsSidebarOpen(true)}
          active={isSidebarOpen}
        />
      </div>
      <DocSidebarModal
        isOpen={isSidebarOpen}
        onClose={() => setIsSidebarOpen(false)}
      />
    </div>
  );
};

export const DocHeader = () => {
  return (
    <>
      <AnnouncementBar />
      <div
        className={clsx(
          'flex items-center',
          'h-16',
          'z-10',
          'sticky',
          'top-0',
          'px-4 sm:px-6',
          'py-4 sm:py-3',
          'bg-gray-0 dark:bg-gray-800',
          'border-b border-gray-300 dark:border-gray-700'
        )}
      >
        <Desktop />
        <Mobile />
      </div>
    </>
  );
};
