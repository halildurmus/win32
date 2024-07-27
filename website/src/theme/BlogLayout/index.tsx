import { BannerSidebar } from '@site/src/components/banner/banner-sidebar';
import useScrollTracker from '@site/src/hooks/use-scroll-tracker';
import { CommonFooter } from '@site/src/win32-theme/common-footer';
import { CommonHeader } from '@site/src/win32-theme/common-header';
import { CommonLayout } from '@site/src/win32-theme/common-layout';
import clsx from 'clsx';
import { useEffect, useState } from 'react';
import { BlogHero } from './blog-hero';

type Props = {
  showHero?: boolean;
  showSidebarBanner?: boolean;
} & Record<string, any>;

export default function BlogLayout(props: Props) {
  const {
    sidebar,
    toc,
    children,
    showHero,
    showSidebarBanner = false,
    ...layoutProps
  } = props;

  const [showBanner, setShowBanner] = useState(false);
  const tracker = useScrollTracker();

  useEffect(() => {
    if (!showSidebarBanner) return;

    if (tracker.scrollY > 20) {
      setShowBanner(true);
    }

    if (tracker.scrollY < 20) {
      setShowBanner(false);
    }
  }, [tracker.scrollY, showSidebarBanner]);

  return (
    <CommonLayout
      {...layoutProps}
      className={clsx('bg-white dark:bg-win32-react-8')}
    >
      {/* If there's TOC, then we can say that this is a blog post page. */}
      {/* Then we can pass `trackProgress` prop to the header. */}
      <CommonHeader
        trackProgress={!!toc}
        variant="blog"
        className={clsx(
          '!bg-white dark:!bg-win32-react-8',
          '!bg-opacity-100 dark:!bg-opacity-100'
        )}
      />
      {showHero && <BlogHero />}
      <div
        className={clsx(
          'flex',
          'gap-12',
          'justify-center',
          'mx-auto',
          'w-full',
          'relative'
        )}
      >
        {showSidebarBanner && (
          <div
            className={clsx(
              'relative',
              'py-10 blog-sm:py-12 blog-md:py-16',
              'hidden blog-2xl:block',
              showBanner && 'opacity-100',
              !showBanner && 'opacity-0',
              'transition-opacity duration-300 ease-in-out'
            )}
          >
            <div
              className={clsx(
                'sticky',
                'w-[264px]',
                'z-[1]',
                'top-32',
                'ml-auto'
              )}
            >
              {/* <BannerSidebar showBanner={showBanner} /> */}
            </div>
          </div>
        )}
        <div className={clsx('win32-prose')}>{children}</div>
        {toc && (
          <div
            className={clsx(
              'w-[280px]',
              'hidden blog-max:block',
              'flex-shrink-0'
            )}
          >
            {toc}
          </div>
        )}
      </div>
      <CommonFooter variant="blog" />
      {/* <BannerModal /> */}
    </CommonLayout>
  );
}
