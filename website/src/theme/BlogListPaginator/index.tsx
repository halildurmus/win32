import Link from '@docusaurus/Link';
import { translate } from '@docusaurus/Translate';
import clsx from 'clsx';
import { TbCircleChevronLeft, TbCircleChevronRight } from 'react-icons/tb';
import { DOTS, usePagination } from '../../hooks/use-pagination';

export default function BlogListPaginator(props) {
  const { metadata, basePath = '/blog' } = props;
  const { totalPages, page: currentPage } = metadata;
  const paginationRange = usePagination({ totalPages, currentPage });
  if (currentPage === 0 || paginationRange.length < 2) return null;
  const lastPage = paginationRange[paginationRange.length - 1];
  return (
    <nav
      className={clsx(
        'blog-md:justify-end flex items-center justify-center',
        'not-prose'
      )}
      aria-label={translate({
        id: 'theme.blog.paginator.navAriaLabel',
        message: 'Blog list page navigation',
        description: 'The ARIA label for the blog pagination',
      })}
    >
      <ul className="flex list-none items-center gap-3 py-6">
        <li>
          <Link
            to={
              currentPage === 1
                ? undefined
                : currentPage - 1 === 1
                  ? basePath
                  : `${basePath}/page/${currentPage - 1}`
            }
            className={clsx(
              'rounded-full',
              'text-win32-react-5 dark:text-win32-react-4',
              currentPage !== 1 && 'opacity-70',
              currentPage === 1 && 'pointer-events-none opacity-20',
              'hover:no-underline dark:hover:opacity-100'
            )}
            title="Previous page"
          >
            <TbCircleChevronLeft className="w-6 h-6" />
          </Link>
        </li>

        {paginationRange.map((pageNumber) => {
          if (pageNumber === DOTS) {
            return (
              <li
                key={`page:${pageNumber}`}
                className={clsx(
                  'flex items-center justify-center',
                  'text-gray-500 dark:text-gray-400',
                  'rounded-full',
                  'hover:no-underline',
                  'no-underline',
                  'h-[32px] w-[32px]'
                )}
              >
                &#8230;
              </li>
            );
          }

          return (
            <li key={pageNumber}>
              <Link
                to={
                  pageNumber === 1 ? basePath : `${basePath}/page/${pageNumber}`
                }
                className={clsx(
                  'text-sm',
                  'flex items-center justify-center',
                  'rounded-full',
                  'hover:no-underline',
                  'h-[32px] w-[32px]',
                  'no-underline',
                  pageNumber !== currentPage &&
                    'text-win32-react-5 dark:text-win32-react-4',
                  pageNumber === currentPage &&
                    'text-win32-react-8 dark:text-win32-react-3',
                  pageNumber === currentPage &&
                    'bg-win32-react-3 dark:bg-win32-react-7',
                  pageNumber !== currentPage && 'dark:hover:text-gray-300',
                  pageNumber === currentPage && 'hover:text-win32-react-8'
                )}
                title={`Page ${pageNumber}`}
              >
                {pageNumber}
              </Link>
            </li>
          );
        })}

        <li>
          <Link
            to={
              currentPage === lastPage
                ? undefined
                : `${basePath}/page/${currentPage + 1}`
            }
            className={clsx(
              'rounded-full',
              'text-win32-react-5 dark:text-win32-react-4',
              currentPage !== lastPage && 'opacity-70',
              currentPage === lastPage && 'pointer-events-none opacity-20',
              'hover:no-underline dark:hover:opacity-100'
            )}
            title="Next page"
          >
            <TbCircleChevronRight className="w-6 h-6" />
          </Link>
        </li>
      </ul>
    </nav>
  );
}
