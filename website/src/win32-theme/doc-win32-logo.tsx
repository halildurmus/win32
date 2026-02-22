import Link from "@docusaurus/Link";
import clsx from "clsx";
import { Win32Logotype } from "./icons/win32";

interface Props {
  className?: string;
}

export const DocWin32Logo = ({ className }: Props) => {
  return (
    <div
      className={clsx(
        "flex",
        "items-center justify-start",
        "gap-2",
        "no-underline",
        className,
      )}
    >
      <Link to="/" className={clsx("no-underline")}>
        <Win32Logotype />
      </Link>
      <span
        className={clsx(
          "block",
          "h-6",
          "w-px",
          "mx-1",
          "bg-gray-300 dark:bg-gray-600",
        )}
      />
      <Link to="/docs" className={clsx("no-underline")}>
        <span
          className={clsx(
            "text-gray-1000 dark:text-gray-0",
            "text-base font-normal",
          )}
        >
          Documentation
        </span>
      </Link>
    </div>
  );
};
