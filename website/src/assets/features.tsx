import {
  COMIcon,
  CoverageIcon,
  CrossPlatformIcon,
  DeveloperIcon,
  IntegrationIcon,
  WindowsAPIIcon,
} from '@site/src/win32-theme/icons/landing-features';

export type Feature = {
  icon: React.ComponentType<React.SVGProps<SVGSVGElement>>;
  title: string;
  description: string;
};

export const features = [
  {
    icon: WindowsAPIIcon,
    title: 'Direct access to Windows API',
    description:
      'Invoke Windows API functions directly from Dart without the need for a C compiler or additional setup.',
  },
  {
    icon: COMIcon,
    title: 'COM (Component Object Model) support',
    description:
      'Easily interact with COM libraries and components for advanced Windows functionalities.',
  },
  {
    icon: CoverageIcon,
    title: 'Extensive API coverage',
    description:
      'Access a broad range of Windows APIs, including system services, hardware, and registry.',
  },
  {
    icon: IntegrationIcon,
    title: 'Seamless integration',
    description:
      'Effortlessly integrate with existing Windows libraries and services, enabling smooth interoperability.',
  },
  {
    icon: CrossPlatformIcon,
    title: 'Cross-platform development',
    description:
      'Develop cross-platform packages with specific implementations tailored for Windows environments.',
  },
  {
    icon: DeveloperIcon,
    title: 'Developer-friendly',
    description:
      'Simplifies the complexity of Win32 API calls into easy-to-use Dart functions, enhancing developer productivity.',
  },
];
