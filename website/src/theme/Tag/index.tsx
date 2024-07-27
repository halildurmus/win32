import Link from '@docusaurus/Link';
import clsx from 'clsx';

export default function Tag({
  permalink,
  label,
  count,
  isActive,
  size = 'small',
  variant = 'default',
}: any): JSX.Element {
  return (
    <Link
      href={permalink}
      className={clsx(
        'no-underline hover:no-underline',
        'rounded-full',
        size === 'small' && 'text-xs',
        size === 'small' && 'py-1',
        size === 'small' && 'px-3',
        size === 'medium' && 'text-sm',
        size === 'medium' && 'py-2',
        size === 'medium' && 'px-4',
        !isActive && 'bg-gray-100 dark:bg-gray-700',
        !isActive && 'text-gray-600 dark:text-gray-400',
        'text-win32-react-8 dark:text-win32-react-3',
        variant === 'default' && 'bg-win32-react-3 dark:bg-win32-react-7',
        variant === 'inverted' && 'bg-win32-react-3 dark:bg-win32-react-8'
      )}
    >
      {label}
      {/* {count && <span>{count}</span>} */}
    </Link>
  );
}
