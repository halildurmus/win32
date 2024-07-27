import { Sponsor, sponsors } from '@site/src/assets/sponsors';
import { githubSponsorsUrl } from '@site/src/config';
import clsx from 'clsx';
import { useInView } from 'framer-motion';
import React, { FC, useEffect, useLayoutEffect, useRef } from 'react';
import { LandingSectionCtaButtonAlt } from './landing-section-cta-button';

type Props = {
  className?: string;
};

export const LandingSponsors: FC<Props> = ({ className }) => {
  const ref = useRef<HTMLDivElement>(null);
  const inView = useInView(ref);
  const lastChangedIndex = React.useRef<number>(0);
  const [randomIcons, setRandomIcons] = React.useState<Sponsor>([]);

  useLayoutEffect(() => {
    setRandomIcons(sponsors.sort(() => 0.5 - Math.random()).slice(0, 6));
  }, []);

  if (sponsors.length > 6) {
    useEffect(() => {
      let interval: NodeJS.Timeout;
      // change one random icon in the sponsors list every 2 seconds.
      if (inView) {
        interval = setInterval(() => {
          setRandomIcons((prev) => {
            const { changedIndex, newList } = changeOneRandomIcon(
              prev,
              sponsors,
              lastChangedIndex.current
            );
            lastChangedIndex.current = changedIndex;
            return newList;
          });
        }, 2000);
      }
      return () => clearInterval(interval);
    }, [randomIcons, inView]);
  }

  return (
    <div ref={ref} className={clsx(className, 'w-full')}>
      <div className={clsx('not-prose', 'w-full', 'px-4 landing-md:px-10')}>
        <h2
          className={clsx(
            'text-2xl landing-sm:text-[32px] landing-sm:leading-[40px]',
            'tracking-tight',
            'text-start',
            'p-0',
            'dark:text-gray-0 text-gray-900'
          )}
        >
          Become our{' '}
          <span
            className={clsx(
              'font-semibold',
              'dark:text-win32-cyan-alt dark:drop-shadow-[0_0_30px_rgba(71,235,235,0.25)]',
              'text-win32-blue drop-shadow-[0_0_30px_rgba(0,128,255,0.3)]'
            )}
          >
            sponsor
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
          Your support is crucial for maintaining our vibrant community and
          fostering innovation. Contribute to our growth and leave a lasting
          impact.
        </p>
      </div>

      <div
        className={clsx(
          'not-prose',
          'relative',
          'w-full',
          'mt-8 landing-sm:mt-12 landing-lg:mt-20',
          'mb-4 landing-sm:mb-12 landing-md:mb-6',
          'p-4 landing-md:p-10',
          'dark:bg-landing-sponsors-dark bg-landing-sponsors',
          'dark:bg-gray-800 bg-gray-50',
          'rounded-2xl landing-sm:rounded-3xl'
        )}
      >
        <div
          className={clsx(
            'grid',
            sponsors.length === 1 && 'grid-cols-1',
            sponsors.length === 2 && 'grid-cols-2',
            sponsors.length >= 3 && 'grid-cols-3',
            sponsors.length === 4 && 'landing-lg:grid-cols-4',
            sponsors.length === 5 && 'landing-lg:grid-cols-5',
            sponsors.length >= 6 && 'landing-lg:grid-cols-6',
            'place-items-center',
            'min-h-[160px] landing-lg:min-h-[80px]',
            'items-center',
            'justify-center'
          )}
        >
          {randomIcons.map(({ name, icon, variant }) => (
            <div
              key={name}
              className={clsx('w-full max-w-[187px]', 'overflow-hidden')}
            >
              <div
                className={clsx(
                  'animate-opacity-reveal',
                  'flex',
                  'items-center',
                  'justify-center',
                  'mx-auto',
                  variant === 'sm' && 'max-w-[105px]',
                  variant === 'md' && 'max-w-[140px]',
                  variant === 'lg' && 'max-w-[187px]'
                )}
              >
                {icon}
              </div>
            </div>
          ))}
        </div>
      </div>

      <LandingSectionCtaButtonAlt to={githubSponsorsUrl}>
        Sponsor us
      </LandingSectionCtaButtonAlt>
    </div>
  );
};

// change only one random icon in the list
const changeOneRandomIcon = (
  currentList: Sponsor,
  list: Sponsor,
  lastChangedIndex: number
): { newList: Sponsor; changedIndex: number } => {
  const newList = [...currentList];

  // pick randomIndex from the current list
  let randomIndex = Math.floor(Math.random() * newList.length);
  // if the randomIndex is the same as the last changed index, pick another
  // randomIndex
  while (randomIndex === lastChangedIndex) {
    randomIndex = Math.floor(Math.random() * newList.length);
  }

  // pick randomIcon from the list
  let randomIcon = list[Math.floor(Math.random() * list.length)];
  // check if the randomIcon is already in the current list
  let isExist = newList.find((item) => item.name === randomIcon.name);
  // if the randomIcon is already in the current list, pick another randomIcon
  while (isExist) {
    randomIcon = list[Math.floor(Math.random() * list.length)];
    isExist = newList.find((item) => item.name === randomIcon.name);
  }

  // change the randomIcon in the current list
  newList[randomIndex] = randomIcon;

  return { newList, changedIndex: randomIndex };
};
