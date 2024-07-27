import Link from '@docusaurus/Link';
import Translate from '@docusaurus/Translate';
import type { Props } from '@theme/EditThisPage';
import IconEdit from '@theme/Icon/Edit';
import clsx from 'clsx';

export default function EditThisPage({ editUrl }: Props): JSX.Element {
  return (
    <Link
      to={editUrl}
      className={clsx(
        'flex flex-row',
        'text-gray-900 dark:text-gray-0',
        'hover:text-win32-blue dark:hover:text-win32-cyan-alt',
        'no-underline'
      )}
    >
      <IconEdit />
      <Translate
        id="theme.common.editThisPage"
        description="The link label to edit the current page"
      >
        Edit this page
      </Translate>
    </Link>
  );
}
