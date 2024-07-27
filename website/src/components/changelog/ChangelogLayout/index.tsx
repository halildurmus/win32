import ChangelogSidebar from '@site/src/components/changelog/ChangelogSidebar';
import { ChangelogHeader } from '@site/src/win32-theme/changelog-header';
import { CommonFooter } from '@site/src/win32-theme/common-footer';
import { CommonLayout } from '@site/src/win32-theme/common-layout';
import type { Props } from '@theme/BlogLayout';
import clsx from 'clsx';

export default function ChangelogLayout(props: Props) {
  const { sidebar, toc, children, ...layoutProps } = props;
  return (
    <CommonLayout
      {...layoutProps}
      className={clsx('bg-white dark:bg-win32-react-8')}
    >
      {/* If there's TOC, then we can say that this is a blog post page. */}
      {/* Then we can pass `trackProgress` prop to the header. */}
      <ChangelogHeader
        sidebar={sidebar}
        trackProgress={!!toc}
        className={clsx(
          '!bg-white dark:!bg-win32-react-8',
          '!bg-opacity-100 dark:!bg-opacity-100'
        )}
      />
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
        <ChangelogSidebar sidebar={sidebar} />
        {children}
        <div
          className={clsx(
            'w-[260px]',
            'hidden blog-max:block',
            'flex-shrink-0'
          )}
        >
          {toc}
        </div>
      </div>
      <CommonFooter variant="blog" />
    </CommonLayout>
  );
}
