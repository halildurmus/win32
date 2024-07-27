import Link from '@docusaurus/Link';
import { LandingRainbowButton } from '@site/src/win32-theme/landing-rainbow-button';
import clsx from 'clsx';
import React from 'react';
import { FaArrowRightLong } from 'react-icons/fa6';

const text = 'TODO title';
const description = 'TODO description';
const image = '/img/social.png';
const imageAlt = 'win32 app screenshot';
const href = 'https://win32.pub';

export const BannerSidebar = ({ showBanner }) => {
  React.useEffect(() => {
    if (
      typeof window !== 'undefined' &&
      typeof window.gtag !== 'undefined' &&
      showBanner
    ) {
      window.gtag('event', 'view_banner', {
        banner_name: 'banner-sidebar',
        banner_text: text,
        banner_description: description,
        banner_image: image,
      });
    }
  }, [showBanner]);

  return (
    <div
      className={clsx(
        'flex',
        'flex-col',
        'gap-6',
        'py-6',
        'px-4',
        'rounded-2xl',
        'bg-banner-examples-sider-purple',
        'not-prose'
      )}
    >
      <Link
        to={href}
        target="_blank"
        rel="noopener noreferrer"
        className={clsx(
          'flex',
          'w-full h-auto xl:h-[152px]',
          'flex-shrink-0',
          'rounded-md',
          'overflow-hidden'
        )}
      >
        <img src={image} alt={imageAlt} loading="lazy" />
      </Link>

      <h2 className={clsx('text-2xl font-semibold', 'text-gray-0')}>{text}</h2>
      <p className={clsx('text-base', 'text-gray-100')}>{description}</p>

      <LandingRainbowButton
        className={clsx('w-max')}
        buttonClassname={clsx('!px-4', '!py-2')}
        href={href}
        target="_blank"
        rel="noopener noreferrer"
      >
        <div className={clsx('text-gray-900', 'text-base', 'font-bold')}>
          Try online
        </div>
        <FaArrowRightLong className={clsx('ml-2 w-4 h-4')} />
      </LandingRainbowButton>
    </div>
  );
};
