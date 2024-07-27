import clsx from 'clsx';
import { useCallback, useEffect, useRef, useState } from 'react';
import { MdContentCopy } from 'react-icons/md';

export const CommonCopyButton = ({
  className,
  code,
  title,
}: {
  className?: string;
  code: string;
  title?: string;
}) => {
  const [isCopied, setIsCopied] = useState(false);
  const copyTimeout = useRef(undefined);

  const onCopy = useCallback(() => {
    try {
      navigator.clipboard.writeText(code).then(() => {
        setIsCopied(true);
        copyTimeout.current = window.setTimeout(() => {
          setIsCopied(false);
        }, 1000);
      });
    } catch (error) {}
  }, [code]);

  useEffect(() => () => window.clearTimeout(copyTimeout.current), []);

  return (
    <button
      type="button"
      aria-label={isCopied ? 'Copied!' : title ?? 'Copy code to clipboard'}
      title={title ?? 'Copy code to clipboard'}
      className={clsx(
        'w-6 h-6',
        'flex justify-center items-center',
        'bg-gray-200',
        'dark:bg-gray-800',
        'hover:bg-gray-300',
        'dark:hover:bg-win32-react-dark-code',
        'rounded',
        'group',
        'transition-[background-color] duration-200 ease-in-out',
        className
      )}
      onClick={onCopy}
    >
      <MdContentCopy
        className={clsx(
          'w-3 h-3',
          'text-gray-500',
          'dark:text-gray-400',
          isCopied && 'rotate-[360deg]',
          'transition-all duration-200 ease-in-out'
        )}
      />
    </button>
  );
};
