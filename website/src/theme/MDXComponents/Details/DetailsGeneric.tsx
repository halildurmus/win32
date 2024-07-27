import { Collapsible, useCollapsible } from '@docusaurus/theme-common';
import useBrokenLinks from '@docusaurus/useBrokenLinks';
import useIsBrowser from '@docusaurus/useIsBrowser';
import clsx from 'clsx';
import React, {
  useRef,
  useState,
  type ComponentProps,
  type ReactElement,
} from 'react';
import { TbTriangleInvertedFilled } from 'react-icons/tb';
import styles from './styles.module.css';

function isInSummary(node: HTMLElement | null): boolean {
  if (!node) return false;
  return node.tagName === 'SUMMARY' || isInSummary(node.parentElement);
}

function hasParent(node: HTMLElement | null, parent: HTMLElement): boolean {
  if (!node) return false;
  return node === parent || hasParent(node.parentElement, parent);
}

export type DetailsProps = {
  /**
   * Summary is provided as props, optionally including the wrapping
   * `<summary>` tag
   */
  summary?: ReactElement | string;
} & ComponentProps<'details'>;

/**
 * A mostly un-styled `<details>` element with smooth collapsing. Provides some
 * very lightweight styles, but you should bring your UI.
 */
export function Details({
  summary,
  children,
  ...props
}: DetailsProps): JSX.Element {
  useBrokenLinks().collectAnchor(props.id);

  const isBrowser = useIsBrowser();
  const detailsRef = useRef<HTMLDetailsElement>(null);

  const { collapsed, setCollapsed } = useCollapsible({
    initialState: !props.open,
  });
  // Use a separate state for the actual details prop, because it must be set
  // only after animation completes, otherwise close animations won't work
  const [open, setOpen] = useState(props.open);

  const summaryElement = React.isValidElement(summary) ? (
    <summary
      className={clsx(
        summary.props.className,
        'bg-gray-100 dark:bg-gray-700',
        '!p-2',
        'flex items-center',
        'gap-2',
        'before:hidden',
        '-mb-px',
        'border-b border-b-gray-300 dark:border-b-gray-700'
      )}
    >
      <div className={clsx('flex items-center justify-center')}>
        <TbTriangleInvertedFilled
          className={clsx(
            'w-2 h-2 ml-2 mr-2',
            'win32-details-triangle',
            'text-gray-500'
          )}
        />
      </div>
      <span className="text-gray-800 dark:text-gray-100 text-base">
        {summary.props.children}
      </span>
    </summary>
  ) : (
    <summary
      className={clsx(
        'bg-gray-100 dark:bg-gray-700',
        '!p-2',
        'flex items-center',
        'gap-2',
        'before:hidden',
        '-mb-px',
        'border-b border-b-gray-300 dark:border-b-gray-700'
      )}
    >
      <div className={clsx('flex items-center justify-center')}>
        <TbTriangleInvertedFilled
          className={clsx(
            'w-2 h-2 ml-2 mr-2',
            'win32-details-triangle',
            'text-gray-500'
          )}
        />
      </div>
      <span className="text-gray-800 dark:text-gray-100 text-base">
        {summary ?? 'Details'}
      </span>
    </summary>
  );

  return (
    // eslint-disable-next-line jsx-a11y/click-events-have-key-events, jsx-a11y/no-noninteractive-element-interactions
    <details
      {...props}
      ref={detailsRef}
      open={open}
      data-collapsed={collapsed}
      className={clsx(
        styles.details,
        isBrowser && styles.isBrowser,
        props.className
      )}
      onMouseDown={(e) => {
        const target = e.target as HTMLElement;
        // Prevent a double-click to highlight summary text
        if (isInSummary(target) && e.detail > 1) {
          e.preventDefault();
        }
      }}
      onClick={(e) => {
        e.stopPropagation(); // For isolation of multiple nested details/summary
        const target = e.target as HTMLElement;
        const shouldToggle =
          isInSummary(target) && hasParent(target, detailsRef.current!);
        if (!shouldToggle) return;

        e.preventDefault();
        if (collapsed) {
          setCollapsed(false);
          setOpen(true);
        } else {
          setCollapsed(true);
          // Don't do this, it breaks close animation!
          // setOpen(false);
        }
      }}
    >
      {summaryElement}

      <Collapsible
        lazy={false} // Content might matter for SEO in this case
        collapsed={collapsed}
        disableSSRStyle // Allows component to work fine even with JS disabled!
        onCollapseTransitionEnd={(newCollapsed) => {
          setCollapsed(newCollapsed);
          setOpen(!newCollapsed);
        }}
      >
        <div className={styles.collapsibleContent}>{children}</div>
      </Collapsible>
    </details>
  );
}
