import Link from '@docusaurus/Link';
import { DateTime } from '@site/src/components/blog/common';
import { BlogPostProps, HomePageProps } from '@site/src/components/home';
import { LandingSectionCtaButtonAlt } from '@site/src/win32-theme/landing-section-cta-button';
import clsx from 'clsx';
import { FC } from 'react';
import { TbCircleChevronRight } from 'react-icons/tb';

function Post({
  className,
  post,
}: {
  className?: string;
  post: BlogPostProps;
}): JSX.Element {
  const {
    metadata: {
      title,
      description,
      frontMatter: { is_featured: isFeatured },
      image,
      tags,
    },
    Preview: {
      metadata: { authors, date, permalink },
    },
  } = post;
  const author = authors[0];
  return (
    <div className={clsx('group', className)}>
      <div
        className={clsx(
          'not-prose',
          'flex-shrink-0',
          'h-full',
          'p-2 landing-sm:p-4',
          'rounded-2xl landing-sm:rounded-3xl',
          'dark:bg-landing-noise',
          'dark:bg-gray-800 bg-gray-50'
        )}
      >
        <Link
          to={permalink}
          target="_blank"
          rel="noopener noreferrer"
          className={clsx('no-underline')}
        >
          <div
            className={clsx(
              'flex-shrink-0 relative overflow-hidden',
              'rounded-lg',
              'h-[220px] landing-sm:h-[280px] landing-md:h-[220px]',
              'w-full'
            )}
          >
            <img
              src={`${image}?tr=h-560`}
              alt={title}
              loading="lazy"
              className={clsx(
                'not-prose',
                'h-[220px] landing-sm:h-[280px] landing-md:h-[220px]',
                'w-full',
                'object-cover',
                'rounded-lg',
                'bg-gray-0',
                'dark:bg-gray-900',
                'border-t-solid border-t',
                'border-t-gray-200 dark:border-t-gray-700',
                'border-opacity-60 dark:border-opacity-60',
                'drop-shadow-sm',
                'group-hover:scale-105 transition-transform duration-500 ease-in-out'
              )}
            />
            {isFeatured && (
              <div className="absolute inset-0 top-0.5 left-2">
                <span
                  className={clsx(
                    'rounded-full',
                    'px-2.5 py-0.5',
                    'font-medium',
                    'text-xs',
                    'text-gray-0 dark:text-gray-900',
                    'bg-win32-blue dark:bg-win32-cyan-alt'
                  )}
                >
                  Featured
                </span>
              </div>
            )}
          </div>
        </Link>

        <div
          className={clsx(
            'not-prose',
            'mt-4 landing-sm:mt-6',
            'px-4 landing-sm:px-6'
          )}
        >
          <div className={clsx('flex flex-wrap items-center gap-3', 'mb-6')}>
            {tags.map(({ label, permalink }) => (
              <Link
                key={permalink}
                href={permalink}
                className={clsx(
                  'px-2 py-1',
                  'no-underline',
                  'text-xs',
                  'rounded-full',
                  'bg-gray-200 dark:bg-gray-700',
                  'text-gray-700 dark:text-gray-300'
                )}
              >
                {label}
              </Link>
            ))}
          </div>

          <Link
            to={permalink}
            target="_blank"
            rel="noopener noreferrer"
            className={clsx('no-underline')}
          >
            <h6
              className={clsx(
                'font-bold',
                'text-xl',
                'text-gray-700 dark:text-gray-300'
              )}
            >
              {title}
            </h6>
          </Link>

          <div
            className={clsx(
              'not-prose',
              'flex',
              'items-center',
              'justify-between',
              'flex-wrap',
              'mb-4 landing-md:mb-10'
            )}
          >
            <p
              className={clsx(
                'h-auto landing-md:h-[88px] landing-lg:h-[72px]',
                'p-0',
                'mt-2 landing-sm:mt-4',
                'text-base',
                'text-gray-600 dark:text-gray-400'
              )}
            >
              {description}
            </p>
          </div>

          <div
            className={clsx(
              'not-prose',
              'flex',
              'items-center',
              'justify-between',
              'mb-4'
            )}
          >
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

            <Link
              to={permalink}
              target="_blank"
              rel="noopener noreferrer"
              className={clsx('no-underline')}
            >
              <span
                className={clsx(
                  'flex flex-row gap-1',
                  'items-center',
                  'font-medium',
                  'text-xs',
                  'text-gray-600 dark:text-gray-400',
                  'hover:text-win32-blue dark:hover:text-win32-cyan-alt'
                )}
              >
                Read more <TbCircleChevronRight className="size-4" />
              </span>
            </Link>
          </div>
        </div>
      </div>
    </div>
  );
}

type Props = HomePageProps & {
  className?: string;
};

export const LandingBlogPosts: FC<Props> = ({
  className,
  homePageBlogMetadata,
  featuredPosts,
  recentPosts,
}): JSX.Element => {
  const { blogBasePath } = homePageBlogMetadata;
  return (
    <div className={clsx('w-full', className)}>
      <div className={clsx('not-prose', 'w-full', 'px-4 landing-md:px-10')}>
        <h2
          className={clsx(
            'text-2xl landing-sm:text-[32px] landing-sm:leading-[40px]',
            'tracking-tight',
            'text-start',
            'p-0',
            'dark:text-gray-0 text-gray-900'
          )}
        >
          Read the{' '}
          <span
            className={clsx(
              'font-semibold',
              'dark:text-win32-yellow dark:drop-shadow-[0_0_30px_rgba(255,191,0,0.25)]',
              'text-win32-orange drop-shadow-[0_0_30px_rgba(255,153,51,0.3)]'
            )}
          >
            blog posts
          </span>
          .
        </h2>
        <p
          className={clsx(
            'mt-4 landing-sm:mt-6',
            'max-w-md',
            'text-base',
            'dark:text-gray-400 text-gray-600'
          )}
        >
          Surround yourself with the latest knowledge and insights to help you
          grow.
        </p>
      </div>

      <div
        className={clsx(
          'win32-prose',
          'mt-8 landing-sm:mt-12 landing-lg:mt-20',
          'mb-4 landing-sm:mb-12 landing-md:mb-6'
        )}
      >
        <div
          className={clsx(
            'grid grid-cols-1 landing-md:grid-cols-2 landing-lg:grid-cols-3',
            'gap-4 landing-md:gap-6',
            'mb-4 landing-sm:mb-6 landing-md:mb-8'
          )}
        >
          {/* Show one featured post */}
          {featuredPosts.slice(0, 1).map((post, idx) => (
            <Post key={idx} post={post} />
          ))}
          {/* Show two recent non-featured posts */}
          {recentPosts.slice(0, 2).map((post, idx) => (
            <Post key={idx} post={post} />
          ))}
        </div>
      </div>

      <LandingSectionCtaButtonAlt to={blogBasePath}>
        All posts
      </LandingSectionCtaButtonAlt>
    </div>
  );
};
