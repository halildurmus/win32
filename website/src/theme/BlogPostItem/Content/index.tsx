import { useBlogPost } from '@docusaurus/theme-common/internal';
import { blogPostContainerID } from '@docusaurus/utils-common';
import MDXContent from '@theme/MDXContent';
import clsx from 'clsx';

export default function BlogPostItemContent({ children, className }) {
  const { isBlogPostPage } = useBlogPost();
  return (
    <div
      // This ID is used for the feed generation to locate the main content
      id={isBlogPostPage ? blogPostContainerID : undefined}
      className={clsx('markdown', className)}
      itemProp="articleBody"
    >
      <MDXContent>{children}</MDXContent>
    </div>
  );
}
