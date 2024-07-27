import Link from '@docusaurus/Link';
import clsx from 'clsx';
import React, { AnchorHTMLAttributes, ButtonHTMLAttributes } from 'react';
import { IoPlayOutline } from 'react-icons/io5';

type Props = {
  children?: React.ReactNode;
  href?: string;
  onClick?: () => void;
  buttonClassname?: string;
} & (AnchorHTMLAttributes<{}> | ButtonHTMLAttributes<{}>);

export const LandingRainbowButton = ({
  children,
  href,
  className,
  onClick,
  buttonClassname,
  ...rest
}: Props) => {
  const Comp = href ? Link : 'button';
  return (
    <Comp
      {...(rest as any)}
      {...(href ? { href, to: href } : {})}
      {...(onClick ? { onClick } : {})}
      className={clsx(
        'z-[1]',
        'appearance-none',
        'focus:outline-none',
        'block',
        'relative',
        'text-win32-bg',
        'hover:no-underline',
        'hover:text-win32-bg',
        'z-[1]',
        'group',
        className
      )}
    >
      <div
        className={clsx(
          'absolute',
          '-left-0.5',
          '-top-0.5',
          'blur',
          'overflow-hidden',
          'rounded-lg',
          'w-[calc(100%+0.25rem)] h-[calc(100%+0.25rem)]',
          'z-[-1]'
        )}
      >
        <div
          className={clsx(
            'absolute',
            'w-[125%] aspect-square h-auto',
            'left-[-12.5%]',
            'top-[-100px]',
            'bg-landing-rainbow',
            'animate-spin-slow',
            'animation-slower-speed',
            'animation-paused',
            'group-hover:animation-running'
          )}
        />
      </div>
      <div
        className={clsx(
          'bg-gray-0',
          'rounded-lg',
          'px-10 py-3',
          buttonClassname
        )}
      >
        <div
          className={clsx(
            'gap-2',
            'flex items-center justify-center',
            'group-hover:scale-105',
            'duration-100 ease-in-out transition-transform'
          )}
        >
          {children ? (
            children
          ) : (
            <>
              <IoPlayOutline className="w-5 h-5" />
              <span className="text-base font-semibold">Try it online!</span>
            </>
          )}
        </div>
      </div>
    </Comp>
  );
};
