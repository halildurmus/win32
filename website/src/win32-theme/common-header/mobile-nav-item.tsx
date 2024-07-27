import Link from '@docusaurus/Link';
import clsx from 'clsx';
import React, { useEffect, useState } from 'react';
import { FaExternalLinkAlt } from 'react-icons/fa';
import { TbCircleChevronDown, TbCircleChevronRight } from 'react-icons/tb';

type MobileNavItemProps = {
  label: string;
  href?: string;
  open?: boolean;
  component?: React.FC;
  badge?: React.ComponentType<React.SVGProps<SVGSVGElement>>;
};

export const MobileNavItem: React.FC<MobileNavItemProps> = ({
  label,
  href,
  component,
  open,
  badge: Badge,
}) => {
  const isExternalLink = href?.startsWith('http');
  const [theme, setTheme] = useState(null);

  const Component = component ?? Link;
  const isCollapsable = open !== undefined && href === undefined;

  useEffect(() => {
    const currentTheme = document
      .querySelector('html')
      .getAttribute('data-theme');
    setTheme(currentTheme);
  }, []);

  return (
    <Component
      className={clsx(
        'w-full',
        'flex justify-between items-center',
        'p-4',
        'no-underline',
        !open && 'border-b border-gray-200 dark:border-gray-700'
      )}
      {...(href ? { to: href } : {})}
    >
      <div className={clsx('text-gray-800 dark:text-white font-semibold')}>
        <div className={clsx('flex items-center gap-2')}>
          <div>{label}</div>
          {isExternalLink && <FaExternalLinkAlt className={clsx('w-3 h-3')} />}
          {Badge && <Badge />}
        </div>
      </div>
      {isCollapsable && (
        <div
          className={clsx(
            'w-5 h-5',
            'flex justify-center items-center',
            'text-gray-500'
          )}
        >
          {open ? <TbCircleChevronDown /> : <TbCircleChevronRight />}
        </div>
      )}
    </Component>
  );
};
