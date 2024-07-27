import {
  HtmlClassNameProvider,
  ThemeClassNames,
} from '@docusaurus/theme-common';
import {
  BlogPostProvider,
  useBlogPost,
} from '@docusaurus/theme-common/internal';
import { BlogPostPageView, PostPaginator } from '@site/src/components/blog';
import BlogLayout from '@site/src/theme/BlogLayout';
import BlogPostPageMetadata from '@theme/BlogPostPage/Metadata';
import clsx from 'clsx';
import { BlogTOC } from './blog-toc';

function BlogPostPageContent({ children }) {
  const { metadata, toc } = useBlogPost();
  const { relatedPosts } = metadata;

  return (
    <BlogLayout showSidebarBanner toc={<BlogTOC toc={toc} />}>
      <BlogPostPageView>{children}</BlogPostPageView>
      {relatedPosts && (
        <PostPaginator title="Related Posts" posts={relatedPosts} />
      )}
    </BlogLayout>
  );
}

export default function BlogPostPage(props) {
  const BlogPostContent = props.content;
  return (
    <BlogPostProvider content={props.content} isBlogPostPage>
      <HtmlClassNameProvider
        className={clsx(
          ThemeClassNames.wrapper.blogPages,
          ThemeClassNames.page.blogPostPage
        )}
      >
        <BlogPostPageMetadata />
        <BlogPostPageContent>
          <BlogPostContent />
        </BlogPostPageContent>
      </HtmlClassNameProvider>
    </BlogPostProvider>
  );
}
