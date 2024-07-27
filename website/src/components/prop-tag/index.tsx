import clsx from 'clsx';
import React from 'react';

type Props = {
  asterisk?: boolean;
  deprecated?: boolean;
  required?: boolean;
  featured?: boolean;
  alt?: string;
};

const PropTag: React.FC<React.PropsWithChildren<Props>> = ({
  children,
  asterisk,
  deprecated,
  required,
  featured,
  alt,
}) => {
  if (deprecated) {
    return (
      <div
        className={clsx(
          'inline-flex',
          'text-sm',
          'py-0.5',
          'px-2',
          'rounded-xl',
          'bg-win32-orange',
          'bg-opacity-10',
          'text-win32-orange',
          'tracking-wide',
          'align-middle',
          'font-normal',
          'mr-1'
        )}
        title={alt}
      >
        {children ?? 'deprecated'}
      </div>
    );
  }

  if (asterisk) {
    return (
      <div
        className={clsx(
          'inline-flex',
          'justify-center items-center',
          'text-sm',
          'text-win32-red',
          'rounded-full',
          'bg-win32-red bg-opacity-10',
          'ml-1',
          'w-6 h-6',
          'align-middle'
        )}
      >
        {children ?? '﹡'}
      </div>
    );
  }

  if (required) {
    return (
      <div
        className={clsx(
          'inline-flex',
          'text-sm',
          'py-0.5',
          'px-2',
          'rounded-xl',
          'bg-win32-red',
          'bg-opacity-10',
          'text-win32-red',
          'tracking-wide',
          'align-middle',
          'font-normal',
          'mr-1'
        )}
        title={alt}
      >
        {children ?? 'required'}
      </div>
    );
  }

  if (featured) {
    return (
      <div
        className={clsx(
          'inline-flex',
          'text-sm',
          'py-0.5',
          'px-2',
          'rounded-xl',
          'bg-win32-green',
          'bg-opacity-10',
          'text-win32-green',
          'tracking-wide',
          'align-middle',
          'font-normal',
          'mr-1'
        )}
        title={alt}
      >
        {children ?? 'featured'}
      </div>
    );
  }

  if (children) {
    return (
      <div
        className={clsx(
          'inline',
          'text-gray-0',
          'text-xs',
          'leading-6',
          'py-0.5',
          'px-2',
          'rounded',
          'bg-gray-800',
          'tracking-wide',
          'align-middle',
          'mr-1'
        )}
        title={alt}
      >
        {children}
      </div>
    );
  }

  return null;
};

export default PropTag;
