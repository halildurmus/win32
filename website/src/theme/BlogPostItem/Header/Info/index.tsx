import { useBlogPost } from '@docusaurus/plugin-content-blog/client';
import {
  DateTime,
  ReadingTime,
  Spacer,
} from '@site/src/components/blog/common';
import clsx from 'clsx';

export default function BlogPostItemHeaderInfo({ className }) {
  const { metadata } = useBlogPost();
  const { date, readingTime } = metadata;
  return (
    <div
      className={clsx('text-sm', 'text-gray-600 dark:text-gray-400', className)}
    >
      <DateTime date={date} />
      {typeof readingTime !== 'undefined' && (
        <>
          <Spacer />
          <ReadingTime readingTime={readingTime} />
        </>
      )}
    </div>
  );
}
