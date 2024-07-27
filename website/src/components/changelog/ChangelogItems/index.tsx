import { BlogPostProvider } from '@docusaurus/theme-common/internal';
import ChangelogItem from '@site/src/components/changelog/ChangelogItem';
import clsx from 'clsx';

export default function ChangelogItems({ items }: { items: any }) {
  return (
    <div className={clsx('w-full', 'bg-white dark:bg-win32-react-8')}>
      <div
        className={clsx(
          'blog-sm:max-w-[592px]',
          'blog-md:max-w-[656px]',
          'blog-lg:max-w-[896px]',
          'blog-max:max-w-[1200px]',
          'w-full',
          'mx-auto',
          'not-prose'
        )}
      >
        <div className={clsx('flex flex-col gap-4')}>
          {items.map(({ content: BlogPostContent }) => (
            <BlogPostProvider
              key={BlogPostContent.metadata.permalink}
              content={BlogPostContent}
            >
              <ChangelogItem>
                <BlogPostContent />
              </ChangelogItem>
            </BlogPostProvider>
          ))}
        </div>
      </div>
    </div>
  );
}
