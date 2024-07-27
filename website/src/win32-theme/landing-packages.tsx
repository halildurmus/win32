import { communityPackages, packages } from '@site/src/assets/packages';
import clsx from 'clsx';
import { useInView } from 'framer-motion';
import React, {
  DetailedHTMLProps,
  FC,
  useCallback,
  useEffect,
  useRef,
  useState,
} from 'react';
import { FaCircleCheck } from 'react-icons/fa6';
import { LandingSectionCtaButtonAlt } from './landing-section-cta-button';

type Props = {
  className?: string;
};

export const LandingPackages: FC<Props> = ({ className }) => {
  return (
    <div className={clsx(className, 'w-full')}>
      <div className={clsx('not-prose', 'w-full', 'px-4 landing-md:px-10')}>
        <h2
          className={clsx(
            'text-2xl landing-sm:text-[32px]',
            'tracking-tight',
            'text-start',
            'p-0',
            'dark:text-gray-0 text-gray-900'
          )}
        >
          <span
            className={clsx(
              'font-semibold',
              'dark:text-win32-green-alt dark:drop-shadow-[0_0_30px_rgba(71,235,235,0.3)]',
              'text-win32-blue drop-shadow-[0_0_30px_rgba(0,128,255,0.3)]'
            )}
          >
            Supercharge
          </span>{' '}
          your apps.
        </h2>
        <p
          className={clsx(
            'mt-4 landing-sm:mt-6',
            'max-w-md',
            'text-base',
            'dark:text-gray-400 text-gray-600'
          )}
        >
          Enhance your Flutter and Dart apps with top-quality packages from our
          team and the community.
        </p>
      </div>

      <div
        className={clsx(
          'w-full',
          'relative',
          'mt-8 landing-sm:mt-12 landing-lg:mt-20',
          'mb-4 landing-sm:mb-12 landing-md:mb-6',
          'pb-4 landing-md:pb-10',
          'dark:bg-landing-packages-dark bg-landing-packages',
          'dark:bg-gray-800 bg-gray-50',
          'rounded-2xl landing-sm:rounded-3xl',
          'overflow-hidden'
        )}
      >
        <div className={clsx('landing-packages-mask', 'pt-4 landing-md:pt-10')}>
          <PackagesContainer animDirection="right">
            {[...packages, ...packages].map(
              ({ icon, name, installCommand }, index) => (
                <PackageItem
                  key={index}
                  icon={icon}
                  label={name}
                  tooltip={installCommand}
                />
              )
            )}
          </PackagesContainer>
          <PackagesContainer animDirection="left">
            {[...communityPackages, ...communityPackages].map(
              ({ icon, name, installCommand }, index) => (
                <PackageItem
                  key={index}
                  icon={icon}
                  label={name}
                  tooltip={installCommand}
                />
              )
            )}
          </PackagesContainer>
        </div>
      </div>

      <LandingSectionCtaButtonAlt to={'/packages'}>
        All packages
      </LandingSectionCtaButtonAlt>
    </div>
  );
};

const PackagesContainer = ({
  children,
  className,
  animDirection,
  ...props
}: DetailedHTMLProps<React.HTMLAttributes<HTMLDivElement>, HTMLDivElement> & {
  animDirection: 'left' | 'right';
}) => {
  const ref = useRef<HTMLDivElement>(null);
  const inView = useInView(ref);

  return (
    <div
      ref={ref}
      className={clsx(
        'relative',
        'flex',
        'items-center',
        animDirection === 'left' ? 'justify-start' : 'justify-end'
      )}
    >
      <div
        className={clsx(
          className,
          'hover:animation-paused',
          inView
            ? animDirection === 'left'
              ? 'animate-landing-packages-left'
              : 'animate-landing-packages-right'
            : '',
          'absolute',
          'left-0',
          'top-0',
          'pr-4',
          'w-auto',
          'flex',
          'items-center',
          'gap-[18px]',
          'mt-6',
          'relative'
        )}
        {...props}
      >
        {children}
      </div>
    </div>
  );
};

const PackageItem = (props: {
  icon: React.ComponentType<React.SVGProps<SVGSVGElement>>;
  label: string;
  tooltip: string;
}) => {
  const { icon: Icon, label, tooltip } = props;

  const [isCopied, setIsCopied] = useState(false);
  const copyTimeout = useRef(undefined);

  const onCopy = useCallback(() => {
    try {
      navigator.clipboard.writeText(tooltip).then(() => {
        setIsCopied(true);
        copyTimeout.current = window.setTimeout(() => {
          setIsCopied(false);
        }, 1000);
      });
    } catch (error) {}
  }, [tooltip]);

  useEffect(() => () => window.clearTimeout(copyTimeout.current), []);

  return (
    <div
      onClick={onCopy}
      className={clsx(
        'group',
        'relative',
        'z-10',
        'flex',
        'items-center',
        'justify-center',
        'gap-3',
        'pl-4 pt-4 pb-4 pr-6',
        'dark:bg-gray-900 bg-gray-0',
        'rounded-full',
        'cursor-pointer'
      )}
    >
      <div
        className={clsx(
          isCopied && 'rotate-[360deg]',
          'transition-all duration-200 ease-in-out'
        )}
      >
        <Icon width={24} height={24} />
      </div>
      <div
        className={clsx(
          'text-sm',
          'font-medium',
          'dark:bg-landing-packages-text-dark bg-landing-packages-text',
          'bg-clip-text',
          'text-transparent',
          'whitespace-nowrap'
        )}
      >
        {label}
      </div>

      <div
        className={clsx(
          'absolute',
          'z-20',
          'top-[-48px]',
          'scale-0',
          'group-hover:scale-100',
          'transition-transform',
          'origin-top'
        )}
      >
        <div
          className={clsx(
            'relative',
            'text-sm',
            'bg-gray-900 dark:bg-gray-0',
            'text-gray-300 dark:text-gray-700',
            'rounded-full',
            'px-6 py-3',
            'whitespace-nowrap'
          )}
        >
          {isCopied ? (
            <div className={clsx('flex gap-2 items-center')}>
              <span>copied to clipboard!</span>
              <FaCircleCheck className="ml-1 size-4" />
            </div>
          ) : (
            tooltip
          )}
        </div>

        <svg
          xmlns="http://www.w3.org/2000/svg"
          width={40}
          height={15}
          fill="none"
          className={clsx(
            'absolute',
            'scale-0',
            '-bottom-2',
            'left-1/2',
            '-translate-x-1/2',
            'group-hover:scale-100',
            'transition-transform',
            'origin-bottom',
            'dark:text-gray-0 text-gray-900'
          )}
        >
          <path
            fill="currentColor"
            d="M17.73 13.664C18.238 14.5 19.089 15 20 15c.912 0 1.763-.501 2.27-1.336l3.025-4.992C26.306 7.002 28.01 7 29.833 7H40V0H0v7h10.167c1.823 0 3.527.003 4.538 1.672l3.026 4.992Z"
          />
        </svg>
      </div>
    </div>
  );
};
