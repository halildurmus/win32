import { DartIcon } from '@site/src/win32-theme/icons/dart';
import { FlutterIcon } from '@site/src/win32-theme/icons/flutter';
import clsx from 'clsx';
import { SiWindows10, SiWindows11 } from 'react-icons/si';

export type AnimationItem = {
  icon: React.ComponentType<React.SVGProps<SVGSVGElement>>;
  name: string;
  color: string;
  rayClassName?: string;
};

export const platformItems: AnimationItem[] = [
  {
    name: 'Windows 10',
    icon: (props: React.SVGProps<SVGSVGElement>) => (
      <SiWindows10
        {...props}
        className={clsx('text-[#0078d6]', props.className)}
      />
    ),
    color: '#0078d6',
  },
  {
    name: 'Windows 11',
    icon: (props: React.SVGProps<SVGSVGElement>) => (
      <SiWindows11
        {...props}
        className={clsx('text-gray-1000 dark:text-gray-0', props.className)}
      />
    ),
    color: '#ffffff',
    rayClassName: '!text-gray-1000 dark:!text-gray-0',
  },
];

export const technologyItems: AnimationItem[] = [
  {
    name: 'Dart',
    icon: DartIcon,
    color: '#40C4FF',
  },
  {
    name: 'Flutter',
    icon: FlutterIcon,
    color: '#027DFD',
  },
];

export const windowsFeatureItems: AnimationItem[] = [
  {
    name: 'Accessibility',
    icon: (props: React.SVGProps<SVGSVGElement>) => (
      <SiWindows11
        {...props}
        className={clsx('text-gray-1000 dark:text-gray-0', props.className)}
      />
    ),
    color: '#ffffff',
    rayClassName: '!text-gray-1000 dark:!text-gray-0',
  },
  {
    name: 'Audio and Video',
    icon: (props: React.SVGProps<SVGSVGElement>) => (
      <SiWindows11
        {...props}
        className={clsx('text-gray-1000 dark:text-gray-0', props.className)}
      />
    ),
    color: '#ffffff',
    rayClassName: '!text-gray-1000 dark:!text-gray-0',
  },
  {
    name: 'Data Access and Storage',
    icon: (props: React.SVGProps<SVGSVGElement>) => (
      <SiWindows11
        {...props}
        className={clsx('text-gray-1000 dark:text-gray-0', props.className)}
      />
    ),
    color: '#ffffff',
    rayClassName: '!text-gray-1000 dark:!text-gray-0',
  },
  {
    name: 'Devices',
    icon: (props: React.SVGProps<SVGSVGElement>) => (
      <SiWindows11
        {...props}
        className={clsx('text-gray-1000 dark:text-gray-0', props.className)}
      />
    ),
    color: '#ffffff',
    rayClassName: '!text-gray-1000 dark:!text-gray-0',
  },
  {
    name: 'Desktop Environment',
    icon: (props: React.SVGProps<SVGSVGElement>) => (
      <SiWindows11
        {...props}
        className={clsx('text-gray-1000 dark:text-gray-0', props.className)}
      />
    ),
    color: '#ffffff',
    rayClassName: '!text-gray-1000 dark:!text-gray-0',
  },
  {
    name: 'Desktop User Interface',
    icon: (props: React.SVGProps<SVGSVGElement>) => (
      <SiWindows11
        {...props}
        className={clsx('text-gray-1000 dark:text-gray-0', props.className)}
      />
    ),
    color: '#ffffff',
    rayClassName: '!text-gray-1000 dark:!text-gray-0',
  },
  {
    name: 'Security and Identity',
    icon: (props: React.SVGProps<SVGSVGElement>) => (
      <SiWindows11
        {...props}
        className={clsx('text-gray-1000 dark:text-gray-0', props.className)}
      />
    ),
    color: '#ffffff',
    rayClassName: '!text-gray-1000 dark:!text-gray-0',
  },
  {
    name: 'System Services',
    icon: (props: React.SVGProps<SVGSVGElement>) => (
      <SiWindows11
        {...props}
        className={clsx('text-gray-1000 dark:text-gray-0', props.className)}
      />
    ),
    color: '#ffffff',
    rayClassName: '!text-gray-1000 dark:!text-gray-0',
  },
];

export const packageItems: AnimationItem[] = [
  {
    name: 'filepicker_windows',
    icon: DartIcon,
    color: '#40C4FF',
  },
  {
    name: 'win32_clipboard',
    icon: DartIcon,
    color: '#40C4FF',
  },
  {
    name: 'win32_gamepad',
    icon: DartIcon,
    color: '#40C4FF',
  },
  {
    name: 'win32_registry',
    icon: DartIcon,
    color: '#40C4FF',
  },
  {
    name: 'win32_runner',
    icon: DartIcon,
    color: '#40C4FF',
  },
  {
    name: 'winmd',
    icon: DartIcon,
    color: '#40C4FF',
  },
];
