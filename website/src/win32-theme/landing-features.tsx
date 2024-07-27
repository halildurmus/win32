import { features } from '@site/src/assets/features';
import clsx from 'clsx';
import { type FC } from 'react';

type Props = {
  className?: string;
};

export const LandingFeatures: FC<Props> = ({ className }) => (
  <div className={clsx(className, 'w-full')}>
    <div className={clsx('not-prose', 'w-full', 'px-4 landing-md:px-10')}>
      <h2
        className={clsx(
          'text-2xl landing-sm:text-[32px] landing-sm:leading-[40px]',
          'tracking-tight',
          'text-start',
          'p-0',
          'text-gray-900 dark:text-gray-0'
        )}
      >
        The{' '}
        <span
          className={clsx(
            'font-semibold',
            'text-win32-purple drop-shadow-[0_0_30px_rgba(128,0,255,0.3)]',
            'dark:text-win32-red dark:drop-shadow-[0_0_30px_rgba(255,76,77,0.4)]'
          )}
        >
          power
        </span>{' '}
        of{' '}
        <span
          className={clsx(
            'font-semibold',
            'text-win32-blue drop-shadow-[0_0_30px_rgba(0,128,255,0.3)]',
            'dark:text-win32-cyan-alt dark:drop-shadow-[0_0_30px_rgba(71,235,235,0.25)]'
          )}
        >
          win32
        </span>
        .
      </h2>
      <p
        className={clsx(
          'mt-4 landing-sm:mt-6',
          'max-w-md',
          'text-base',
          'dark:text-gray-400 text-gray-600'
        )}
      >
        Explore the features that make{' '}
        <span className="font-semibold">win32</span> a powerful tool for
        building Windows applications with Dart.
      </p>
    </div>

    <div
      className={clsx(
        'mt-8 landing-sm:mt-12 landing-lg:mt-20',
        'grid',
        'grid-cols-1 landing-md:grid-cols-2 landing-lg:grid-cols-3',
        'gap-4 landing-sm:gap-12 landing-md:gap-6'
      )}
    >
      {features.map(({ icon: Icon, title, description }, index) => (
        <div
          key={index}
          className={clsx(
            'not-prose',
            'p-4 landing-sm:p-10',
            'flex',
            'flex-col landing-sm:flex-row landing-md:flex-col',
            'items-start',
            'gap-6',
            'dark:bg-landing-noise',
            'bg-gray-50 dark:bg-gray-800',
            'rounded-2xl landing-sm:rounded-3xl'
          )}
        >
          <div>
            <Icon />
          </div>
          <div className={clsx('flex', 'flex-col', 'gap-4')}>
            <div
              className={clsx(
                'font-semibold',
                'text-xl',
                'text-gray-900 dark:text-gray-0'
              )}
            >
              {title}
            </div>
            <div
              className={clsx('text-base', 'text-gray-600 dark:text-gray-400')}
            >
              {description}
            </div>
          </div>
        </div>
      ))}
    </div>
  </div>
);
