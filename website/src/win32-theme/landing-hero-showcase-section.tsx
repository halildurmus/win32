import { showcaseItems } from '@site/src/assets/hero-showcase';
import clsx from 'clsx';
import { useEffect, useMemo, useRef, useState } from 'react';
import { TbCircleChevronRight } from 'react-icons/tb';

export const LandingHeroShowcaseSection = () => {
  const ref = useRef(null);
  const [selectIndex, setSelectIndex] = useState(0);
  const activeShowcaseExample = showcaseItems[selectIndex];
  const ShowcaseComponent = useMemo(
    () => activeShowcaseExample.showcase,
    [activeShowcaseExample.title]
  );

  const timeId = useRef<NodeJS.Timeout | null>(null);

  const handleClickTab = (index: number) => {
    setSelectIndex(index);
    if (timeId.current) {
      clearInterval(timeId.current);
    }

    timeId.current = setInterval(() => {
      setSelectIndex((prev) => {
        if (prev === showcaseItems.length - 1) return 0;
        return prev + 1;
      });
    }, 3000);
  };

  useEffect(() => {
    if (timeId.current) {
      clearInterval(timeId.current);
    }

    timeId.current = setInterval(() => {
      setSelectIndex((prev) => {
        // if index >= 2 then scroll to the right
        if (prev + 1 >= 2) {
          ref.current?.scrollTo({
            left: (prev + 1) * (244 + 8),
            behavior: 'smooth',
          });
        }

        // scroll to the beginning
        if (prev === 3) {
          ref.current?.scrollTo({
            left: 0,
            behavior: 'smooth',
          });
        }

        if (prev === showcaseItems.length - 1) return 0;
        return prev + 1;
      });
    }, 3000);

    return () => {
      if (timeId.current) {
        clearInterval(timeId.current);
      }
    };
  }, []);

  return (
    <div
      className={clsx(
        'bg-gray-50 dark:bg-gray-800',
        'flex',
        'flex-col',
        'w-full',
        'rounded-2xl landing-sm:rounded-[32px]',
        'gap-2 landing-sm:gap-4',
        'p-2 landing-sm:p-4',
        'relative',
        'group/showcase',
        'landing-lg:overflow-hidden'
      )}
    >
      <div className={clsx('flex', 'w-full', 'gap-2')}>
        <div
          ref={ref}
          className={clsx(
            'rounded-3xl',
            'overflow-y-auto',
            'flex',
            'w-full',
            'gap-2',
            'scrollbar-hidden',
            'snap snap-x snap-mandatory',
            'snap-mandatory'
          )}
        >
          <div
            className={clsx(
              'rounded-3xl',
              'flex',
              'w-auto',
              'landing-lg:w-full',
              'items-center',
              'justify-start',
              'gap-2',
              'relative',
              'bg-gray-0 dark:bg-gray-900'
            )}
          >
            <div
              className={clsx(
                'hidden landing-sm:block',
                'flex-1',
                'rounded-3xl',
                'h-full',
                'bg-gray-200 dark:bg-gray-700',
                'absolute',
                'left-0',
                'top-0',
                'transition-transform',
                'duration-150',
                'ease-out'
              )}
              style={{
                width: 'calc((100% - (3 * 8px)) / 4)',
                minWidth: '244px',
                transform: `translateX(calc((100% + 8px) * ${showcaseItems.findIndex(
                  (f) => f.title === activeShowcaseExample.title
                )})) translateZ(0px)`,
              }}
            />
            {showcaseItems.map((app, index) => (
              <button
                key={app.title}
                type="button"
                onClick={(event) => {
                  handleClickTab(index);
                  // if index >= 2 then scroll to the right
                  event.currentTarget.parentElement?.parentElement?.scrollTo({
                    left: index >= 2 ? index * (244 + 8) : 0,
                    behavior: 'smooth',
                  });
                }}
                className={clsx(
                  'z-[1]',
                  'snap-start',
                  'appearance-none',
                  'focus:outline-none',
                  'border-none',
                  'flex-1',
                  'break-keep',
                  'whitespace-nowrap',
                  'landing-sm:min-w-[244px]',
                  'py-2',
                  'landing-sm:py-3.5',
                  'px-4',
                  'rounded-3xl',
                  'transition-colors',
                  'ease-in-out',
                  'duration-150',
                  activeShowcaseExample.title !== app.title && 'bg-transparent',
                  activeShowcaseExample.title === app.title &&
                    'bg-gray-200 dark:bg-gray-700',
                  activeShowcaseExample.title !== app.title &&
                    'text-gray-600 dark:text-gray-400',
                  activeShowcaseExample.title === app.title &&
                    'text-gray-900 dark:text-gray-0',
                  'landing-sm:bg-transparent',
                  'dark:landing-sm:bg-transparent',
                  'transition-colors',
                  'duration-150',
                  'ease-out',
                  'text-xs',
                  'landing-sm:text-sm'
                )}
              >
                {app.title}
              </button>
            ))}
          </div>
        </div>
      </div>
      <div
        className={clsx(
          'rounded-lg',
          'landing-md:rounded-xl',
          'landing-lg:rounded-2xl',
          'overflow-hidden',
          'shadow-sm shadow-gray-200 dark:shadow-none',
          'relative',
          'group/showcase-inner'
        )}
      >
        <div
          className={clsx(
            'w-full',
            'h-auto',
            'aspect-[1168/736]',
            'transition-colors',
            'duration-150',
            'ease-in-out',
            activeShowcaseExample.isDark ? 'bg-gray-900' : 'bg-gray-0'
          )}
        />
        <ShowcaseComponent
          className={clsx(
            'animate-showcase-reveal',
            'absolute',
            'left-0',
            'top-0',
            'w-full',
            'rounded-lg',
            'landing-md:rounded-xl',
            'landing-lg:rounded-2xl',
            'overflow-hidden'
          )}
        />
        <div
          key={activeShowcaseExample.title}
          className={clsx(
            'hidden',
            'landing-lg:block',
            'landing-lg:opacity-0',
            'landing-lg:translate-y-24',
            'landing-lg:group-hover/showcase-inner:opacity-100 landing-lg:group-hover/showcase-inner:translate-y-0',
            'duration-300',
            'ease-in-out',
            'transition-[opacity,transform,background-color,color]',
            'absolute',
            'left-0',
            'bottom-0',
            'right-0',
            'w-full',
            'h-24',
            'opacity-0',
            activeShowcaseExample.isDark &&
              'bg-[linear-gradient(0deg,_#14141F_30%,_transparent_90%,_transparent_100%)]',
            !activeShowcaseExample.isDark &&
              'bg-[linear-gradient(0deg,_#FFFFFF_30%,_transparent_90%,_transparent_100%)]',
            'rounded-bl-lg rounded-br-lg',
            'landing-md:rounded-bl-xl landing-md:rounded-br-xl',
            'landing-lg:rounded-bl-2xl landing-lg:rounded-br-2xl'
          )}
        />
        <div
          className={clsx(
            'flex',
            'items-center',
            'justify-center',
            'landing-lg:-mb-4'
          )}
        >
          <a
            href={activeShowcaseExample.link}
            target="_blank"
            rel="noopener noreferrer"
            className={clsx(
              'hidden',
              'landing-lg:flex',
              'landing-lg:opacity-0',
              'landing-lg:translate-y-8',
              'landing-lg:group-hover/showcase-inner:opacity-100 landing-lg:group-hover/showcase-inner:translate-y-0',
              'duration-150',
              'delay-75',
              'ease-in-out',
              'transition-all',
              'landing-lg:mt-[-144px]',
              'hover:no-underline',
              'z-[3]',
              'py-2 landing-sm:py-4',
              'pl-4 pr-4 landing-sm:pl-6 landing-sm:pr-4',
              'rounded-[32px] landing-sm:rounded-[48px]',
              'items-center',
              'justify-center',
              'gap-2',
              'bg-win32-blue dark:bg-win32-cyan-alt',
              'bg-opacity-10 dark:bg-opacity-10',
              'landing-lg:bg-opacity-100 dark:landing-lg:bg-opacity-100',
              'text-win32-blue dark:text-win32-cyan-alt',
              'landing-lg:text-gray-0 dark:landing-lg:text-gray-900',
              'hover:brightness-125',
              'landing-lg:hover:scale-105 landing-lg:hover:brightness-100',
              'hover:text-win32-blue dark:hover:text-win32-cyan-alt',
              'landing-lg:hover:text-gray-0 dark:landing-lg:hover:text-gray-900',
              'landing-lg:border-8 landing-lg:border-solid',
              activeShowcaseExample.isDark
                ? 'landing-lg:border-gray-900'
                : 'landing-lg:border-gray-0'
            )}
          >
            <span
              className={clsx('text-xs landing-sm:text-base', 'font-semibold')}
            >
              {activeShowcaseExample.ctaText}
            </span>
            <TbCircleChevronRight className="w-5 h-5" />
          </a>
        </div>
      </div>
      <div
        className={clsx(
          'flex',
          'items-center',
          'justify-center',
          'landing-lg:-mb-4'
        )}
      >
        <a
          href={activeShowcaseExample.link}
          target="_blank"
          rel="noopener noreferrer"
          className={clsx(
            'landing-lg:opacity-0',
            'duration-150',
            'delay-75',
            'ease-in-out',
            'transition-all',
            'hover:no-underline',
            'z-[3]',
            'py-2 landing-sm:py-4',
            'pl-4 pr-4 landing-sm:pl-6 landing-sm:pr-4',
            'rounded-[32px] landing-sm:rounded-[48px]',
            'flex',
            'landing-lg:hidden',
            'items-center',
            'justify-center',
            'gap-2',
            'bg-win32-blue dark:bg-win32-cyan-alt',
            'bg-opacity-10 dark:bg-opacity-10',
            'landing-lg:bg-opacity-100 dark:landing-lg:bg-opacity-100',
            'text-win32-blue dark:text-win32-cyan-alt',
            'landing-lg:text-gray-0 dark:landing-lg:text-gray-900',
            'hover:brightness-125',
            'landing-lg:hover:scale-105 landing-lg:hover:brightness-100',
            'hover:text-win32-blue dark:hover:text-win32-cyan-alt',
            'landing-lg:hover:text-gray-0 dark:landing-lg:hover:text-gray-900',
            'landing-lg:border-8 landing-lg:border-solid',
            activeShowcaseExample.isDark
              ? 'landing-lg:border-gray-900'
              : 'landing-lg:border-gray-0'
          )}
        >
          <span
            className={clsx('text-xs landing-sm:text-base', 'font-semibold')}
          >
            {activeShowcaseExample.ctaText}
          </span>
          <TbCircleChevronRight className="w-5 h-5" />
        </a>
      </div>
    </div>
  );
};
