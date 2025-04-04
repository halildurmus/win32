import { useDoc } from '@docusaurus/plugin-content-docs/client';
import DocPaginator from '@theme/DocPaginator';

export default function DocItemPaginator(): JSX.Element {
  const { metadata } = useDoc();
  return <DocPaginator previous={metadata.previous} next={metadata.next} />;
}
