import Link from '@docusaurus/Link';
import type { BlogSidebar } from '@docusaurus/plugin-content-blog';
import {
  HtmlClassNameProvider,
  ThemeClassNames,
} from '@docusaurus/theme-common';
import {
  BlogPostProvider,
  useBlogPost,
} from '@docusaurus/theme-common/internal';
import ChangelogItem from '@site/src/components/changelog/ChangelogItem';
import ChangelogLayout from '@site/src/components/changelog/ChangelogLayout';
import ChangelogPaginator from '@site/src/components/changelog/ChangelogPaginator';
import BlogPostItemContainer from '@site/src/theme/BlogPostItem/Container';
import { BlogTOC } from '@site/src/theme/BlogPostPage/blog-toc';
import type { Props } from '@theme/BlogPostPage';
import BlogPostPageMetadata from '@theme/BlogPostPage/Metadata';
import clsx from 'clsx';
import { type ReactNode } from 'react';
import { TbCircleChevronLeft } from 'react-icons/tb';

function BackToIndexLink() {
  const { metadata } = useBlogPost();
  // @ts-expect-error: we injected this
  const { listPageLink } = metadata;
  return (
    <div
      className={clsx(
        'hidden blog-md:flex',
        'justify-between',
        'items-center',
        'pb-6 blog-lg:pb-10',
        'not-prose'
      )}
    >
      <Link
        to={listPageLink}
        className={clsx(
          'flex',
          'gap-2',
          'items-center',
          'text-sm no-underline',
          'text-win32-react-5 dark:text-win32-react-4',
          'hover:text-gray-800 dark:hover:text-gray-300'
        )}
      >
        <TbCircleChevronLeft className="w-6 h-6" /> Back to index page
      </Link>
    </div>
  );
}

function ChangelogPageContent({
  sidebar,
  children,
}: {
  sidebar: BlogSidebar;
  children: ReactNode;
}): JSX.Element {
  const { metadata, toc } = useBlogPost();
  const { nextItem, prevItem, frontMatter } = metadata;
  const { hide_table_of_contents: hideTableOfContents } = frontMatter;
  return (
    <ChangelogLayout
      sidebar={sidebar}
      toc={
        !hideTableOfContents && toc.length > 0 ? (
          <BlogTOC toc={toc} className={clsx('blog-lg:pt-4')} />
        ) : undefined
      }
    >
      <BlogPostItemContainer
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
          <BackToIndexLink />
          <div className={clsx('win32-prose mb-8')}>
            <ChangelogItem>{children}</ChangelogItem>
          </div>
          {(nextItem || prevItem) && (
            <ChangelogPaginator nextItem={nextItem} prevItem={prevItem} />
          )}
        </div>
      </BlogPostItemContainer>
    </ChangelogLayout>
  );
}

// This page doesn't change anything. It's just swapping BlogPostItem with our
// own ChangelogItem. We don't want to apply the swizzled item to the actual
// blog.
export default function ChangelogPage(props: Props): JSX.Element {
  const ChangelogContent = props.content;
  return (
    <BlogPostProvider content={props.content} isBlogPostPage>
      <HtmlClassNameProvider
        className={clsx(
          ThemeClassNames.wrapper.blogPages,
          ThemeClassNames.page.blogPostPage
        )}
      >
        <BlogPostPageMetadata />
        <ChangelogPageContent sidebar={props.sidebar}>
          <ChangelogContent />
        </ChangelogPageContent>
      </HtmlClassNameProvider>
    </BlogPostProvider>
  );
}
