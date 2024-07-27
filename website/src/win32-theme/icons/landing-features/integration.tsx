import clsx from 'clsx';
import type { SVGProps } from 'react';
import { IoExtensionPuzzleOutline } from 'react-icons/io5';

export const IntegrationIcon = (props: SVGProps<SVGSVGElement>) => (
  <svg
    xmlns="http://www.w3.org/2000/svg"
    width={64}
    height={64}
    viewBox="0 0 64 64"
    fill="none"
    {...props}
    className={clsx(
      props.className,
      'dark:text-win32-purple-alt text-win32-purple'
    )}
  >
    <rect
      width={64}
      height={64}
      fill="url(#integration-a)"
      fillOpacity={0.4}
      rx={16}
    />
    <rect
      width={63}
      height={63}
      x={0.5}
      y={0.5}
      stroke="url(#integration-b)"
      strokeOpacity={0.5}
      rx={15.5}
    />
    <symbol id="integration-icon" viewBox="0 0 16 16">
      <IoExtensionPuzzleOutline />
    </symbol>
    <use href="#integration-icon" x={16} y={16} width={32} height={32} />
    <defs>
      <radialGradient
        id="integration-a"
        cx={0}
        cy={0}
        r={1}
        gradientTransform="rotate(45) scale(90.5097)"
        gradientUnits="userSpaceOnUse"
      >
        <stop stopColor="currentColor" />
        <stop offset={1} stopColor="currentColor" stopOpacity={0.25} />
      </radialGradient>
      <radialGradient
        id="integration-b"
        cx={0}
        cy={0}
        r={1}
        gradientTransform="rotate(45) scale(90.5097)"
        gradientUnits="userSpaceOnUse"
      >
        <stop stopColor="currentColor" />
        <stop offset={0.5} stopColor="currentColor" stopOpacity={0} />
        <stop offset={1} stopColor="currentColor" stopOpacity={0.25} />
      </radialGradient>
    </defs>
  </svg>
);
