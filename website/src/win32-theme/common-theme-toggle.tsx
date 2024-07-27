import { useColorMode } from '@docusaurus/theme-common';
import clsx from 'clsx';
import { MdOutlineDarkMode, MdOutlineLightMode } from 'react-icons/md';

type Props = {
  className?: string;
};

export const CommonThemeToggle = ({ className }: Props) => {
  const { colorMode, setColorMode } = useColorMode();

  const toggle = () => {
    setColorMode(colorMode === 'dark' ? 'light' : 'dark');
  };

  return (
    <button
      type="button"
      className={clsx(
        'appearance-none',
        'focus:outline-none',
        'relative',
        'w-10 h-10',
        'rounded-full',
        'border',
        'border-solid',
        'border-gray-300 dark:border-gray-700',
        'text-gray-500',
        'hover:bg-gray-200 hover:dark:bg-gray-700',
        'transition-colors',
        'duration-150',
        'ease-in-out',
        'overflow-hidden',
        'flex-shrink-0',
        'group',
        className
      )}
      onClick={toggle}
    >
      {themes.map(({ name, icon: Icon }) => (
        <div
          key={name}
          className={clsx(
            'absolute',
            'w-full h-full',
            'flex items-center justify-center',
            'flex-shrink-0',
            'top-10',
            name === 'light' ? 'translate-y-0' : '-translate-y-10',
            name === 'light' ? 'dark:-translate-y-10' : 'dark:translate-y-0',
            'duration-200',
            'ease-in-out',
            'transition-transform'
          )}
        >
          <Icon className={clsx('w-5 h-5')} />
        </div>
      ))}
    </button>
  );
};

const themes = [
  { name: 'light', icon: MdOutlineLightMode, label: 'Light' },
  { name: 'dark', icon: MdOutlineDarkMode, label: 'Dark' },
];

export const CommonThemeToggleAlt = ({ className }: Props) => {
  const { colorMode, setColorMode } = useColorMode();

  const toggle = (next: string) => {
    setColorMode(next as typeof colorMode);
  };

  const isDarkSelected = colorMode === 'dark';
  const isLightSelected = colorMode === 'light';

  return (
    <div
      className={clsx(
        'flex',
        'items-center',
        'gap-4',
        'justify-start',
        className
      )}
    >
      {themes.map(({ name, label, icon: Icon }) => (
        <button
          onClick={() => toggle(name)}
          key={name}
          className={clsx(
            'appearance-none',
            'select-none',
            'flex items-center gap-2',
            'rounded-full',
            'h-[40px] px-3',
            'text-sm',
            'border dark:border-gray-700 border-gray-200',
            name === 'light' && 'text-gray-500',
            name === 'light' && isLightSelected && 'bg-gray-50',
            name === 'dark' && isDarkSelected
              ? 'text-gray-400 bg-gray-700'
              : 'text-gray-500',
            'hover:bg-gray-200 hover:dark:bg-gray-700'
          )}
        >
          <Icon className={clsx('w-5 h-5')} />
          <span>{label}</span>
        </button>
      ))}
    </div>
  );
};
