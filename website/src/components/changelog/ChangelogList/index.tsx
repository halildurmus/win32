import {
  HtmlClassNameProvider,
  PageMetadata,
  ThemeClassNames,
} from '@docusaurus/theme-common';
import useDocusaurusContext from '@docusaurus/useDocusaurusContext';
import ChangelogItems from '@site/src/components/changelog/ChangelogItems';
import ChangelogLayout from '@site/src/components/changelog/ChangelogLayout';
import BlogListPaginator from '@site/src/theme/BlogListPaginator';
import type { Props } from '@theme/BlogListPage';
import SearchMetadata from '@theme/SearchMetadata';
import clsx from 'clsx';

function ChangelogListMetadata(props: Props): JSX.Element {
  const { metadata } = props;
  const { blogTitle, blogDescription } = metadata;
  return (
    <>
      <PageMetadata title={blogTitle} description={blogDescription} />
      <SearchMetadata tag="blog_posts_list" />
    </>
  );
}

function ChangelogListHeader(): JSX.Element {
  const {
    siteConfig: { title },
  } = useDocusaurusContext();
  return (
    <header className={clsx('pb-8 md:pb-12')}>
      <div className={clsx('flex flex-col gap-4', 'not-prose')}>
        <h2
          className={clsx(
            'flex flex-wrap gap-2',
            'text-[32px] landing-sm:text-[56px]',
            'leading-[40px] landing-sm:leading-[72px]'
          )}
        >
          <div className={clsx('text-gray-900 dark:text-gray-0')}>{title} </div>
          <div
            className={clsx(
              'font-semibold',
              'text-win32-blue drop-shadow-[0_0_30px_rgba(51,51,255,0.3)]',
              'dark:text-win32-cyan-alt dark:drop-shadow-[0_0_30px_rgba(71,235,235,0.25)]',
              'whitespace-nowrap'
            )}
          >
            Changelog
          </div>
        </h2>
        <p
          className={clsx(
            'text-base',
            'text-gray-600 dark:text-gray-400',
            'pb-2'
          )}
        >
          Stay up-to-date with the latest improvements and updates.
        </p>
      </div>
    </header>
  );
}

function ChangelogListContent(props: Props): JSX.Element {
  const { metadata, items, sidebar } = props;
  const { blogTitle, permalink } = metadata;
  return (
    <ChangelogLayout sidebar={sidebar}>
      <div
        className={clsx(
          'flex-1',
          'flex flex-col',
          'items-center justify-start',
          'px-4 sm:px-0 py-4 sm:py-14',
          'relative',
          'w-full'
        )}
      >
        <div className="max-w-screen-content w-full">
          <div className={clsx('win32-prose pb-4')}>
            <ChangelogListHeader />
            <ChangelogItems items={items} />
          </div>
          <BlogListPaginator basePath={permalink} metadata={metadata} />
        </div>
      </div>
    </ChangelogLayout>
  );
}

export default function ChangelogList(props: Props): JSX.Element {
  return (
    <HtmlClassNameProvider
      className={clsx(
        ThemeClassNames.wrapper.blogPages,
        ThemeClassNames.page.blogListPage
      )}
    >
      <ChangelogListMetadata {...props} />
      <ChangelogListContent {...props} />
    </HtmlClassNameProvider>
  );
}
