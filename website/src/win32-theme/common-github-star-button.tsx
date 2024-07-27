import clsx from 'clsx';
import { FaGithub } from 'react-icons/fa';
import { githubRepoUrl } from '../config';
import { useCommunityStatsContext } from '../context/CommunityStats';
import { Spinner } from './spinner';

type Props = {
  className?: string;
};

export const CommonGithubStarButton = ({ className }: Props) => {
  const { githubStarCountText, loading } = useCommunityStatsContext();
  return (
    <a
      href={githubRepoUrl}
      target="_blank"
      rel="noreferrer"
      className={clsx(
        'text-sm',
        'text-gray-500 dark:text-gray-400',
        'rounded-[32px]',
        'border border-solid border-gray-300 dark:border-gray-700',
        'flex gap-2 items-center',
        'py-2 pl-2.5 pr-4',
        'no-underline',
        'hover:bg-gray-200 hover:dark:bg-gray-700',
        className
      )}
    >
      <FaGithub className={clsx('w-5 h-5 text-gray-500 dark:text-gray-400')} />
      <div className={clsx('flex items-center', 'min-w-[76px] h-6')}>
        <span className="text-gray-500 dark:text-gray-400">Star:&nbsp;</span>
        {loading ? (
          <Spinner
            className={clsx('w-5 h-5')}
            wrapperProps={{ className: clsx('mx-auto') }}
          />
        ) : (
          <span
            className={clsx('tabular-nums text-gray-800 dark:text-gray-100')}
          >
            {githubStarCountText}
          </span>
        )}
      </div>
    </a>
  );
};
