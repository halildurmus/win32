import React, { type ReactNode } from "react";
import clsx from "clsx";
import { useTabs } from "@docusaurus/theme-common/internal";
import type { Props } from "@theme/TabItem";

function TabItemPanel({
  children,
  className,
  hidden,
}: {
  children: ReactNode;
  className?: string;
  hidden?: boolean;
}) {
  return (
    <div role="tabpanel" className={clsx(className)} {...{ hidden }}>
      {children}
    </div>
  );
}

export default function TabItem({
  children,
  className,
  value,
}: Props): ReactNode {
  const { selectedValue, lazy } = useTabs();
  const isSelected = value === selectedValue;

  // TODO Docusaurus v4: use <Activity> ?
  if (!isSelected && lazy) return null;

  return (
    <TabItemPanel className={className} hidden={!isSelected}>
      {children}
    </TabItemPanel>
  );
}
