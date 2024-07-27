import Link from '@docusaurus/Link';
import { useBlogPost } from '@docusaurus/theme-common/internal';
import useDocusaurusContext from '@docusaurus/useDocusaurusContext';
import { blogPostContainerID } from '@docusaurus/utils-common';
import { DateTime, ReadingTime } from '@site/src/components/blog/common';
import BlogPostItemContainer from '@theme/BlogPostItem/Container';
import MDXContent from '@theme/MDXContent';
import clsx from 'clsx';
import { TbCircleChevronLeft } from 'react-icons/tb';
import {
  LinkedinIcon,
  LinkedinShareButton,
  RedditIcon,
  RedditShareButton,
  TwitterShareButton,
  XIcon,
} from 'react-share';

export const BlogPostPageView = ({ children }) => {
  const {
    siteConfig: { url },
  } = useDocusaurusContext();
  const {
    frontMatter: { image },
    metadata,
    isBlogPostPage,
  } = useBlogPost();
  const { permalink, title, date, readingTime, tags, description, authors } =
    metadata;
  return (
    <BlogPostItemContainer
      className={clsx(
        'pb-10',
        'pt-4 blog-lg:pt-8',
        'ml-auto',
        'w-full',
        'blog-lg:max-w-[900px]',
        'px-2 blog-md:px-8 blog-lg:px-0'
      )}
    >
      <div
        className={clsx(
          'hidden blog-md:flex',
          'justify-between',
          'items-center',
          'blog-sm:px-6',
          'pb-6 blog-lg:pb-10',
          'not-prose'
        )}
      >
        <Link
          to="/blog"
          className={clsx(
            'flex',
            'gap-2',
            'items-center',
            'text-sm no-underline',
            'text-win32-react-5 dark:text-win32-react-4',
            'hover:text-gray-800 dark:hover:text-gray-300'
          )}
        >
          <TbCircleChevronLeft className="w-6 h-6" /> Back to blog
        </Link>
        <div className="flex items-center gap-3 px-2 py-1 not-prose">
          <span className="text-win32-react-5 dark:text-win32-react-4 text-sm">
            Share on
          </span>
          <TwitterShareButton
            windowWidth={750}
            windowHeight={800}
            url={url + permalink}
            className="flex"
            title={title}
            hashtags={tags.map((tag) => tag.label)}
          >
            <XIcon size={24} round />
          </TwitterShareButton>
          <RedditShareButton
            className="flex"
            windowWidth={750}
            windowHeight={600}
            url={url + permalink}
            title={title}
          >
            <RedditIcon size={24} round />
          </RedditShareButton>
          <LinkedinShareButton
            url={url + permalink}
            title={title}
            source={url}
            summary={description}
            className="flex"
          >
            <LinkedinIcon size={24} round />
          </LinkedinShareButton>
        </div>
      </div>
      <div className="not-prose">
        <img
          className="w-full rounded-xl aspect-[2/1]"
          src={`${image}?tr=w-900`}
          alt={title}
        />
      </div>

      <div className="blog-sm:px-6">
        <div className="mt-6 blog-lg:mt-10 mb-6 text-sm">
          <div className="flex mb-2 items-center gap-2 text-gray-600 dark:text-gray-400">
            <DateTime date={date} />
            {typeof readingTime !== 'undefined' && (
              <>
                <span className="w-[4px] h-[4px] rounded-full bg-gray-600 dark:bg-gray-500"></span>
                <ReadingTime readingTime={readingTime} />
              </>
            )}
          </div>

          <div className={clsx('flex row')}>
            {authors.map((author, idx) => (
              <div key={idx} className="col col--6 padding-vert--sm">
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
                          'font-semibold',
                          'text-gray-900 dark:text-gray-300'
                        )}
                      >
                        {author?.name}
                      </span>
                    </Link>
                    <span
                      className={clsx(
                        'text-sm',
                        'font-medium',
                        'text-gray-600 dark:text-gray-400'
                      )}
                    >
                      {author?.title}
                    </span>
                  </div>
                </div>
              </div>
            ))}
          </div>
          <div className="mx-6 mt-6 blog-lg:mt-10 mb-12">
            {/* <BannerRandom /> */}
          </div>
        </div>
        <h1 className="text-xl md:text-4xl" itemProp="headline">
          {isBlogPostPage ? (
            title
          ) : (
            <Link itemProp="url" to={permalink}>
              {title}
            </Link>
          )}
        </h1>
        <div
          id={blogPostContainerID}
          className="markdown"
          itemProp="articleBody"
        >
          <MDXContent>{children}</MDXContent>
        </div>
      </div>
    </BlogPostItemContainer>
  );
};
