import clsx from 'clsx';
import { GrDocumentConfig } from 'react-icons/gr';

export const ChangelogIcon = () => (
  <div
    className={clsx('rounded-full bg-win32-cyan/10 dark:bg-win32-cyan-alt/10')}
  >
    <div
      className={clsx(
        'w-10 h-10 rounded-full',
        'flex items-center justify-center',
        'dark:bg-win32-cyan/10'
      )}
    >
      <GrDocumentConfig
        className={clsx('w-4 h-4 text-win32-cyan dark:text-win32-cyan-alt')}
      />
    </div>
  </div>
);
