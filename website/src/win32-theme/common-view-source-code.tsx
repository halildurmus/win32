import Link from '@docusaurus/Link';
import clsx from 'clsx';
import { FaGithub } from 'react-icons/fa';

type Props = {
  href: string;
};

export const CommonViewSourceCode = ({ href }: Props) => (
  <div
    className={clsx(
      'win32-wider-container',
      'py-2 px-2',
      'flex items-center gap-2',
      'rounded-lg',
      'font-sans',
      'text-base',
      'bg-gray-100 dark:bg-gray-700',
      'mb-6'
    )}
  >
    <FaGithub
      className={clsx('ml-1.5', 'w-6 h-6', 'text-gray-700 dark:text-gray-100')}
    />
    <Link
      href={href}
      target="_blank"
      rel="noopener noreferrer"
      className={clsx(
        'text-base',
        'leading-8',
        'text-win32-react-light-link dark:text-win32-react-dark-link'
      )}
    >
      <span>View Source Code</span>
    </Link>
  </div>
);
