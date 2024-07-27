import {
  HtmlClassNameProvider,
  ThemeClassNames,
} from '@docusaurus/theme-common';
import {
  DocsSidebarProvider,
  useDocRootMetadata,
} from '@docusaurus/theme-common/internal';
import type { Props } from '@theme/DocRoot';
import DocRootLayout from '@theme/DocRoot/Layout';
import NotFoundContent from '@theme/NotFound/Content';
import clsx from 'clsx';

export default function DocRoot(props: Props): JSX.Element {
  const currentDocRouteMetadata = useDocRootMetadata(props);
  // We only render the not found content to avoid a double layout
  // see https://github.com/facebook/docusaurus/pull/7966#pullrequestreview-1077276692
  if (!currentDocRouteMetadata) return <NotFoundContent />;

  const { docElement, sidebarName, sidebarItems } = currentDocRouteMetadata;
  return (
    <HtmlClassNameProvider
      className={clsx(
        ThemeClassNames.wrapper.docsPages,
        ThemeClassNames.page.docsDocPage
      )}
    >
      <DocsSidebarProvider name={sidebarName} items={sidebarItems}>
        <DocRootLayout>{docElement}</DocRootLayout>
      </DocsSidebarProvider>
    </HtmlClassNameProvider>
  );
}
