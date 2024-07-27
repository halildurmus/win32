import Link from '@docusaurus/Link';
import clsx from 'clsx';
import { Win32Icon } from './icons/win32';

interface Props {
  className?: string;
}

export const ChangelogWin32Logo = ({ className }: Props) => {
  return (
    <div
      className={clsx(
        'flex',
        'items-center justify-start',
        'gap-2',
        'no-underline',
        className
      )}
    >
      <Link to="/" className={clsx('no-underline', 'flex items-center gap-2')}>
        <Win32Icon
          className={clsx(
            'w-6 h-6',
            'text-win32-cyan dark:text-win32-cyan-alt'
          )}
        />
        <span
          className={clsx(
            'font-semibold',
            'text-base',
            'text-gray-1000 dark:text-gray-0'
          )}
        >
          win32
        </span>
      </Link>
      <span
        className={clsx(
          'block',
          'h-6',
          'w-px',
          'mx-1',
          'bg-gray-300 dark:bg-gray-600'
        )}
      />
      <Link to="/changelog" className={clsx('no-underline')}>
        <span
          className={clsx(
            'text-gray-1000 dark:text-gray-0',
            'text-base font-normal'
          )}
        >
          Changelog
        </span>
      </Link>
    </div>
  );
};
