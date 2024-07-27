import clsx from 'clsx';
import { IoConstructOutline } from 'react-icons/io5';

export const RoadmapIcon = () => (
  <div
    className={clsx(
      'rounded-full bg-win32-green/10 dark:bg-win32-green-alt/10'
    )}
  >
    <div
      className={clsx(
        'w-10 h-10 rounded-full',
        'flex items-center justify-center',
        'dark:bg-win32-green/10'
      )}
    >
      <IoConstructOutline
        className={clsx('w-4 h-4 text-win32-green dark:text-win32-green-alt')}
      />
    </div>
  </div>
);
