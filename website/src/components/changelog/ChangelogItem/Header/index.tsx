import Link from '@docusaurus/Link';
import { useBlogPost } from '@docusaurus/theme-common/internal';
import ChangelogItemHeaderAuthors from '@site/src/components/changelog/ChangelogItem/Header/Authors';
import BlogPostItemHeaderInfo from '@theme/BlogPostItem/Header/Info';
import clsx from 'clsx';

// Reduce changelog title size, but only on list view
function ChangelogTitle() {
  const { metadata, isBlogPostPage } = useBlogPost();
  const { permalink, title } = metadata;
  const TitleHeading = isBlogPostPage ? 'h1' : 'h2';
  return (
    <TitleHeading
      className={clsx(
        'text-2xl md:text-4xl',
        !isBlogPostPage && 'mb-2 md:mb-4'
      )}
      itemProp="headline"
    >
      {isBlogPostPage ? (
        title
      ) : (
        <Link
          to={permalink}
          className={clsx(
            'text-xl md:text-3xl font-semibold',
            'text-win32-react-8 dark:text-win32-react-1',
            'hover:no-underline',
            'hover:text-gray-800 dark:hover:text-gray-200'
          )}
          itemProp="url"
        >
          {title}
        </Link>
      )}
    </TitleHeading>
  );
}

export default function ChangelogItemHeader(): JSX.Element {
  return (
    <header>
      <ChangelogTitle />
      <BlogPostItemHeaderInfo />
      <ChangelogItemHeaderAuthors />
    </header>
  );
}
