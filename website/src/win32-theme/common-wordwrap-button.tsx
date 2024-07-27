import clsx from 'clsx';
import { FaAlignJustify, FaAlignLeft } from 'react-icons/fa';

export const CommonWordWrapButton = ({ onClick, isEnabled }) => {
  const Icon = isEnabled ? FaAlignJustify : FaAlignLeft;
  return (
    <button
      type="button"
      onClick={() => onClick()}
      className={clsx(
        'w-6 h-6',
        'flex justify-center items-center',
        'bg-gray-200',
        'dark:bg-gray-800',
        'hover:bg-gray-300',
        'dark:hover:bg-win32-react-dark-code',
        'rounded',
        'group',
        'transition-[background-color] duration-200 ease-in-out'
      )}
      aria-label={'Toggle word wrap'}
      title={'Toggle word wrap'}
    >
      <Icon
        className={clsx(
          'w-3 h-3',
          'text-gray-500',
          'dark:text-gray-400',
          isEnabled && 'rotate-[360deg]',
          'transition-all duration-200 ease-in-out'
        )}
      />
    </button>
  );
};
