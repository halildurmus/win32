import clsx from 'clsx';
import { Win32Icon } from '../win32';

export const AboutUsIcon = () => (
  <div
    className={clsx('rounded-full bg-win32-blue/10 dark:bg-win32-cyan-alt/10')}
  >
    <div
      className={clsx(
        'w-10 h-10 rounded-full',
        'flex items-center justify-center',
        'dark:bg-win32-blue/10'
      )}
    >
      <Win32Icon
        className={clsx('w-4 h-4 text-win32-blue dark:text-win32-cyan-alt')}
      />
    </div>
  </div>
);
