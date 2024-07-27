import { CommonLayout } from '@site/src/win32-theme/common-layout';
import type { Props } from '@theme/Layout';

export default function Layout(props: Props): JSX.Element {
  return <CommonLayout {...props} />;
}
