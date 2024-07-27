import clsx from 'clsx';
import React from 'react';
import { FaCircleCheck } from 'react-icons/fa6';
import {
  ChangingTextElement,
  ChangingTextElementRef,
} from './changing-text-element';

export const LandingCopyCommandButton = ({
  className,
  variant,
}: {
  className?: string;
  variant: 'dart' | 'flutter';
}) => {
  const installText = `${variant} pub add win32`;
  const copiedText = 'copied!';

  const changingTextRef = React.useRef<ChangingTextElementRef>(null);
  const copyTimeoutRef = React.useRef<NodeJS.Timeout | null>(null);
  const [isCopied, setIsCopied] = React.useState(false);
  const [isFadedOut, setIsFadedOut] = React.useState(false);

  const onCopy = () => {
    if (changingTextRef.current) {
      if (copyTimeoutRef.current) clearTimeout(copyTimeoutRef.current);
      setIsCopied(false);
      changingTextRef.current.start();
      // copy to clipboard
      navigator.clipboard.writeText(installText);
      copyTimeoutRef.current = setTimeout(() => {
        setIsFadedOut(true);
        setTimeout(() => {
          changingTextRef.current?.reset();
          setIsFadedOut(false);
        }, 300);
      }, 3000);
    }
  };

  return (
    <button
      type="button"
      onClick={onCopy}
      title="Copy command to clipboard"
      className={clsx(
        'self-start',
        'appearance-none',
        'focus:outline-none',
        'border-none',
        'py-3',
        'px-6',
        'rounded-3xl',
        'bg-win32-blue dark:bg-win32-cyan-alt',
        'bg-opacity-10 dark:bg-opacity-10',
        'text-win32-blue dark:text-win32-cyan-alt',
        'text-[12px] leading-5',
        'leading-6',
        'font-jetBrains-mono',
        'overflow-hidden',
        'relative',
        'group/copy-button',
        className
      )}
    >
      <div
        className={clsx(
          'rounded-3xl',
          'absolute',
          'left-0',
          'top-0',
          'w-full',
          'h-full',
          'scale-[2]',
          'origin-center',
          'transition-[opacity,transform]',
          'duration-300',
          'ease-in-out',
          'opacity-0',
          'group-hover/copy-button:opacity-100',
          'group-hover/copy-button:scale-100',
          'pointer-events-none',
          'bg-landing-copy-command-hover-bg-light dark:bg-landing-copy-command-hover-bg-dark'
        )}
      />
      <ChangingTextElement
        ref={changingTextRef}
        first={installText}
        second={copiedText}
        onEnd={() => {
          setIsCopied(true);
          setTimeout(() => {
            setIsCopied(false);
          }, 1300);
        }}
        tick={30}
        className={clsx(
          'inline-block',
          'whitespace-pre',
          'duration-150',
          'transition-opacity',
          'will-change-[contents,opacity]',
          'ease-in-out',
          isFadedOut && 'opacity-0',
          !isFadedOut && 'opacity-100'
        )}
        activeClassName={clsx(
          'text-gray-500 dark:text-gray-0',
          'relative',
          'z-[1]'
        )}
      />
      <div
        className={clsx(
          'z-[1]',
          'py-4',
          'pr-4',
          'absolute',
          'top-0',
          '-right-8',
          isCopied && '-translate-x-8',
          'duration-150',
          'ease-out',
          'transition-transform'
        )}
      >
        <FaCircleCheck className="w-4 h-4" />
      </div>
    </button>
  );
};
