import clsx from 'clsx';
import { FaGithub } from 'react-icons/fa';

export const SourceCodeBadge = ({ path }: { path?: string }) => {
  return (
    <a
      href={path}
      target="_blank"
      rel="noreferrer noopener"
      className={clsx(
        'text-xs',
        'font-mono',
        'text-gray-0',
        'bg-win32-purple',
        'py-2 pl-2 pr-4',
        'rounded-[32px]',
        'flex gap-2 items-center',
        'hover:no-underline hover:text-gray-0'
      )}
    >
      <FaGithub className="w-4 h-4" />
      <span>Source Code</span>
    </a>
  );
};
