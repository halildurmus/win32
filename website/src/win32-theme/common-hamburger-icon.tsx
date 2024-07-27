import clsx from 'clsx';
import { MdClose } from 'react-icons/md';
import { RxHamburgerMenu } from 'react-icons/rx';

type Props = {
  className?: string;
  active?: boolean;
  onClick?: () => void;
};

export const CommonHamburgerIcon = ({ active, className, onClick }: Props) => {
  return (
    <button
      className={clsx(
        'w-8 h-8',
        'flex items-center justify-center flex-shrink-0',
        'text-gray-800 dark:text-gray-100',
        'rounded-full',
        'hover:bg-gray-200 hover:dark:bg-gray-700',
        'transition-[background-color]',
        'duration-200',
        'ease-in-out',
        className
      )}
      onClick={onClick}
    >
      {active ? (
        <MdClose className="w-6 h-6" />
      ) : (
        <RxHamburgerMenu className="w-6 h-6" />
      )}
    </button>
  );
};
