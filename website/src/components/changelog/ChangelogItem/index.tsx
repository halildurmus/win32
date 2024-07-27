import ChangelogItemHeader from '@site/src/components/changelog/ChangelogItem/Header';
import type { Props } from '@theme/BlogPostItem';
import BlogPostItemContainer from '@theme/BlogPostItem/Container';
import BlogPostItemContent from '@theme/BlogPostItem/Content';

export default function ChangelogItem({ children }: Props): JSX.Element {
  return (
    <BlogPostItemContainer>
      <ChangelogItemHeader />
      <BlogPostItemContent>{children}</BlogPostItemContent>
    </BlogPostItemContainer>
  );
}
