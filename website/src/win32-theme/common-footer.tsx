import Link from '@docusaurus/Link';
import { footerItems, githubSponsorsUrl, socialLinks } from '@site/src/config';
import clsx from 'clsx';
import { FaExternalLinkAlt } from 'react-icons/fa';
import { GitHubSponsorIcon } from './icons/popover';
import { Win32Logotype } from './icons/win32';

export type Props = {
  variant?: 'landing' | 'blog';
};

export const CommonFooter = ({ variant = 'landing' }: Props) => {
  const logo = (
    <Link to="/">
      <Win32Logotype />
    </Link>
  );

  const heartIcon = (
    <svg
      width="24"
      height="24"
      viewBox="0 0 24 24"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
      className="text-win32-red"
    >
      <path
        d="M5.415 12.05a.5.5 0 0 0-.028-.038 4 4 0 0 1 6.225-5.026.5.5 0 0 0 .777 0 4 4 0 0 1 6.225 5.026.49.49 0 0 0-.03.039 1 1 0 0 1-.112.14l-5.75 6a1 1 0 0 1-1.444 0l-5.75-6a.995.995 0 0 1-.113-.14Z"
        fill="url(#heart-a)"
        stroke="url(#heart-b)"
        strokeLinejoin="round"
      ></path>
      <defs>
        <linearGradient
          id="heart-a"
          x1="12"
          y1="5"
          x2="12"
          y2="19"
          gradientUnits="userSpaceOnUse"
        >
          <stop stopColor="#F02E65" stopOpacity="0.75"></stop>
          <stop offset="1" stopColor="#F02E65" stopOpacity="0.2"></stop>
        </linearGradient>
        <linearGradient
          id="heart-b"
          x1="12"
          y1="5"
          x2="12"
          y2="19"
          gradientUnits="userSpaceOnUse"
        >
          <stop stopColor="#F02E65" stopOpacity="0.5"></stop>
          <stop offset="1" stopColor="#F02E65" stopOpacity="0.25"></stop>
        </linearGradient>
      </defs>
    </svg>
  );

  const copyrightText = (
    <div className="flex flex-col mb-4">
      <span
        className={clsx(
          'text-sm',
          variant === 'landing' && 'text-gray-600 dark:text-gray-400',
          variant === 'blog' && 'text-win32-react-5 dark:text-win32-react-4'
        )}
      >
        Copyright © {new Date().getFullYear()} • Halil Durmus
      </span>
      <div className="flex flex-row gap-1 items-center">
        <span
          className={clsx(
            'text-sm',
            variant === 'landing' && 'text-gray-600 dark:text-gray-400',
            variant === 'blog' && 'text-win32-react-5 dark:text-win32-react-4'
          )}
        >
          Built with
        </span>
        {heartIcon}
      </div>
    </div>
  );

  const SocialLinks = (
    <div className="block landing-md:mb-3 landing-lg:mb-0">
      <div className={clsx('flex gap-4 items-center justify-start')}>
        {socialLinks.map(({ href, icon: Icon }) => (
          <Link key={href} href={href}>
            <Icon
              className={clsx(
                'w-6 h-6',
                'text-gray-500 dark:text-gray-400',
                'hover:text-gray-800 dark:hover:text-gray-300'
              )}
            />
          </Link>
        ))}
      </div>
    </div>
  );

  const links = (
    <div className="order-1 landing-md:order-2">
      <div
        className={clsx(
          'grid grid-cols-2 widening-start:grid-cols-3 gap-6',
          'ml-auto landing-md:ml-auto',
          'mr-auto landing-md:mr-0 landing-lg:mr-auto'
        )}
      >
        {footerItems.map((menu) => (
          <div className={clsx('flex flex-col gap-4')} key={menu.label}>
            <div
              className={clsx(
                'text-sm',
                'leading-6',
                'font-semibold',
                variant === 'landing' && 'text-gray-900 dark:text-gray-0',
                variant === 'blog' && 'text-win32-react-5 dark:text-white'
              )}
            >
              {menu.label}
            </div>
            <div className={clsx('flex', 'flex-col', 'gap-2')}>
              {menu.items.map((item) => {
                const isExternalLink = item.href.startsWith('http');
                const Badge = item.badge;
                return (
                  <Link
                    key={item.label}
                    href={item.href}
                    {...(isExternalLink
                      ? {
                          target: '_blank',
                          rel: 'noopener noreferrer',
                        }
                      : {})}
                    className={clsx(
                      'text-sm',
                      'leading-5',
                      'hover:no-underline',
                      variant === 'landing' &&
                        'text-gray-600 dark:text-gray-400',
                      variant === 'blog' &&
                        'text-win32-react-5 dark:text-win32-react-4',
                      'hover:text-gray-800 dark:hover:text-gray-300'
                    )}
                  >
                    <div className={clsx('flex', 'gap-2', 'items-center')}>
                      {item.label}
                      {isExternalLink && (
                        <FaExternalLinkAlt className={clsx('w-3 h-3')} />
                      )}
                      {Badge && <Badge />}
                    </div>
                  </Link>
                );
              })}
            </div>
          </div>
        ))}
      </div>
    </div>
  );

  const sponsorButton = (
    <Link
      to={githubSponsorsUrl}
      className={clsx(
        'flex items-center justify-center',
        'px-3 py-1.5',
        'rounded-lg',
        'text-sm',
        'text-[#24292f] dark:text-[#c9d1d9]',
        'hover:text-[#24292f] dark:text-[#c9d1d9]',
        'bg-[#f6f8fa] dark:bg-[#21262d]',
        'hover:bg-[#eef1f4] dark:hover:bg-[#292e36]',
        'border border-[#d0d7de] dark:border-[#30363d]',
        'transition duration-75 ease-in-out',
        'no-underline'
      )}
    >
      <GitHubSponsorIcon className={clsx('size-4')} />
      <span className={clsx('ml-2')}>Sponsor</span>
    </Link>
  );

  return (
    <footer className={clsx('w-full')}>
      <div
        className={clsx(
          'border-t border-t-solid',
          variant === 'landing' && 'border-t-gray-100 dark:border-t-gray-700',
          variant === 'blog' &&
            'border-t-win32-react-3 dark:border-t-win32-react-7',
          variant === 'landing' && 'dark:bg-footer-landing-dark-bg',
          variant === 'blog' &&
            'bg-footer-blog-light-bg dark:bg-footer-blog-dark-bg'
        )}
      >
        <div
          className={clsx(
            'px-4 landing-sm:px-8 landing-lg:px-12',
            'py-6 landing-lg:pt-8 landing-lg:pb-12',
            'mx-auto grid gap-8',
            'landing-sm:max-w-screen-landing-sm',
            'landing-md:max-w-screen-landing-md',
            'landing-lg:max-w-screen-landing-lg',
            'landing-md:grid-cols-[280px,1fr]',
            'landing-lg:grid-cols-[2fr,3fr,150px]'
          )}
        >
          <div
            className={clsx(
              'flex flex-col gap-4',
              'order-3 landing-md:order-1',
              'items-center landing-md:items-start'
            )}
          >
            {logo}
            {copyrightText}
            {SocialLinks}
            <div className={clsx('hidden landing-md:block landing-lg:hidden')}>
              {sponsorButton}
            </div>
          </div>
          {links}
          <div
            className={clsx(
              'flex justify-center',
              'landing-md:hidden landing-lg:block',
              'order-2 landing-md:order-3'
            )}
          >
            <div
              className={clsx(
                'flex flex-row landing-lg:flex-col',
                'gap-4 items-end'
              )}
            >
              {sponsorButton}
            </div>
          </div>
        </div>
      </div>
    </footer>
  );
};
