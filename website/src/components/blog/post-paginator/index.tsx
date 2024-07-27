import Link from '@docusaurus/Link';
import { DateTime } from '@site/src/components/blog/common';
import clsx from 'clsx';

export const PostPaginator = ({ posts, title }) => {
  if (posts.length < 1) return null;
  return (
    <div
      className={clsx(
        'mx-auto w-full',
        'py-10',
        'blog-sm:py-12',
        'blog-md:py-16',
        'max-w-[512px]',
        'blog-sm:max-w-screen-blog-sm',
        'blog-lg:max-w-screen-content-2xl'
      )}
    >
      <div className="blog-sm:px-6 w-full px-4">
        <h2 className="m-0 mb-4 p-0 pl-4 text-2xl font-semibold text-win32-react-8 dark:text-win32-react-1">
          {title}
        </h2>
        <div className="flex flex-col not-prose">
          {posts.map((post) => {
            const { id, permalink, title, description, date } = post;
            return (
              <Link
                to={permalink}
                rel="dofollow"
                key={permalink ?? id}
                className={clsx(
                  'flex',
                  'flex-col',
                  'gap-2',
                  'p-5',
                  'mb-5',
                  'rounded-lg',
                  'border border-win32-react-3 dark:border-win32-react-6',
                  'bg-white dark:bg-win32-react-8',
                  'hover:bg-gray-100 dark:hover:bg-win32-react-7',
                  'not-prose',
                  'no-underline'
                )}
              >
                <div
                  className={clsx(
                    'font-bold',
                    'text-win32-react-8 dark:text-win32-react-1',
                    'hover:text-gray-800 dark:hover:text-gray-200'
                  )}
                >
                  {title}
                </div>

                <p
                  className={clsx(
                    'font-sm',
                    'text-win32-react-5 dark:text-win32-react-4'
                  )}
                >
                  {description}
                </p>

                <div
                  id="post-info"
                  className="flex items-center gap-2 text-sm text-win32-react-4 dark:text-win32-react-5"
                >
                  <DateTime date={date} />
                </div>
              </Link>
            );
          })}
        </div>
      </div>
    </div>
  );
};
