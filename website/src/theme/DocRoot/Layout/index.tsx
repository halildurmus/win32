import { CommonFooter } from '@site/src/win32-theme/common-footer';
import { DocHeader } from '@site/src/win32-theme/doc-header';
import { DocSidebar } from '@site/src/win32-theme/doc-sidebar';
import type { Props } from '@theme/DocRoot/Layout';
import clsx from 'clsx';

export default function DocRootLayout({ children }: Props): JSX.Element {
  return (
    <>
      <DocHeader />
      <div
        className={clsx(
          'flex items-start justify-start',
          'w-full flex-1',
          'mx-auto'
        )}
      >
        <DocSidebar />
        {children}
      </div>
      <CommonFooter variant='blog' />
    </>
  );
}
