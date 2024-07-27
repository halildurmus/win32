import Link from '@docusaurus/Link';
import clsx from 'clsx';
import React, { FC, PropsWithChildren } from 'react';
import { TbCircleChevronRight } from 'react-icons/tb';

type Props = {
  className?: string;
  icon?: React.ReactNode;
  to?: string;
  onClick?: () => void;
};

export const LandingSectionCtaButton: FC<PropsWithChildren<Props>> = ({
  children,
  className,
  to,
  onClick,
  icon,
}) => {
  return (
    <Link
      to={to}
      target="_blank"
      rel="noopener noreferrer"
      onClick={onClick}
      className={clsx(
        className,
        'select-none',
        'group/cta-button',
        'relative',
        'no-underline',
        'rounded-full',
        'flex',
        'items-center',
        'justify-center',
        'gap-2',
        'py-2 pr-2 pl-4',
        'landing-sm:py-3 landing-sm:pr-4 landing-sm:pl-6',
        'text-xs landing-sm:text-base',
        'font-semibold',
        'dark:text-win32-cyan-alt text-win32-blue',
        'dark:bg-win32-cyan-alt/10 bg-win32-blue/10',
        'overflow-hidden'
      )}
    >
      {children}
      {icon || <TbCircleChevronRight className="w-5 h-5" />}
      <div
        className={clsx(
          'select-none',
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
          'group-hover/cta-button:opacity-100',
          'group-hover/cta-button:scale-100',
          'pointer-events-none',
          'bg-landing-copy-command-hover-bg-light dark:bg-landing-copy-command-hover-bg-dark'
        )}
      />
    </Link>
  );
};

export const LandingSectionCtaButtonAlt: FC<PropsWithChildren<Props>> = ({
  children,
  className,
  to,
  onClick,
  icon,
}) => {
  return (
    <Link
      to={to}
      target="_blank"
      rel="noopener noreferrer"
      onClick={onClick}
      className={clsx(
        className,
        'select-none',
        'landing-sm:max-w-[293px]',
        'mx-auto',
        'group/cta-button',
        'relative',
        'no-underline',
        'rounded-full',
        'flex',
        'items-center',
        'justify-center',
        'gap-2',
        'py-3 pr-4 pl-6',
        'text-base',
        'font-semibold',
        'dark:text-win32-cyan-alt text-win32-blue',
        'dark:bg-win32-cyan-alt/10 bg-win32-blue/10',
        'overflow-hidden'
      )}
    >
      {children}
      {icon || <TbCircleChevronRight className="w-5 h-5" />}
      <div
        className={clsx(
          'select-none',
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
          'group-hover/cta-button:opacity-100',
          'group-hover/cta-button:scale-100',
          'pointer-events-none',
          'bg-landing-copy-command-hover-bg-light dark:bg-landing-copy-command-hover-bg-dark'
        )}
      />
    </Link>
  );
};
