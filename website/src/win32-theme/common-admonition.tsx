import clsx from 'clsx';
import React from 'react';
import { BsFire } from 'react-icons/bs';
import { FaLightbulb } from 'react-icons/fa';
import { HiMiniDocumentText } from 'react-icons/hi2';
import { MdInfo } from 'react-icons/md';
import { PiWarningFill } from 'react-icons/pi';

type Props = {
  type: 'simple' | 'note' | 'tip' | 'info' | 'warning' | 'danger';
  title?: React.ReactNode;
  children: React.ReactNode;
};

const icons = {
  note: HiMiniDocumentText,
  tip: FaLightbulb,
  info: MdInfo,
  warning: PiWarningFill,
  danger: BsFire,
};

const colorTextClasses = {
  simple: 'text-gray-700 dark:text-gray-100',
  note: 'text-win32-react-light-green dark:text-win32-react-dark-green',
  tip: 'text-win32-react-light-green-alt dark:text-win32-react-dark-green-alt',
  info: 'text-win32-react-light-purple dark:text-win32-react-dark-purple',
  warning: 'text-win32-react-light-orange dark:text-win32-react-dark-orange',
  danger: 'text-win32-red',
};

const colorWrapperClasses = {
  simple: 'border dark:border-gray-700 border-gray-300',
  note: 'bg-win32-react-light-green-bg dark:bg-win32-react-light-green dark:bg-opacity-[0.2] border-l-win32-react-light-green dark:border-l-win32-react-dark-green',
  tip: 'bg-win32-react-light-green-alt bg-opacity-[0.05] dark:bg-win32-react-dark-green-alt dark:bg-opacity-[0.05] border-l-win32-react-light-green-alt dark:border-l-win32-react-dark-green-alt',
  info: 'bg-win32-react-light-purple bg-opacity-[0.15] dark:bg-win32-react-dark-purple dark:bg-opacity-[0.15] border-l-win32-react-light-purple dark:border-l-win32-react-dark-purple',
  warning:
    'bg-win32-react-light-orange bg-opacity-[0.15] dark:bg-win32-react-dark-orange dark:bg-opacity-[0.15] border-l-win32-react-light-orange dark:border-l-win32-dark-orange',
  danger: 'bg-win32-red bg-opacity-10 border-l-win32-red',
};

const titles = {
  simple: 'Good to know',
  note: 'NOTE',
  tip: 'TIP',
  info: 'INFO',
  warning: 'WARNING',
  danger: 'DANGER',
};

export const Admonition = ({ type, title, children }: Props) => {
  const Icon = icons[type] ?? (() => null);
  const clsText = colorTextClasses[type] ?? 'tex-inherit';
  const clsWrapper = colorWrapperClasses[type] ?? 'bg-inherit';

  if (type === 'simple') {
    return (
      <Simple type={type} title={title ?? titles[type]}>
        {children}
      </Simple>
    );
  }

  return (
    <div
      className={clsx(
        'rounded-lg',
        'admonition',
        `admonition-${type}`,
        'mb-6',
        'win32-wider-container',
        clsWrapper
      )}
    >
      <div
        className={clsx(
          'border-l-4',
          'border-l-solid',
          'border-l-inherit',
          'rounded-tl-lg',
          'rounded-bl-lg',
          'py-4',
          'pr-4',
          'pl-3',
          'flex flex-col',
          'gap-2 sm:gap-4'
        )}
      >
        {(title || titles[type]) && (
          <div
            className={clsx(
              'flex',
              'items-center',
              'gap-2',
              'text-xs sm:text-base 2xl:text-base 2xl:leading-7',
              'font-semibold',
              clsText
            )}
          >
            <Icon className="w-5 h-5" />
            <span className="uppercase">{title ?? titles[type] ?? ''}</span>
          </div>
        )}
        <div className={clsx('text-gray-0', 'text-base', 'last:mb-0')}>
          {children}
        </div>
      </div>
    </div>
  );
};

const Simple = ({ type, title, children }: Props) => {
  const clsText = colorTextClasses[type] ?? 'tex-inherit';
  const clsWrapper = colorWrapperClasses[type] ?? 'bg-inherit';
  return (
    <div
      className={clsx(
        'rounded-lg',
        'admonition',
        `admonition-${type}`,
        'mb-6',
        clsWrapper
      )}
    >
      <div className={clsx('flex flex-col', 'gap-2', !title && 'pt-4')}>
        {title && (
          <div
            className={clsx(
              'px-4',
              'pt-4',
              'text-sm',
              'leading-5',
              '-mt-0.5',
              clsText
            )}
          >
            <span className="font-semibold">{title ?? ''}</span>
            <span>:</span>
          </div>
        )}
        <div
          className={clsx(
            'text-gray-0',
            'text-base',
            'last:mb-0',
            'px-4 pb-4',
            'admonition-content'
          )}
        >
          {children}
        </div>
      </div>
    </div>
  );
};
