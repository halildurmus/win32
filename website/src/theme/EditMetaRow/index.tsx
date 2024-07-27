import type { Props } from '@theme/EditMetaRow';
import EditThisPage from '@theme/EditThisPage';
import LastUpdated from '@theme/LastUpdated';
import clsx from 'clsx';

export default function EditMetaRow({
  className,
  editUrl,
  lastUpdatedAt,
  lastUpdatedBy,
}: Props): JSX.Element {
  return (
    <div className={clsx(className)}>
      <div>{editUrl && <EditThisPage editUrl={editUrl} />}</div>
      <div className={clsx('text-sm mt-1 md:text-right')}>
        {(lastUpdatedAt || lastUpdatedBy) && (
          <LastUpdated
            lastUpdatedAt={lastUpdatedAt}
            lastUpdatedBy={lastUpdatedBy}
          />
        )}
      </div>
    </div>
  );
}
