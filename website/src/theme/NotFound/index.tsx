import { translate } from '@docusaurus/Translate';
import { CommonLayout } from '../../win32-theme/common-layout';

import NotFoundContent from '@theme/NotFound/Content';

export default function Index(): JSX.Element {
  const title = translate({
    id: 'theme.NotFound.title',
    message: 'Page Not Found',
  });
  return (
    <CommonLayout title={title}>
      <NotFoundContent />
    </CommonLayout>
  );
}
