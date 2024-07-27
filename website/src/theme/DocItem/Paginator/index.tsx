import { useDoc } from '@docusaurus/theme-common/internal';
import DocPaginator from '@theme/DocPaginator';

export default function DocItemPaginator(): JSX.Element {
  const { metadata } = useDoc();
  return <DocPaginator previous={metadata.previous} next={metadata.next} />;
}
