import Link from '@docusaurus/Link';
import { useVisibleBlogSidebarItems } from '@docusaurus/theme-common/internal';
import type { Props } from '@theme/BlogSidebar';
import clsx from 'clsx';

export default function ChangelogSidebar({
  sidebar,
}: Props): JSX.Element | null {
  if (!sidebar?.items.length) return null;
  const items = useVisibleBlogSidebarItems(sidebar.items);
  return (
    <div
      className={clsx(
        'hidden lg:block',
        'sticky',
        'left-0',
        'overflow-auto',
        'w-full'
      )}
      style={{
        maxWidth: `260px`,
        top: `65px`,
        height: `calc(100vh - 65px)`,
      }}
    >
      <div
        className={clsx(
          'px-4',
          'py-6',
          'border-r border-r-gray-300 dark:border-r-gray-700',
          'flex flex-col gap-4'
        )}
      >
        <div
          className={clsx(
            'ml-2',
            'font-bold',
            'text-win32-react-6 dark:text-win32-react-3'
          )}
        >
          {sidebar.title}
        </div>
        <ul>
          {items.map((item) => {
            const className = (isActive: boolean) =>
              clsx(
                'px-4 py-2',
                isActive &&
                  'bg-win32-blue-2-light dark:bg-win32-blue-2 dark:bg-opacity-10',
                isActive &&
                  'text-win32-react-light-link dark:text-win32-react-dark-link',
                !isActive && 'text-win32-600 dark:text-win32-300',
                !isActive && 'hover:bg-gray-100 dark:hover:bg-gray-700',
                !isActive && 'hover:text-gray-600 dark:hover:text-gray-300',
                'rounded-[18px]',
                'block',
                'text-sm',
                'no-underline hover:no-underline',
                'transition-colors duration-200 ease-in-out'
              );
            return (
              <li key={item.permalink} className="mb-0.5">
                <Link isNavLink to={item.permalink} className={className}>
                  {item.title}
                </Link>
              </li>
            );
          })}
        </ul>
      </div>
    </div>
  );
}
