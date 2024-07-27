import clsx from 'clsx';
import { LandingCopyCommandButton } from './landing-copy-command-button';

export const LandingTryItSection = ({ className }: { className?: string }) => (
  <div
    id="playground"
    className={clsx(
      'flex',
      'flex-col',
      'gap-8 landing-sm:gap-12 landing-md:gap-8',
      className
    )}
    style={{ scrollMarginTop: '6rem' }}
  >
    <div
      className={clsx(
        'flex',
        'flex-col',
        'gap-4 landing-sm:gap-6',
        'px-4 landing-sm:px-10'
      )}
    >
      <h2
        className={clsx(
          'text-2xl landing-sm:text-[32px] landing-sm:leading-[40px]',
          'font-bold',
          'text-gray-900 dark:text-gray-0'
        )}
      >
        <span
          className={clsx(
            'font-semibold',
            'dark:text-win32-green-alt dark:drop-shadow-[0_0_30px_rgba(71,235,235,0.3)]',
            'text-win32-blue drop-shadow-[0_0_30px_rgba(0,128,255,0.3)]'
          )}
        >
          Get started
        </span>{' '}
        now!
      </h2>
      <p
        className={clsx(
          'text-base',
          'font-normal',
          'text-gray-600 dark:text-gray-400',
          'landing-sm:max-w-[446px]'
        )}
      >
        Choose your way to set up your project and start developing in seconds.
      </p>
    </div>
    <div
      className={clsx(
        'w-full',
        'rounded-2xl landing-md:rounded-3xl',
        'relative',
        'overflow-hidden',
        'transition-[min-height,height]',
        'duration-300',
        'ease-out'
      )}
    >
      <LandingTryItOptionsSection
        className={clsx(
          'w-full',
          'transition-[transform,opacity,margin-bottom]',
          'duration-300',
          'ease-in-out'
        )}
      />
    </div>
  </div>
);

const LandingTryItOptionsSection = ({ className }: { className?: string }) => (
  <div
    className={clsx(
      'relative',
      'flex',
      'flex-col landing-md:flex-row',
      className
    )}
  >
    <div
      className={clsx(
        'flex-1',
        'rounded-2xl landing-md:rounded-3xl',
        'landing-md:rounded-tr-none landing-md:rounded-br-none',
        'flex',
        'flex-col',
        'gap-6 landing-sm:gap-10',
        'pt-4 landing-sm:pt-10 landing-md:pt-16',
        'px-4 landing-sm:px-10',
        'pb-14 landing-sm:pb-20 landing-md:pb-16',
        'bg-gray-50 dark:bg-gray-800',
        'landing-md:bg-landing-wizard-option-bg-light dark:landing-md:bg-landing-wizard-option-bg-dark',
        'landing-md:bg-landing-wizard-option-left landing-md:bg-landing-wizard-option'
      )}
      style={{
        backgroundRepeat: 'no-repeat, repeat',
      }}
    >
      <p
        className={clsx(
          'text-base landing-sm:text-xl landing-md:text-base landing-lg:text-xl',
          'font-semibold',
          'text-gray-600 dark:text-gray-400',
          'landing-lg:max-w-[446px]'
        )}
      >
        Run the command in Terminal to add{' '}
        <span className={clsx('text-win32-blue dark:text-win32-cyan-alt')}>
          win32
        </span>{' '}
        to your{' '}
        <span className={clsx('text-flutter-blue dark:text-flutter-sky')}>
          Flutter
        </span>{' '}
        app.
      </p>
      <LandingCopyCommandButton variant="flutter" />
    </div>
    <div
      className={clsx(
        'h-4 landing-md:h-full',
        'w-full landing-md:w-0',
        'relative',
        'flex-shrink-0'
      )}
    >
      <div
        className={clsx(
          'hidden',
          'landing-md:block',
          'absolute',
          '-left-2',
          'skew-x-[14deg]',
          'top-0',
          'h-[272px]',
          'w-2',
          'bg-gray-0 dark:bg-gray-900'
        )}
      />
      <div
        className={clsx(
          'absolute',
          '-top-6 left-8',
          'landing-md:top-32 landing-md:-left-1',
          'landing-md:-translate-x-1/2',
          'landing-md:-translate-y-1/2',
          'bg-gray-0 dark:bg-gray-900',
          'text-gray-600 dark:text-gray-400',
          'w-16 h-16 landing-md:w-[78px] landing-md:h-[78px]',
          'rounded-full',
          'text-base',
          'uppercase',
          'flex items-center justify-center'
        )}
      >
        or
      </div>
    </div>
    <div
      className={clsx(
        'flex-1',
        'rounded-2xl landing-md:rounded-3xl',
        'flex flex-col',
        'landing-md:rounded-tl-none landing-md:rounded-bl-none',
        'pb-4 landing-sm:pb-10 landing-md:pb-16',
        'px-4 landing-sm:px-10',
        'pt-14 landing-sm:pt-20 landing-md:pt-16',
        'bg-gray-50 dark:bg-gray-800',
        'landing-md:bg-landing-wizard-option-bg-light dark:landing-md:bg-landing-wizard-option-bg-dark',
        'landing-md:bg-landing-wizard-option-right landing-md:bg-landing-wizard-option',
        'landing-md:items-end'
      )}
      style={{
        backgroundRepeat: 'no-repeat, repeat',
      }}
    >
      <div
        className={clsx(
          'landing-md:max-w-[318px]',
          'landing-lg:max-w-[446px]',
          'flex',
          'flex-col',
          'gap-6 landing-sm:gap-10'
        )}
      >
        <p
          className={clsx(
            'text-base landing-sm:text-xl landing-md:text-base landing-lg:text-xl',
            'font-semibold',
            'text-gray-600 dark:text-gray-400',
            'landing-lg:max-w-[446px]'
          )}
        >
          Run the command in Terminal to add{' '}
          <span className={clsx('text-win32-blue dark:text-win32-cyan-alt')}>
            win32
          </span>{' '}
          to your{' '}
          <span className={clsx('text-dart-navy dark:text-dart-blue')}>
            Dart
          </span>{' '}
          app.
        </p>
        <LandingCopyCommandButton variant="dart" />
      </div>
    </div>
  </div>
);
