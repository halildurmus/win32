import { DocProvider } from '@docusaurus/plugin-content-docs/client';
import { HtmlClassNameProvider } from '@docusaurus/theme-common';
import type { Props } from '@theme/DocItem';
import DocItemLayout from '@theme/DocItem/Layout';
import DocItemMetadata from '@theme/DocItem/Metadata';

export default function DocItem(props: Props) {
  const docHtmlClassName = `docs-doc-id-${props.content.metadata.id}`;
  const MDXComponent = props.content;
  return (
    <DocProvider content={props.content}>
      <HtmlClassNameProvider className={docHtmlClassName}>
        <DocItemMetadata />
        <DocItemLayout>
          <MDXComponent />
        </DocItemLayout>
      </HtmlClassNameProvider>
    </DocProvider>
  );
}
