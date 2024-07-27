import {
  packageItems,
  platformItems,
  technologyItems,
  windowsFeatureItems,
} from '@site/src/assets/hero-animation';
import {
  LandingHeroBeamGlowSvg,
  LandingHeroBeamSvg,
} from '@site/src/win32-theme/icons/landing-hero-beam';
import { LandingHeroGridSvg } from '@site/src/win32-theme/icons/landing-hero-grid';
import { LandingHeroAnimationItem } from '@site/src/win32-theme/landing-hero-animation-item';
import clsx from 'clsx';
import { useInView } from 'framer-motion';
import React from 'react';
import { Win32Icon } from './icons/win32';

export const LandingHeroAnimation = React.memo(function HeroAnimation() {
  const ref = React.useRef<HTMLDivElement>(null);
  const inView = useInView(ref);
  const [activePlatform, setActivePlatform] = React.useState(0);
  const [activeTechnology, setActiveTechnology] = React.useState(0);
  const [activeWindowsFeature, setActiveWindowsFeature] = React.useState(0);
  const [activePackage, setActivePackage] = React.useState(0);

  React.useEffect(() => {
    if (inView) {
      let t1: NodeJS.Timeout | null = null;
      let t2: NodeJS.Timeout | null = null;
      let t3: NodeJS.Timeout | null = null;

      const interval = setInterval(() => {
        if (t1) clearTimeout(t1);
        if (t2) clearTimeout(t2);
        if (t3) clearTimeout(t3);

        setActivePlatform((prev) => (prev + 1) % platformItems.length);
        t1 = setTimeout(() => {
          setActiveTechnology((prev) => (prev + 1) % technologyItems.length);
        }, 2000);
        t2 = setTimeout(() => {
          setActiveWindowsFeature(
            (prev) => (prev + 1) % windowsFeatureItems.length
          );
        }, 4000);
        t3 = setTimeout(() => {
          setActivePackage((prev) => (prev + 1) % packageItems.length);
        }, 6000);
      }, 8000);

      return () => {
        clearInterval(interval);
        if (t1) clearTimeout(t1);
        if (t2) clearTimeout(t2);
        if (t3) clearTimeout(t3);
      };
    }
  }, [inView]);

  return (
    <div ref={ref} className={clsx()}>
      <div className={clsx('relative', 'w-min')}>
        <LandingHeroGridSvg
          className={clsx(
            'w-[404px]',
            'h-[360px]',
            'landing-lg:w-[690px]',
            'landing-lg:h-[480px]',
            'left-0',
            'top-0',
            'bottom-0',
            'right-0'
          )}
        />
        <div
          className={clsx(
            'absolute',
            'left-1/2 top-1/2',
            '-translate-x-1/2 -translate-y-1/2',
            'z-[1]',
            'p-7',
            'items-center',
            'content-center',
            'bg-white dark:bg-gray-700',
            'rounded-full',
            'ring-1 ring-gray-300 dark:ring-gray-600'
          )}
        >
          <Win32Icon
            className={clsx(
              'w-[72px] h-[72px]',
              'text-win32-blue dark:text-win32-cyan-alt',
              'rounded-full',
              'dark:drop-shadow-landing-hero-animation-center-glow'
            )}
          />
        </div>
        <div
          className={clsx(
            'hidden',
            'landing-lg:flex',
            'absolute',
            'left-0',
            'top-0',
            'bottom-0',
            'right-0',
            'w-full',
            'h-full',
            'py-12',
            'px-[89px]',
            'flex-col',
            'items-start',
            'justify-between'
          )}
        >
          <div
            className={clsx('w-full', 'flex', 'items-start', 'justify-between')}
          >
            <LandingHeroAnimationItem
              vertical="top"
              horizontal="left"
              section="platform"
              {...platformItems[activePlatform]}
              previousName={
                platformItems[
                  (activePlatform - 1 + platformItems.length) %
                    platformItems.length
                ].name ?? platformItems[activePlatform].name
              }
            />
            <LandingHeroAnimationItem
              vertical="top"
              horizontal="right"
              section="technology"
              {...technologyItems[activeTechnology]}
              previousName={
                technologyItems[
                  (activeTechnology - 1 + technologyItems.length) %
                    technologyItems.length
                ].name ?? technologyItems[activeTechnology].name
              }
            />
          </div>
          <div
            className={clsx(
              'mt-auto',
              'w-full',
              'flex',
              'items-end',
              'justify-between'
            )}
          >
            <LandingHeroAnimationItem
              vertical="bottom"
              horizontal="left"
              section="windows feature"
              {...windowsFeatureItems[activeWindowsFeature]}
              previousName={
                windowsFeatureItems[
                  (activeWindowsFeature - 1 + windowsFeatureItems.length) %
                    windowsFeatureItems.length
                ].name ?? windowsFeatureItems[activeWindowsFeature].name
              }
            />
            <LandingHeroAnimationItem
              vertical="bottom"
              horizontal="right"
              section="package"
              {...packageItems[activePackage]}
              previousName={
                packageItems[
                  (activePackage - 1 + packageItems.length) %
                    packageItems.length
                ].name ?? packageItems[activePackage].name
              }
            />
          </div>
        </div>
        <LandingHeroBeamSvg
          className={clsx(
            'z-[0]',
            'absolute',
            'left-1/2',
            'top-1/2',
            '-translate-x-1/2',
            'translate-y-0',
            'landing-lg:translate-y-16',
            'dark:animate-landing-hero-beam-line'
          )}
        />
        <LandingHeroBeamGlowSvg
          className={clsx(
            'z-[0]',
            'absolute',
            'left-1/2',
            'top-1/2',
            '-translate-x-1/2',
            'translate-y-0',
            'landing-lg:translate-y-16',
            'blur-sm',
            'dark:animate-landing-hero-beam-glow'
          )}
          style={{
            fillOpacity: 0,
            filter:
              'drop-shadow(rgba(71, 235, 235,0.1) 0px 0px 0px) drop-shadow(rgba(71, 235, 235,0.15) 0px 0px 10px)',
          }}
        />
        <div
          className={clsx(
            '-mt-6',
            'pt-6',
            'px-6',
            'overflow-hidden',
            'absolute',
            'left-1/2',
            '-translate-x-1/2',
            'top-1/2',
            'landing-lg:top-[calc(50%+64px)]',
            'translate-y-64',
            'z-[1]'
          )}
        >
          <div
            className={clsx(
              '-mt-px landing-lg:mt-0',
              'relative',
              'w-40',
              'h-px',
              'bg-landing-hero-beam-bottom-light dark:bg-landing-hero-beam-bottom',
              'animate-landing-hero-beam-bottom'
            )}
          />
        </div>
      </div>
    </div>
  );
});
