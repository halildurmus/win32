import Link from '@docusaurus/Link';
import isInternalUrl from '@docusaurus/isInternalUrl';
import type { PropSidebarItemCategory } from '@docusaurus/plugin-content-docs';
import { useDocById } from '@docusaurus/theme-common/internal';
import clsx from 'clsx';

/**
 * Best effort to assign a link to a sidebar category. If the category doesn't
 * have a link itself, we link to the first sub item with a link.
 */
function findFirstCategoryLink(
  item: PropSidebarItemCategory
): string | undefined {
  if (item.href) return item.href;

  for (const subItem of item.items) {
    if (subItem.type === 'link') return subItem.href;

    if (subItem.type === 'category') {
      const categoryLink = findFirstCategoryLink(subItem);
      if (categoryLink) return categoryLink;
    }

    if (subItem.type != 'html') {
      throw new Error(
        `Unexpected category item type for ${JSON.stringify(subItem)}`
      );
    }
  }

  return undefined;
}

function CardContainer({ href, children }) {
  return (
    <Link
      href={href}
      className={clsx(
        'no-underline',
        'rounded-lg',
        'dark:bg-gray-800 bg-gray-50',
        'p-4',
        'flex flex-col',
        'gap-2 sm:gap-4 2xl:gap-6',
        'hover:no-underline'
      )}
    >
      {children}
    </Link>
  );
}

function CardLayout({ href, icon, title, description }) {
  return (
    <CardContainer href={href}>
      <h2
        className={clsx(
          'line-clamp-1',
          'text-xs sm:text-base 2xl:text-xl',
          'dark:text-gray-200 text-gray-900',
          'font-semibold',
          'm-0'
        )}
        title={title}
      >
        <span className="mr-2">{icon}</span>
        <span>{title}</span>
      </h2>
      {description && (
        <p
          className={clsx(
            'line-clamp-3',
            'm-0',
            'text-xs sm:text-sm 2xl:text-lg',
            'dark:text-gray-400 text-gray-700',
            'font-normal',
            'win32-prose'
          )}
          title={description}
        >
          {description}
        </p>
      )}
    </CardContainer>
  );
}

function CardCategory({ item }) {
  const href = findFirstCategoryLink(item);
  // Unexpected: categories that don't have a link have been filtered upfront
  if (!href) return null;
  return (
    <CardLayout
      href={href}
      icon="🗃️"
      title={item.label}
      description={item.description ?? `${item.items.length} items`}
    />
  );
}

function CardLink({ item }) {
  const icon = isInternalUrl(item.href) ? '📄️' : '🔗';
  const doc = useDocById(item.docId ?? undefined);
  return (
    <CardLayout
      href={item.href}
      icon={icon}
      title={item.label}
      description={item.description ?? doc?.description}
    />
  );
}

export default function DocCard ({ item }) {
  switch (item.type) {
    case 'link':
      return <CardLink item={item} />;
    case 'category':
      return <CardCategory item={item} />;
    default:
      throw new Error(`unknown item type ${JSON.stringify(item)}`);
  }
};
