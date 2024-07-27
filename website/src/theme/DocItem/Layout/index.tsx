import { useDoc } from '@docusaurus/theme-common/internal';
import { FULL_WIDTH_TABLE_VARIABLE_NAME } from '@site/src/win32-theme/common-table';
import { DocBreadcrumbs } from '@site/src/win32-theme/doc-breadcrumbs';
import DocItemContent from '@theme/DocItem/Content';
import DocItemFooter from '@theme/DocItem/Footer';
import DocItemPaginator from '@theme/DocItem/Paginator';
import clsx from 'clsx';
import React from 'react';
import { SourceCodeBadge } from './doc-sourcecode-badge';
import { DocTOC } from './doc-toc';
import { DocTOCMobile } from './doc-toc-mobile';

export default function DocItemLayout({ children }) {
  const {
    frontMatter: { source },
  } = useDoc();
  const containerRef = React.useRef<HTMLDivElement>(null);

  React.useLayoutEffect(() => {
    const containerElement = containerRef.current;
    if (containerElement) {
      const width = containerElement.getBoundingClientRect().width;
      containerElement.style.setProperty(
        `--${FULL_WIDTH_TABLE_VARIABLE_NAME}`,
        `${width}px`
      );
    }

    // on resize, recompute the full width table variable
    const handleResize = () => {
      const width = containerElement.getBoundingClientRect().width;
      containerElement.style.setProperty(
        `--${FULL_WIDTH_TABLE_VARIABLE_NAME}`,
        `${width}px`
      );
    };

    window.addEventListener('resize', handleResize);

    return () => {
      window.removeEventListener('resize', handleResize);
    };
  }, [containerRef]);

  return (
    <>
      <div
        ref={containerRef}
        className={clsx(
          'flex-1',
          'flex flex-col',
          'items-center justify-start',
          'px-4 sm:px-0 py-4 sm:py-14',
          'relative',
          'w-full'
        )}
      >
        <div className={clsx('max-w-screen-content w-full')}>
          <div className={clsx('flex flex-col', 'mb-6')}>
            <DocBreadcrumbs />
            <div className={clsx('flex flex-row gap-2 items-center')}>
              {source && <SourceCodeBadge path={source} />}
            </div>
          </div>
          <DocTOCMobile />
          <div className={clsx('win32-prose')}>
            <DocItemContent>{children}</DocItemContent>
          </div>
          <DocItemFooter />
          <DocItemPaginator />
        </div>
      </div>
      <DocTOC />
    </>
  );
}
