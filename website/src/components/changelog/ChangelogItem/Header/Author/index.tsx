import Link from '@docusaurus/Link';
import { useBlogPost } from '@docusaurus/theme-common/internal';
import type { Props } from '@theme/BlogPostItem/Header/Author';
import clsx from 'clsx';

export default function ChangelogAuthor({
  author,
  className,
}: Props): JSX.Element {
  const { isBlogPostPage } = useBlogPost();
  const { name, url, imageURL } = author;
  return (
    <Link href={url} title={name}>
      {imageURL ? (
        <img
          src={imageURL}
          alt={name}
          loading="lazy"
          className={clsx(
            'not-prose',
            'object-cover',
            isBlogPostPage ? 'size-14' : 'size-12',
            'rounded-full',
            'text-gray-500 dark:text-gray-400',
            'bg-gray-200 dark:bg-gray-700',
            'ring-2 ring-white dark:ring-neutral-900',
            'hover:ring-win32-blue dark:hover:ring-win32-cyan-alt',
            className
          )}
          onError={(e) => {
            // Image returns 404 if the user's handle changes. We display a
            // fallback instead.
            e.currentTarget.src =
              'data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" width="600" height="600" fill="none" stroke="%2399A1B3" stroke-width="30" version="1.1"><circle cx="300" cy="230" r="115"/><path stroke-linecap="butt" d="M106.81863443903,481.4 a205,205 1 0,1 386.36273112194,0"/></svg>';
          }}
        />
      ) : (
        <div
          className={clsx(
            'flex items-center justify-center',
            isBlogPostPage ? 'size-14' : 'size-12',
            'rounded-full',
            'text-gray-500 dark:text-gray-400',
            'bg-gray-200 dark:bg-gray-700',
            'ring-2 ring-white dark:ring-neutral-900',
            'hover:ring-win32-blue dark:hover:ring-win32-cyan-alt'
          )}
          title={name}
        >
          <svg
            xmlns="http://www.w3.org/2000/svg"
            width="24"
            height="24"
            viewBox="0 0 24 24"
            fill="none"
          >
            <path
              d="M15.9998 7C15.9998 9.20914 14.2089 11 11.9998 11C9.79067 11 7.99981 9.20914 7.99981 7C7.99981 4.79086 9.79067 3 11.9998 3C14.2089 3 15.9998 4.79086 15.9998 7Z"
              stroke="currentColor"
              stroke-width="1.6"
            />
            <path
              d="M11.9998 14C9.15153 14 6.65091 15.3024 5.23341 17.2638C4.48341 18.3016 4.10841 18.8204 4.6654 19.9102C5.2224 21 6.1482 21 7.99981 21H15.9998C17.8514 21 18.7772 21 19.3342 19.9102C19.8912 18.8204 19.5162 18.3016 18.7662 17.2638C17.3487 15.3024 14.8481 14 11.9998 14Z"
              stroke="currentColor"
              stroke-width="1.6"
            />
          </svg>
        </div>
      )}
    </Link>
  );
}
