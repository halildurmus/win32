import { CommonDrawer } from '@site/src/win32-theme/common-drawer';
import Tag from '@theme/Tag';
import clsx from 'clsx';
import React from 'react';
import { TbCircleChevronDown, TbFilter } from 'react-icons/tb';
import { titleCase } from 'title-case';

export default function TagsList({ tags }) {
  const [collapsed, setCollapsed] = React.useState(true);
  const priorityTags = [
    'win32',
    'com',
    'dart',
    'flutter',
    'tutorial',
    'comparison',
  ];

  const sortedTags = (tags ?? []).sort((a, b) => {
    const aIndex = priorityTags.indexOf(a.label);
    const bIndex = priorityTags.indexOf(b.label);
    if (aIndex === -1) return bIndex === -1 ? 0 : 1;
    return bIndex === -1 ? -1 : aIndex - bIndex;
  });

  return (
    <>
      <Desktop
        collapsed={collapsed}
        tags={sortedTags}
        className={clsx('hidden blog-lg:flex')}
        onShowMoreClick={(collapsed) => setCollapsed(collapsed)}
      />
      <Mobile tags={sortedTags} className={clsx('block blog-lg:hidden')} />
    </>
  );
}

const Desktop = ({
  tags,
  collapsed,
  className,
  onShowMoreClick,
}: {
  tags: any;
  collapsed: boolean;
  className?: string;
  onShowMoreClick: (collapsed: boolean) => void;
}) => {
  return (
    <div
      className={clsx(
        'bg-win32-react-1 dark:bg-win32-react-dark-code',
        'justify-between',
        'items-start',
        'p-5',
        collapsed && 'rounded-full',
        !collapsed && 'rounded-3xl',
        'not-prose',
        className
      )}
    >
      <ul
        className={clsx(
          'overflow-hidden',
          'flex-1',
          !collapsed && 'h-24',
          collapsed && 'h-8',
          'm-0 p-0',
          'mr-16',
          'transition-all duration-300 ease-in-out'
        )}
      >
        {tags.map((tag) => (
          <li
            className={clsx('inline-flex', 'm-1', 'mr-3')}
            key={tag.permalink}
          >
            <Tag {...tag} label={mapLabel(tag.label)} />
          </li>
        ))}
      </ul>
      <button
        type="button"
        onClick={() => onShowMoreClick(!collapsed)}
        className={clsx(
          'appearance-none',
          'flex',
          'items-center',
          'justify-center',
          'gap-1',
          'cursor-pointer',
          'flex-shrink',
          'no-underline hover:no-underline',
          'text-xs',
          'rounded-full',
          'py-1',
          'pl-3',
          'pr-1',
          'mt-1',
          'text-win32-react-8 dark:text-win32-react-3',
          'bg-win32-react-3 dark:bg-win32-react-7'
        )}
      >
        Show More{' '}
        <TbCircleChevronDown
          className={clsx(
            'w-4 h-4',
            'opacity-30',
            'transition-transform duration-200 ease-in-out',
            {
              'rotate-180 transform': !collapsed,
            }
          )}
        />
      </button>
    </div>
  );
};

const Mobile = ({ tags, className }: { tags: any; className?: string }) => {
  const [isFilterDrawerOpen, setIsFilterDrawerOpen] = React.useState(false);

  return (
    <>
      <div className={clsx(className)}>
        <button
          type="button"
          onClick={() => setIsFilterDrawerOpen(true)}
          className={clsx(
            'flex',
            'items-center',
            'justify-center',
            'gap-2',
            'rounded-full',
            'px-6 py-3',
            'bg-win32-react-3 dark:bg-win32-react-6',
            'text-win32-react-8 dark:text-white'
          )}
        >
          <TbFilter className="w-5 h-5" />
          <div>Filter Tags</div>
        </button>
      </div>
      <CommonDrawer
        onClose={() => setIsFilterDrawerOpen(false)}
        open={isFilterDrawerOpen}
        title="Filter Tags"
        variant="blog"
      >
        <ul
          className={clsx('overflow-hidden', 'flex', 'flex-col', 'gap-6')}
          style={{
            margin: 0,
            padding: 0,
          }}
        >
          {tags.map((tag) => (
            <li className={clsx('flex')} key={tag.permalink}>
              <Tag
                {...tag}
                label={mapLabel(tag.label)}
                variant="inverted"
                size="medium"
              />
            </li>
          ))}
        </ul>
      </CommonDrawer>
    </>
  );
};

const mapLabel = (label) => {
  let newLabel = `${label.replace(/-/g, ' ')}`;

  const replace = [
    ['typescript', 'TypeScript'],
    ['javascript', 'JavaScript'],
    ['chakra ui', 'Chakra UI'],
    ['material ui', 'Material UI'],
    ['nextjs', 'Next.js'],
    ['nestjs', 'NestJS'],
    ['css', 'CSS'],
  ];

  replace.forEach((element) => {
    newLabel = newLabel.replace(element[0], element[1]);
  });

  return titleCase(newLabel);
};
