import { cloneElement, JSX } from "react";
import clsx from "clsx";
import { ThemeClassNames } from "@docusaurus/theme-common";
import {
  useScrollPositionBlocker,
  useTabsContextValue,
  useTabs,
  sanitizeTabsChildren,
  TabsProvider,
} from "@docusaurus/theme-common/internal";
import useIsBrowser from "@docusaurus/useIsBrowser";
import type { Props } from "@theme/Tabs";

function TabList({
  className,
  block,
  selectedValue,
  selectValue,
  tabValues,
  wrapContent = true,
  smallTabs = false,
}) {
  const tabRefs: any[] = [];
  const { blockElementScrollPositionUntilNextRender } =
    useScrollPositionBlocker();
  const handleTabChange = (event: { currentTarget: any }) => {
    const newTab = event.currentTarget;
    const newTabIndex = tabRefs.indexOf(newTab);
    const newTabValue = tabValues[newTabIndex].value;
    if (newTabValue !== selectedValue) {
      blockElementScrollPositionUntilNextRender(newTab);
      selectValue(newTabValue);
    }
  };
  const handleKeydown = (event: { key: any; currentTarget: any }) => {
    let focusElement = null;
    switch (event.key) {
      case "Enter": {
        handleTabChange(event);
        break;
      }
      case "ArrowRight": {
        const nextTab = tabRefs.indexOf(event.currentTarget) + 1;
        focusElement = tabRefs[nextTab] ?? tabRefs[0];
        break;
      }
      case "ArrowLeft": {
        const prevTab = tabRefs.indexOf(event.currentTarget) - 1;
        focusElement = tabRefs[prevTab] ?? tabRefs[tabRefs.length - 1];
        break;
      }
      default:
        break;
    }
    focusElement?.focus();
  };

  return (
    <ul
      role="tablist"
      aria-orientation="horizontal"
      className={clsx(
        className,
        "!my-0",
        "flex-wrap",
        "list-none",
        "m-0 mb-0 mt-0",
        "px-4",
        "flex gap-4",
        "bg-gray-100 dark:bg-gray-700",
        "rounded-tl-lg rounded-tr-lg",
        !wrapContent && "rounded-bl-lg rounded-br-lg",
        "items-stretch",
      )}
    >
      {tabValues.map(({ value, label, attributes }) => (
        <li
          role="tab"
          tabIndex={selectedValue === value ? 0 : -1}
          aria-selected={selectedValue === value}
          key={value}
          ref={(tabControl) => tabRefs.push(tabControl)}
          onKeyDown={handleKeydown}
          onClick={handleTabChange}
          {...attributes}
          className={clsx(
            "!my-0",
            "mx-0 mt-0",
            "px-2 py-3",
            "flex items-center justify-center",
            "min-w-[60px]",
            "cursor-pointer",
            "transition-all duration-200 ease-in-out",
            "border-b border-solid",
            "select-none",
            smallTabs && "!text-xs",
            !smallTabs && "!text-base",
            selectedValue !== value && "text-gray-800 dark:text-gray-100",
            selectedValue === value &&
              "text-win32-react-light-link dark:text-win32-react-dark-link",
            selectedValue !== value &&
              "hover:text-win32-react-light-link dark:hover:text-win32-react-dark-link",
            selectedValue !== value && "border-b-transparent",
            selectedValue === value &&
              "border-b-win32-react-light-link dark:border-b-win32-react-dark-link",
            selectedValue !== value &&
              "hover:border-b-win32-react-light-link dark:hover:border-b-win32-react-dark-link",
          )}
        >
          {label ?? value}
        </li>
      ))}
    </ul>
  );
}

function TabContent({ lazy, children, selectedValue, smallTabs }) {
  const childTabs = (Array.isArray(children) ? children : [children]).filter(
    Boolean,
  );
  if (lazy) {
    const selectedTabItem = childTabs.find(
      (tabItem) => tabItem.props.value === selectedValue,
    );
    if (!selectedTabItem) {
      // fail-safe or fail-fast? not sure what's best here
      return null;
    }
    return cloneElement(selectedTabItem, {
      className: "margin-top--md win32-tab-content",
    });
  }
  return (
    <div className="p-4">
      {childTabs.map((tabItem, i) =>
        cloneElement(tabItem, {
          key: i,
          hidden: tabItem.props.value !== selectedValue,
          className: clsx(tabItem.props.className ?? [], "win32-tab-content"),
        }),
      )}
    </div>
  );
}

function TabsContainer(
  props:
    | (JSX.IntrinsicAttributes & {
        className: any;
        block: any;
        selectedValue: any;
        selectValue: any;
        tabValues: any;
        wrapContent?: boolean | undefined;
        smallTabs?: boolean | undefined;
      })
    | (JSX.IntrinsicAttributes & {
        lazy: any;
        children: any;
        selectedValue: any;
        smallTabs: any;
      }),
) {
  const tabs = useTabs(props);
  const { wrapContent = true } = props;
  return (
    <div
      className={clsx(
        "tabs-container",
        "rounded-lg",
        "border-gray-300 dark:border-gray-700",
        wrapContent ? "border" : "border-0",
        "mb-6",
        "win32-wider-container",
      )}
    >
      <TabList {...props} {...tabs} />
      <TabContent {...props} {...tabs} />
    </div>
  );
}

export default function Tabs(props: Props): ReactNode {
  const isBrowser = useIsBrowser();
  const value = useTabsContextValue(props);
  return (
    <TabsProvider
      value={value}
      // Remount tabs after hydration
      // Temporary fix for https://github.com/facebook/docusaurus/issues/5653
      key={String(isBrowser)}
    >
      <TabsContainer {...props} />
    </TabsProvider>
  );
}
