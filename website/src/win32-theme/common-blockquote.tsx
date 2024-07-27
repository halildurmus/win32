import clsx from 'clsx';
import React from 'react';

export const Blockquote = ({
  className,
  ...props
}: React.ComponentProps<'blockquote'>) => (
  <blockquote className={clsx('win32-wider-container', className)} {...props} />
);
