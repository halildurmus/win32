import { useBlogPost } from '@docusaurus/theme-common/internal';
import ChangelogItemHeaderAuthor from '@site/src/components/changelog/ChangelogItem/Header/Author';
import type { Props } from '@theme/BlogPostItem/Header/Authors';
import clsx from 'clsx';
import { useState } from 'react';

const numberOfAuthorsToDisplay = 7;

// Component responsible for the authors layout
export default function BlogPostAuthors({
  className,
}: Props): JSX.Element | null {
  const {
    isBlogPostPage,
    metadata: { authors },
    assets,
  } = useBlogPost();
  const authorsCount = authors.length;
  if (authorsCount === 0) return null;

  const [isExpanded, setIsExpanded] = useState(false);

  const hiddenAuthorsCount = authorsCount - numberOfAuthorsToDisplay;
  const filteredAuthors = authors.slice(
    0,
    isExpanded ? authorsCount : numberOfAuthorsToDisplay
  );

  return (
    <div
      className={clsx(
        'flex',
        hiddenAuthorsCount > 0 && isExpanded && 'flex-wrap gap-2',
        !isExpanded && '-space-x-4',
        'items-center',
        'my-4',
        className
      )}
    >
      {filteredAuthors.map((author, idx) => (
        <ChangelogItemHeaderAuthor
          key={idx}
          author={{
            ...author,
            // Handle author images using relative paths
            imageURL: assets.authorsImageUrls[idx] ?? author.imageURL,
          }}
        />
      ))}
      {authors.length > numberOfAuthorsToDisplay && (
        <div
          onClick={() => setIsExpanded((v) => !v)}
          className={clsx(
            'flex items-center justify-center',
            'px-6',
            isBlogPostPage? 'size-14' : 'size-12',
            'rounded-full',
            isExpanded ? 'text-xs' : 'text-sm',
            'leading-none font-medium',
            'ring-2 ring-white dark:ring-neutral-900',
            'text-gray-500 dark:text-gray-400',
            'bg-gray-200 dark:bg-gray-700',
            'hover:bg-gray-300 dark:hover:bg-gray-600',
            'hover:no-underline',
            'cursor-pointer'
          )}
          title={
            isExpanded
              ? 'Show less'
              : `Show ${hiddenAuthorsCount} more ${hiddenAuthorsCount > 1 ? 'authors' : 'author'}`
          }
        >
          {isExpanded ? 'Show less' : `+${hiddenAuthorsCount}`}
        </div>
      )}
    </div>
  );
}
