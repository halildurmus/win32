import type { BlogSidebar } from '@docusaurus/plugin-content-blog';
import SearchBar from '@site/src/theme/SearchBar';
import { AnnouncementBar } from '@site/src/win32-theme/announcement-bar';
import { ChangelogSidebarModal } from '@site/src/win32-theme/changelog-sidebar-modal';
import { ChangelogWin32Logo } from '@site/src/win32-theme/changelog-win32-logo';
import { CommonGithubStarButton } from '@site/src/win32-theme/common-github-star-button';
import { CommonHamburgerIcon } from '@site/src/win32-theme/common-hamburger-icon';
import { CommonThemeToggle } from '@site/src/win32-theme/common-theme-toggle';
import { DocSearchButton } from '@site/src/win32-theme/doc-search-button';
import clsx from 'clsx';
import { motion, useScroll, useTransform } from 'framer-motion';
import React, { useState } from 'react';

export const HEADER_HEIGHT = 65;

const Desktop = () => {
  return (
    <div className={clsx('w-full', 'hidden lg:flex items-center', 'mx-auto')}>
      <ChangelogWin32Logo className={clsx('lg:min-w-[256px]')} />
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

export const Mobile = ({ sidebar }: { sidebar: BlogSidebar }) => {
  const [isSidebarOpen, setIsSidebarOpen] = useState(false);
  return (
    <div
      className={clsx('w-full', 'flex lg:hidden items-center justify-between')}
    >
      <ChangelogWin32Logo />
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
      <ChangelogSidebarModal
        isOpen={isSidebarOpen}
        onClose={() => setIsSidebarOpen(false)}
        sidebar={sidebar}
      />
    </div>
  );
};

type Props = {
  className?: string;
  sidebar: BlogSidebar;
  trackProgress?: boolean;
};

export const ChangelogHeader = ({
  className,
  sidebar,
  trackProgress,
}: Props) => {
  const { scrollYProgress } = useScroll();

  const progressPercentage = useTransform(
    scrollYProgress,
    [0.03, 0.95],
    ['0%', '100%']
  );

  return (
    <>
      <AnnouncementBar />
      <header className={clsx('sticky', 'top-0', 'z-10')}>
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
            !trackProgress && 'border-b border-gray-300 dark:border-gray-700',
            className
          )}
        >
          <Desktop />
          <Mobile sidebar={sidebar} />
        </div>
        {trackProgress && (
          <div
            className={clsx(
              'w-full',
              'h-[1px]',
              'translate',
              'bg-win32-react-3 dark:bg-win32-react-7'
            )}
          >
            <motion.div
              className={clsx(
                'h-full',
                'bg-win32-react-light-link dark:bg-win32-react-dark-link'
              )}
              style={{ width: progressPercentage }}
            />
          </div>
        )}
      </header>
    </>
  );
};
