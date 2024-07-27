import Link from '@docusaurus/Link';
import clsx from 'clsx';
import { motion, useScroll, useTransform } from 'framer-motion';
import React, { useState } from 'react';
import SearchBar from '../../theme/SearchBar';
import { AnnouncementBar } from '../announcement-bar';
import { CommonHamburgerIcon } from '../common-hamburger-icon';
import { CommonThemeToggle } from '../common-theme-toggle';
import { DocSearchButton } from '../doc-search-button';
import { Win32Logotype } from '../icons/win32';
import { LandingGithubStarButton } from '../landing-github-star-button';
import { Menu } from './menu';
import { MobileMenuModal } from './mobile-menu-modal';

type Props = {
  className?: string;
  trackProgress?: boolean;
  variant?: 'landing' | 'blog';
};

export const CommonHeader = ({
  className,
  trackProgress,
  variant = 'landing',
}: Props) => {
  const [isModalOpen, setIsModalOpen] = useState(false);
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
            'absolute',
            'top-0 left-0 right-0',
            'backdrop-blur-[6px]',
            'landing-md:backdrop-blur-[12px]',
            'z-[-1]',
            'bg-gray-0 dark:bg-gray-900',
            'bg-opacity-80 dark:bg-opacity-80',
            'pointer-events-none',
            className
          )}
          style={{
            top: '-20px',
            bottom: '-80px',
            WebkitMaskImage:
              'linear-gradient(to bottom, transparent 0, transparent calc(0% + 20px), black calc(0% + 20px), black calc(100% - 80px), transparent calc(100% - 80px))',
            maskImage:
              'linear-gradient(to bottom, transparent 0, transparent calc(0% + 20px), black calc(0% + 20px), black calc(100% - 80px), transparent calc(100% - 80px))',
          }}
        />
        <div
          className={clsx('relative', 'z-[1]', 'px-4 landing-sm:px-8', 'py-3')}
        >
          <div
            className={clsx(
              'flex',
              'items-center',
              'justify-between',
              'mx-auto',
              'max-w-[896px]',
              'landing-lg:max-w-[1200px]'
            )}
          >
            <div className={clsx('w-[130px]', 'landing-lg:w-[200px]')}>
              <Link to="/">
                <Win32Logotype />
              </Link>
            </div>
            <div
              className={clsx(
                'landing-md:hidden',
                'flex',
                'items-center',
                'gap-4'
              )}
            >
              <SearchBar
                CustomButton={React.forwardRef<
                  HTMLButtonElement,
                  React.PropsWithChildren<{}>
                >(function CustomButton(props, ref) {
                  return <DocSearchButton ref={ref} {...props} iconOnly />;
                })}
              />
              <CommonHamburgerIcon onClick={() => setIsModalOpen(true)} />
            </div>
            <div
              className={clsx(
                'hidden landing-md:flex',
                'flex-1',
                'items-center',
                'gap-8'
              )}
            >
              <Menu variant={variant} />
            </div>
            <div
              className={clsx(
                'hidden landing-md:flex',
                'items-center',
                'justify-end',
                'gap-4',
                'w-[130px]',
                'landing-lg:w-[200px]'
              )}
            >
              <SearchBar />
              <LandingGithubStarButton />
              <CommonThemeToggle />
            </div>
            <MobileMenuModal
              isModalOpen={isModalOpen}
              setIsModalOpen={setIsModalOpen}
            />
          </div>
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
