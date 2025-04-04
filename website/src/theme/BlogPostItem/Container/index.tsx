import { useBlogPost } from '@docusaurus/plugin-content-blog/client';
import { useBaseUrlUtils } from '@docusaurus/useBaseUrl';

export default function BlogPostItemContainer({ children, className }) {
  const {
    frontMatter,
    assets,
    metadata: { description },
  } = useBlogPost();
  const { withBaseUrl } = useBaseUrlUtils();
  const image = assets.image ?? frontMatter.image;
  const keywords = frontMatter.keywords ?? [];
  return (
    <article
      className={className}
      itemProp="blogPost"
      itemScope
      itemType="https://schema.org/BlogPosting"
    >
      {description && <meta itemProp="description" content={description} />}
      {image && (
        <link itemProp="image" href={withBaseUrl(image, { absolute: true })} />
      )}
      {keywords.length > 0 && (
        <meta itemProp="keywords" content={keywords.join(',')} />
      )}
      {children}
    </article>
  );
}
