import { DartIcon } from '@site/src/win32-theme/icons/dart';
import { FlutterIcon } from '@site/src/win32-theme/icons/flutter';

export type Package = {
  name: string;
  icon: React.ComponentType<React.SVGProps<SVGSVGElement>>;
  description: string;
  url: string;
  installCommand: string;
  contributors?: Contributor[];
};

export type Contributor = {
  name: string;
  url: string;
};

const filepicker_windows: Package = {
  name: 'filepicker_windows',
  icon: DartIcon,
  description:
    '<b>file and directory selection</b> for Windows using common dialog controls.',
  url: 'https://pub.dev/packages/filepicker_windows',
  installCommand: 'dart pub add filepicker_windows',
};

const win32_clipboard: Package = {
  name: 'win32_clipboard',
  icon: DartIcon,
  description:
    'A friendly Dart API for accessing the Windows <b>Clipboard</b>.',
  url: 'https://pub.dev/packages/win32_clipboard',
  installCommand: 'dart pub add win32_clipboard',
};

const win32_gamepad: Package = {
  name: 'win32_gamepad',
  icon: DartIcon,
  description:
    'A friendly Dart API for accessing <b>gamepads</b> connected to a Windows machine.',
  url: 'https://pub.dev/packages/win32_gamepad',
  installCommand: 'dart pub add win32_gamepad',
};

const win32_registry: Package = {
  name: 'win32_registry',
  icon: DartIcon,
  description: 'A friendly Dart API for accessing the Windows <b>Registry</b>.',
  url: 'https://pub.dev/packages/win32_registry',
  installCommand: 'dart pub add win32_registry',
};

const win32_runner: Package = {
  name: 'win32_runner',
  icon: DartIcon,
  description:
    'Compile and <b>run a Flutter app</b> without needing any C/C++ code. Just Dart!',
  url: 'https://pub.dev/packages/win32_runner',
  installCommand: 'dart pub add win32_runner',
};

const winmd: Package = {
  name: 'winmd',
  icon: DartIcon,
  description:
    'A package that provides a Dart language abstraction over <b>Windows Metadata (WinMD)</b> files, making it possible to load them and build Dart FFI interop libraries from the results.',
  url: 'https://pub.dev/packages/winmd',
  installCommand: 'dart pub add winmd',
};

export const packages: Package[] = [
  filepicker_windows,
  win32_clipboard,
  win32_gamepad,
  win32_registry,
  win32_runner,
  winmd,
];

export const communityPackages: Package[] = [
  {
    name: 'file_picker',
    icon: FlutterIcon,
    description:
      'Use the <b>native file explorer</b> to pick single or multiple files, with extensions filtering support.',
    url: 'https://pub.dev/packages/file_picker',
    installCommand: 'flutter pub add file_picker',
    contributors: [
      {
        name: 'Miguel Ruivo',
        url: 'https://github.com/miguelpruivo',
      },
    ],
  },
  {
    name: 'share_plus',
    icon: FlutterIcon,
    description:
      "<b>Share content</b> from your Flutter app via the platform's share dialog.",
    url: 'https://pub.dev/packages/share_plus',
    installCommand: 'flutter pub add share_plus',
    contributors: [
      {
        name: 'Flutter Community',
        url: 'https://github.com/fluttercommunity',
      },
    ],
  },
  {
    name: 'device_info_plus',
    icon: FlutterIcon,
    description:
      'Get current <b>device information</b> from within the Flutter application.',
    url: 'https://pub.dev/packages/device_info_plus',
    installCommand: 'flutter pub add device_info_plus',
    contributors: [
      {
        name: 'Flutter Community',
        url: 'https://github.com/fluttercommunity',
      },
    ],
  },
  {
    name: 'package_info_plus',
    icon: FlutterIcon,
    description: 'Query <b>information about an <b>application package</b>.',
    url: 'https://pub.dev/packages/package_info_plus',
    installCommand: 'flutter pub add package_info_plus',
    contributors: [
      {
        name: 'Flutter Community',
        url: 'https://github.com/fluttercommunity',
      },
    ],
  },
  {
    name: 'network_info_plus',
    icon: FlutterIcon,
    description:
      'Discover information (e.g. WiFi details) of the <b>network</b>.',
    url: 'https://pub.dev/packages/network_info_plus',
    installCommand: 'flutter pub add network_info_plus',
    contributors: [
      {
        name: 'Flutter Community',
        url: 'https://github.com/fluttercommunity',
      },
    ],
  },
  {
    name: 'wakelock_plus',
    icon: FlutterIcon,
    description:
      '<b>Keep the device screen awake</b>, i.e. prevent the screen from sleeping on Android, iOS, macOS, Windows, Linux, and web.',
    url: 'https://pub.dev/packages/wakelock_plus',
    installCommand: 'flutter pub add wakelock_plus',
    contributors: [
      {
        name: 'Flutter Community',
        url: 'https://github.com/fluttercommunity',
      },
    ],
  },
  {
    name: 'biometric_storage',
    icon: FlutterIcon,
    description:
      '<b>Encrypted file store</b>, optionally secured by <b>biometric lock</b> for Android, iOS, MacOS and partial support for Linux, Windows and Web.',
    url: 'https://pub.dev/packages/biometric_storage',
    installCommand: 'flutter pub add biometric_storage',
    contributors: [
      {
        name: 'Herbert Poul',
        url: 'https://github.com/hpoul',
      },
    ],
  },
  {
    name: 'dart_console',
    icon: DartIcon,
    description:
      'A package for <b>command-line</b> apps that need more control over input/output than the standard library provides.',
    url: 'https://pub.dev/packages/dart_console',
    installCommand: 'dart pub add dart_console',
    contributors: [
      {
        name: 'Brett Sutton',
        url: 'https://github.com/bsutton',
      },
    ],
  },
];
