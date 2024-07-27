import {
  HtmlClassNameProvider,
  PageMetadata,
  ThemeClassNames,
} from '@docusaurus/theme-common';
import useDocusaurusContext from '@docusaurus/useDocusaurusContext';
import BlogLayout from '@site/src/theme/BlogLayout';
import BlogPostItems from '@site/src/theme/BlogPostItems';
import BlogListPaginator from '@theme/BlogListPaginator';
import SearchMetadata from '@theme/SearchMetadata';
import clsx from 'clsx';
import { FeaturedBlogPostItems } from '../../components/blog';

function BlogListPageMetadata(props) {
  const { metadata } = props;
  const {
    siteConfig: { title: siteTitle },
  } = useDocusaurusContext();
  const { blogDescription, blogTitle, permalink } = metadata;
  const isBlogOnlyMode = permalink === '/';
  const title = isBlogOnlyMode ? siteTitle : blogTitle;
  return (
    <>
      <PageMetadata title={title} description={blogDescription} />
      <SearchMetadata tag="blog_posts_list" />
    </>
  );
}

function BlogListPageContent(props) {
  const { metadata, tags, items } = props;
  const isFirstPage = metadata.page === 1;
  const featuredPosts = items.filter(
    (post) => post.content.metadata.frontMatter.is_featured === true
  );
  const paginatedPosts = items.filter(
    (post) => post.content.metadata.frontMatter.is_featured !== true
  );

  return (
    <BlogLayout showHero>
      {isFirstPage && <FeaturedBlogPostItems items={featuredPosts} />}
      <BlogPostItems items={paginatedPosts} tags={tags} />
      <div
        className={clsx(
          'w-full',
          'mx-auto',
          'blog-sm:max-w-[592px]',
          'blog-md:max-w-[656px]',
          'blog-lg:max-w-[896px]',
          'blog-max:max-w-[1200px]',
          'blog-max:border-t border-t-win32-react-3 dark:border-t-win32-react-7',
          'mb-12'
        )}
      >
        <BlogListPaginator metadata={metadata} />
      </div>
    </BlogLayout>
  );
}

export default function BlogListPage(props) {
  return (
    <HtmlClassNameProvider
      className={clsx(
        ThemeClassNames.wrapper.blogPages,
        ThemeClassNames.page.blogListPage
      )}
    >
      <BlogListPageMetadata {...props} />
      <BlogListPageContent {...props} />
    </HtmlClassNameProvider>
  );
}
