import {
  PageMetadata,
  useCurrentSidebarCategory,
} from '@docusaurus/theme-common';
import { useDocsVersion } from '@docusaurus/theme-common/internal';
import useBaseUrl from '@docusaurus/useBaseUrl';
import { DocBreadcrumbs } from '@site/src/win32-theme/doc-breadcrumbs';
import DocCardList from '@theme/DocCardList';
import DocPaginator from '@theme/DocPaginator';
import clsx from 'clsx';

function DocCategoryGeneratedIndexPageMetadata({ categoryGeneratedIndex }) {
  return (
    <PageMetadata
      title={categoryGeneratedIndex.title}
      description={categoryGeneratedIndex.description}
      keywords={categoryGeneratedIndex.keywords}
      image={useBaseUrl(categoryGeneratedIndex.image)}
    />
  );
}

function DocCategoryGeneratedIndexPageContent({ categoryGeneratedIndex }) {
  const category = useCurrentSidebarCategory();
  const { label } = useDocsVersion();
  return (
    <>
      <div
        className={clsx(
          'flex flex-1 flex-col',
          'items-center justify-start',
          'px-4 sm:px-0 py-4 sm:py-14',
          'w-full'
        )}
      >
        <div className={clsx('max-w-screen-content w-full')}>
          <div className={clsx('flex flex-col', 'mb-8')}>
            <DocBreadcrumbs />
          </div>
          <div className="win32-prose mb-16">
            <header>
              <h1>{categoryGeneratedIndex.title}</h1>
              {categoryGeneratedIndex.description && (
                <p
                  className="mb-8"
                  // biome-ignore lint/security/noDangerouslySetInnerHtml: explicitly disabled
                  dangerouslySetInnerHTML={{
                    __html: categoryGeneratedIndex.description,
                  }}
                />
              )}
            </header>
            <article
              className={clsx(
                'grid grid-cols-1 sm:grid-cols-2',
                'gap-2 sm:gap-4 2xl:gap-8',
                'not-prose'
              )}
            >
              <DocCardList items={category.items} />
            </article>
          </div>
        </div>
        <div className={clsx('max-w-screen-content', 'w-full')}>
          <DocPaginator
            previous={categoryGeneratedIndex.navigation.previous}
            next={categoryGeneratedIndex.navigation.next}
          />
        </div>
      </div>
      <div
        className={clsx(
          'hidden xl:block',
          'w-full',
          'sticky right-0 top-[65px]',
          'max-w-[280px]',
          'overflow-auto',
          'h-[calc(100vh-65px)]',
          'pl-3',
          'pr-3',
          'py-12',
          'border-l dark:border-l-gray-700 border-l-gray-100',
          'invisible'
        )}
      />
    </>
  );
}

export default function DocCategoryGeneratedIndexPage(props) {
  return (
    <>
      <DocCategoryGeneratedIndexPageMetadata {...props} />
      <DocCategoryGeneratedIndexPageContent {...props} />
    </>
  );
}
