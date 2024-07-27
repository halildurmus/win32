declare module '@site/src/components/changelog/ChangelogPaginator';
declare module '@site/src/components/changelog/ChangelogItem';
declare module '@site/src/components/changelog/ChangelogItem/Header';
declare module '@site/src/components/changelog/ChangelogItem/Header/Author';
declare module '@site/src/components/changelog/ChangelogItem/Header/Authors';
declare module '@site/src/components/changelog/ChangelogList';
declare module '@site/src/components/changelog/ChangelogList/Header';

declare module '@site/src/components/changelog/Icon/Expand' {
  import type { ComponentProps } from 'react';

  export interface Props extends ComponentProps<'svg'> {
    expanded?: boolean;
  }

  export default function IconExpand(props: Props): JSX.Element;
}
