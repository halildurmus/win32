import { Details as DetailsGeneric } from './DetailsGeneric';
import type { Props } from '@theme/MDXComponents/Details';
import clsx from 'clsx';
import React, { type ComponentProps, type ReactElement } from 'react';

export default function MDXDetails(props: Props): JSX.Element {
  const items = React.Children.toArray(props.children);
  // Split summary item from the rest to pass it as a separate prop to the
  // Details theme component
  const summary = items.find(
    (item): item is ReactElement<ComponentProps<'summary'>> =>
      React.isValidElement(item) && item.type === 'summary'
  );
  const children = <>{items.filter((item) => item !== summary)}</>;

  return (
    <DetailsGeneric
      {...props}
      className={clsx(
        props.className,
        'win32-details',
        'border dark:border-gray-700 border-gray-300',
        'rounded-lg',
        'overflow-hidden',
        'mb-4',
        'win32-wider-container'
      )}
      summary={summary}
    >
      <div className={clsx('p-4')}>{children}</div>
    </DetailsGeneric>
  );
}
