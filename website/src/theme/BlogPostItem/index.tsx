import Link from '@docusaurus/Link';
import { useBlogPost } from '@docusaurus/theme-common/internal';
import { DateTime } from '@site/src/components/blog/common';
import BlogPostItemContainer from '@theme/BlogPostItem/Container';
import clsx from 'clsx';

export default function BlogPostItem({ className }: { className?: string }) {
  const {
    frontMatter: { image },
    metadata,
  } = useBlogPost();
  const { authors, permalink, title, date, description, tags } = metadata;
  const author = authors[0];
  return (
    <BlogPostItemContainer className={className}>
      <div>
        <Link
          to={permalink}
          itemProp="url"
          className={clsx('block', 'w-full h-auto', 'aspect-[592/334]')}
        >
          <div
            className={clsx(
              'relative',
              'flex-shrink-0',
              'overflow-hidden',
              'h-full w-full',
              'rounded-lg'
            )}
          >
            <img
              src={`${image}?tr=h-432`}
              alt={title}
              loading="lazy"
              className={clsx(
                'not-prose',
                'h-full w-full',
                'object-cover',
                'rounded-lg',
                'hover:scale-105 transition-transform duration-500 ease-in-out'
              )}
            />
          </div>
        </Link>
      </div>

      <div className="px-4 py-4 md:px-6 md:py-6">
        <div className={clsx('flex flex-wrap items-center gap-3', 'mb-6')}>
          {tags.map(({ label, permalink }) => (
            <Link
              key={permalink}
              href={permalink}
              className={clsx(
                'text-xs',
                'bg-win32-react-3 dark:bg-win32-react-7',
                'text-win32-react-8 dark:text-win32-react-3',
                'no-underline',
                'rounded-full',
                'px-2 py-1'
              )}
            >
              {label}
            </Link>
          ))}
        </div>

        <div className="mb-4">
          <Link
            itemProp="url"
            to={permalink}
            className="no-underline hover:no-underline"
            rel="noopener dofollow"
          >
            <div
              className={clsx(
                'mb-4',
                'font-bold',
                'text-xl',
                'text-gray-700 dark:text-gray-300'
              )}
            >
              {title}
            </div>
          </Link>
          <div
            className={clsx('text-base', 'text-gray-600 dark:text-gray-400')}
          >
            {description}
          </div>
        </div>

        <div className="flex items-center">
          <Link to={`/blog/author/${author?.key}`} itemProp="url">
            <img
              src={author?.imageURL}
              alt={`${author?.name} avatar`}
              loading="lazy"
              className={clsx('not-prose size-12 rounded-full')}
            />
          </Link>
          <div className="flex flex-col ms-3">
            <Link
              href={author?.url}
              itemProp="url"
              className={clsx('no-underline')}
            >
              <span
                className={clsx(
                  'text-sm',
                  'font-semibold',
                  'text-gray-900 dark:text-gray-300'
                )}
              >
                {author?.name}
              </span>
            </Link>
            <span
              className={clsx(
                'text-xs',
                'font-medium',
                'text-gray-600 dark:text-gray-400'
              )}
            >
              <DateTime date={date} />
            </span>
          </div>
        </div>
      </div>
    </BlogPostItemContainer>
  );
}
