import clsx from 'clsx';
import type { SVGProps } from 'react';
import { TbBroadcast } from 'react-icons/tb';

export const CoverageIcon = (props: SVGProps<SVGSVGElement>) => (
  <svg
    xmlns="http://www.w3.org/2000/svg"
    width={64}
    height={64}
    viewBox="0 0 64 64"
    fill="none"
    {...props}
    className={clsx(
      props.className,
      'dark:text-win32-blue-alt text-win32-blue'
    )}
  >
    <rect
      width={64}
      height={64}
      fill="url(#coverage-a)"
      fillOpacity={0.4}
      rx={16}
    />
    <rect
      width={63}
      height={63}
      x={0.5}
      y={0.5}
      stroke="url(#coverage-b)"
      strokeOpacity={0.5}
      rx={15.5}
    />
    <symbol id="coverage-icon" viewBox="0 0 16 16">
      <TbBroadcast />
    </symbol>
    <use href="#coverage-icon" x={16} y={16} width={32} height={32} />
    <defs>
      <radialGradient
        id="coverage-a"
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
        id="coverage-b"
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
