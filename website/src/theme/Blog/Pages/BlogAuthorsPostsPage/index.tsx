import Link from '@docusaurus/Link';
import { useBlogMetadata } from '@docusaurus/plugin-content-blog/client';
import {
  HtmlClassNameProvider,
  PageMetadata,
  ThemeClassNames,
} from '@docusaurus/theme-common';
import { useBlogAuthorPageTitle } from '@docusaurus/theme-common/internal';
import { AuthorCardWithProps } from '@site/src/components/blog/author-card';
import BlogPostItems from '@site/src/theme/BlogPostItems';
import type { Props } from '@theme/Blog/Pages/BlogAuthorsPostsPage';
import BlogLayout from '@theme/BlogLayout';
import BlogListPaginator from '@theme/BlogListPaginator';
import SearchMetadata from '@theme/SearchMetadata';
import clsx from 'clsx';
import { type ReactNode } from 'react';
import { TbCircleChevronLeft } from 'react-icons/tb';

function Metadata({ author }: Props): ReactNode {
  const title = useBlogAuthorPageTitle(author);
  return (
    <>
      <PageMetadata title={title} />
      <SearchMetadata tag="blog_authors_posts" />
    </>
  );
}

function ViewAllAuthorsLink() {
  const { authorsListPath } = useBlogMetadata();
  return (
    <Link
      href={authorsListPath}
      className={clsx(
        'flex',
        'gap-2',
        'items-center',
        'text-sm no-underline',
        'text-win32-react-5 dark:text-win32-react-4',
        'hover:text-gray-800 dark:hover:text-gray-300',
        'px-4 blog-md:px-8 blog-lg:px-0'
      )}
    >
      <TbCircleChevronLeft className="w-6 h-6" /> View all authors
    </Link>
  );
}

function Content({ author, items, sidebar, listMetadata }: Props): ReactNode {
  return (
    <BlogLayout sidebar={sidebar}>
      <header className={clsx('pb-8 md:pb-12')}>
        <div className="h-12" />
        <AuthorCardWithProps author={author} />
        {author.description && <p>{author.description}</p>}
        <ViewAllAuthorsLink />
      </header>
      <div
        className={clsx(
          'px-4',
          'max-w-[512px]',
          'blog-md:px-7',
          'blog-md:max-w-screen-blog-md',
          'blog-2xl:px-0',
          'blog-2xl:max-w-screen-blog-md',
          'w-full',
          'mx-auto'
        )}
      >
        {items.length === 0 ? (
          <p>This author has not written any posts yet.</p>
        ) : (
          <h1 className="text-4xl !mb-0 px-0 lg:px-4">Posts</h1>
        )}
      </div>
      {items.length > 0 && (
        <div className={clsx('px-4', 'blog-md:px-7', 'blog-2xl:px-0')}>
          <BlogPostItems items={items} isAuthorPage />
          <BlogListPaginator metadata={listMetadata} />
        </div>
      )}
    </BlogLayout>
  );
}

export default function BlogAuthorsPostsPage(props: Props): ReactNode {
  return (
    <HtmlClassNameProvider
      className={clsx(
        ThemeClassNames.wrapper.blogPages,
        ThemeClassNames.page.blogAuthorsPostsPage
      )}
    >
      <Metadata {...props} />
      <Content {...props} />
    </HtmlClassNameProvider>
  );
}
