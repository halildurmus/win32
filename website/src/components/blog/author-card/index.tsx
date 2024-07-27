import Link from '@docusaurus/Link';
import { useBlogPost } from '@docusaurus/theme-common/internal';
import clsx from 'clsx';
import { FaGithub, FaLinkedin } from 'react-icons/fa';
import { FaXTwitter } from 'react-icons/fa6';

export const AuthorCardWithHook = () => {
  const {
    metadata: { authors },
  } = useBlogPost();
  const author = authors[0];
  return <AuthorCard author={author} />;
};

export const AuthorCardWithProps = ({ author }) => {
  return <AuthorCard author={author} />;
};

const AuthorCard = ({ author }) => {
  const authorHasSocialInfo = author.github || author.linkedin || author.x;
  return (
    <div
      className={clsx(
        'px-4 blog-md:px-7 blog-2xl:px-0',
        'max-w-[640px] blog-md:max-w-screen-blog-md blog-2xl:max-w-screen-blog-md',
        'w-full',
        'mx-auto'
      )}
    >
      <div className={clsx('flex', 'justify-between', 'items-center')}>
        <div
          className={clsx(
            'w-full',
            'flex items-center justify-between flex-wrap',
            'py-8'
          )}
        >
          <div className={clsx('flex items-center')}>
            <img
              src={author?.imageURL}
              alt={`${author?.name} avatar`}
              loading="lazy"
              className={clsx(
                'not-prose',
                'flex flex-shrink-0',
                'size-16 blog-sm:size-[88px] blog-md:size-[120px]',
                'rounded-full object-cover'
              )}
            />
            <div className={clsx('flex flex-col ms-4 blog-sm:ms-6')}>
              <Link
                to={author?.url}
                itemProp="url"
                className="hover:no-underline"
              >
                <span
                  className={clsx(
                    'text-xl blog-sm:text-[30px] blog-sm:leading-[56px]',
                    'blog-md:text-[40px] blog-md:leading-[64px]',
                    'font-semibold',
                    'text-gray-900 dark:text-gray-300'
                  )}
                >
                  {author?.name}
                </span>
              </Link>
              <div
                className={clsx(
                  'text-xs blog-sm:text-base',
                  'font-medium',
                  'text-gray-600 dark:text-gray-400'
                )}
              >
                {author?.title}
              </div>
            </div>
          </div>

          {authorHasSocialInfo && (
            <div className="flex justify-center gap-3">
              {author?.github && (
                <Link to={author?.github}>
                  <FaGithub
                    className={clsx(
                      'size-6 text-gray-500 dark:text-gray-400',
                      'hover:text-gray-800 dark:hover:text-gray-300'
                    )}
                  />
                </Link>
              )}
              {author?.linkedin && (
                <Link to={author?.linkedin}>
                  <FaLinkedin
                    className={clsx(
                      'size-6 text-gray-500 dark:text-gray-400',
                      'hover:text-gray-800 dark:hover:text-gray-300'
                    )}
                  />
                </Link>
              )}
              {author?.x && (
                <Link to={author?.x}>
                  <FaXTwitter
                    className={clsx(
                      'size-6 text-gray-500 dark:text-gray-400',
                      'hover:text-gray-800 dark:hover:text-gray-300'
                    )}
                  />
                </Link>
              )}
            </div>
          )}
        </div>
      </div>
      <div className="border-b border-gray-200 dark:border-gray-700 mb-8" />
    </div>
  );
};
