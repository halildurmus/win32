import ErrorBoundary from "@docusaurus/ErrorBoundary";
import { PageMetadata } from "@docusaurus/theme-common";
import ErrorPageContent from "@theme/ErrorPageContent";
import LayoutProvider from "@theme/Layout/Provider";
import SkipToContent from "@theme/SkipToContent";
import clsx from "clsx";

declare global {
  interface Window {}
}

type Props = {
  className?: string;
} & Record<string, any>;

export const CommonLayout = (props: Props) => {
  const { children, title, description, className } = props;

  return (
    <LayoutProvider>
      <PageMetadata title={title} description={description} />
      <SkipToContent />
      <div
        className={clsx(
          "main-wrapper",
          "min-h-[100dvh]",
          "flex flex-col",
          "dark:bg-gray-900 bg-gray-0",
          className,
        )}
      >
        <ErrorBoundary
          fallback={(params: any) => <ErrorPageContent {...params} />}
        >
          {children}
        </ErrorBoundary>
      </div>
    </LayoutProvider>
  );
};
