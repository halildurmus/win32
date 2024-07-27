import Link from '@docusaurus/Link';
import { translate } from '@docusaurus/Translate';
import {
  useHomePageRoute,
  useSidebarBreadcrumbs,
} from '@docusaurus/theme-common/internal';
import clsx from 'clsx';
import React, { useMemo } from 'react';
import { HiOutlineHome } from 'react-icons/hi2';
import { MdChevronRight } from 'react-icons/md';
import { useTWBreakpoints } from '../hooks/use-tw-breakpoints';

const hiddenBreadcrumbText = '...';

export const DocBreadcrumbs = () => {
  const breakpoints = useTWBreakpoints();
  const breadcrumbs = useSidebarBreadcrumbs();
  const homePageRoute = useHomePageRoute();

  if (!breadcrumbs) return null;

  const [breadcrumbList, renderDots] = useMemo(() => {
    const shouldRenderDotdotdot = breadcrumbs.length > 3 && !breakpoints.sm;
    return [
      (breadcrumbs as any[]).map((item, index, array) => ({
        ...item,
        hideOnMobile:
          shouldRenderDotdotdot && index > 0 && index < array.length - 2,
      })),
      shouldRenderDotdotdot,
    ];
  }, [breadcrumbs]);

  return (
    <nav
      className={clsx('win32-breadcrumbs', 'pb-6')}
      aria-label={translate({
        id: 'theme.docs.breadcrumbs.navAriaLabel',
        message: 'Breadcrumbs',
        description: 'The ARIA label for the breadcrumbs',
      })}
    >
      <ul
        className={clsx('breadcrumbs', 'flex flex-wrap items-center')}
        itemScope
        itemType="https://schema.org/BreadcrumbList"
      >
        {homePageRoute && (
          <li
            itemScope={true}
            itemProp="itemListElement"
            itemType="https://schema.org/ListItem"
          >
            <Link href="/docs" itemProp="item">
              <HiOutlineHome className="w-5 h-5 text-gray-400 dark:text-gray-500" />
              <span className="sr-only" itemProp="name">
                Documentation
              </span>
              <meta itemProp="position" content="1" />
            </Link>
          </li>
        )}
        {breadcrumbList.map((item, idx) => {
          const isLast = idx === breadcrumbs.length - 1;
          return (
            <React.Fragment key={idx}>
              <li
                className={clsx(
                  'flex-row flex-nowrap items-center',
                  item.hideOnMobile ? 'hidden' : 'flex'
                )}
                itemScope={true}
                itemProp="itemListElement"
                itemType="https://schema.org/ListItem"
              >
                <MdChevronRight
                  className={clsx('ml-1 mr-1 text-gray-400 dark:text-gray-500')}
                />
                {item.href && !isLast ? (
                  <Link
                    href={item.href}
                    className={clsx(
                      'text-base',
                      'text-gray-500 dark:text-gray-400',
                      'hover:text-win32-blue dark:hover:text-win32-cyan-alt',
                      'no-underline'
                    )}
                    itemProp="item"
                    itemID={item.href}
                  >
                    <span itemProp="name">{item.label}</span>
                  </Link>
                ) : (
                  <span
                    className={clsx(
                      isLast
                        ? 'text-gray-400 dark:text-gray-500'
                        : 'text-gray-500 dark:text-gray-400'
                    )}
                    itemProp="item"
                    itemID="#"
                  >
                    <span itemProp="name">{item.label}</span>
                  </span>
                )}
                <meta itemProp="position" content={String(idx + 2)} />
              </li>
              {idx === 0 && breadcrumbList.length > 1 && renderDots ? (
                <li className={clsx('flex flex-row flex-nowrap items-center')}>
                  <MdChevronRight className="ml-1 mr-1 text-gray-400 dark:text-gray-500" />
                  <div className="text-gray-500 dark:text-gray-400">
                    {hiddenBreadcrumbText}
                  </div>
                </li>
              ) : null}
            </React.Fragment>
          );
        })}
      </ul>
    </nav>
  );
};
