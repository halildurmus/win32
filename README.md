<div align="center">

  <a href="https://win32.pub">
    <img
      alt="package:win32 logo"
      src="https://raw.githubusercontent.com/halildurmus/win32/main/assets/readme_banner.png"
      height="320" />
  </a>

</div>

<div align="center">

  [Homepage][win32.pub] ·
  [Documentation](https://win32.pub/docs) ·
  [Examples](https://win32.pub/examples) ·
  [Packages](https://win32.pub/packages)

</div>

[win32.pub]: https://win32.pub

<div align="center">

  [![ci][ci_badge]][ci_link]
  [![codecov][codecov_badge_link]][codecov_link]
  [![GitHub stars][github_stars_badge]][github_stars_link]
  [![Language: Dart][language_badge]][language_link]
  [![License: BSD-3-Clause][license_badge]][license_link]

</div>

[ci_badge]: https://img.shields.io/github/actions/workflow/status/halildurmus/win32/win32.yml?label=CI
[ci_link]: https://github.com/halildurmus/win32/actions
[codecov_badge_link]: https://codecov.io/gh/halildurmus/win32/graph/badge.svg?token=RVL4TNLEJA
[codecov_link]: https://codecov.io/gh/halildurmus/win32
[github_stars_badge]: https://img.shields.io/github/stars/halildurmus/win32?style=flat&color=yellow
[github_stars_link]: https://github.com/halildurmus/win32/stargazers
[language_badge]: https://img.shields.io/badge/language-Dart-blue
[language_link]: https://dart.dev
[license_badge]: https://img.shields.io/github/license/halildurmus/win32
[license_link]: https://opensource.org/licenses/BSD-3-Clause

This monorepo contains the **win32** family of Dart packages – everything you
need to build Windows-native applications in Dart and Flutter. The packages
range from low-level Win32 and COM API bindings to modern, type-safe APIs for
everyday Windows features like the Registry, Clipboard, gamepads, and more.

## 📦 Packages

| Package              | Description                                                                           | Pub                                                            | Issues                                                                       |
| -------------------- | ------------------------------------------------------------------------------------- | -------------------------------------------------------------- | ---------------------------------------------------------------------------  |
| [ffi_leak_tracker]   | Allocation tracking and leak detection for Dart FFI code                              | [![pub][ffi_leak_tracker_pub_badge]][ffi_leak_tracker_pub]     | [![issues][ffi_leak_tracker_issues_badge]][ffi_leak_tracker_issues_link]     |
| [filepicker_windows] | File and directory picker for Windows that uses common dialog controls                | [![pub][filepicker_windows_pub_badge]][filepicker_windows_pub] | [![issues][filepicker_windows_issues_badge]][filepicker_windows_issues_link] |
| [win32]              | Call common Windows APIs directly from Dart using FFI                                 | [![pub][win32_pub_badge]][win32_pub]                           | [![issues][win32_issues_badge]][win32_issues_link]                           |
| [win32_clipboard]    | A modern, type-safe Dart API for accessing and managing the Windows Clipboard         | [![pub][win32_clipboard_pub_badge]][win32_clipboard_pub]       | [![issues][win32_clipboard_issues_badge]][win32_clipboard_issues_link]       |
| [win32_gamepad]      | A modern, type-safe Dart API for accessing gamepads connected to a Windows machine    | [![pub][win32_gamepad_pub_badge]][win32_gamepad_pub]           | [![issues][win32_gamepad_issues_badge]][win32_gamepad_issues_link]           |
| [win32_registry]     | A modern, type-safe Dart API for accessing and managing the Windows Registry          | [![pub][win32_registry_pub_badge]][win32_registry_pub]         | [![issues][win32_registry_issues_badge]][win32_registry_issues_link]         |
| [win32_runner]       | A Dart runner for Flutter Windows apps — no C++ compiler required                     | [![pub][win32_runner_pub_badge]][win32_runner_pub]             | [![issues][win32_runner_issues_badge]][win32_runner_issues_link]             |
| [winmd]              | Inspect and generate Windows Metadata (`.winmd`) files based on the ECMA-335 standard | [![pub][winmd_pub_badge]][winmd_pub]                           | [![issues][winmd_issues_badge]][winmd_issues_link]                           |

[ffi_leak_tracker]: https://github.com/halildurmus/win32/tree/main/packages/ffi_leak_tracker
[ffi_leak_tracker_pub_badge]: https://img.shields.io/pub/v/ffi_leak_tracker.svg
[ffi_leak_tracker_pub]: https://pub.dev/packages/ffi_leak_tracker
[ffi_leak_tracker_issues_badge]: https://img.shields.io/github/issues/halildurmus/win32/package%3A%20ffi_leak_tracker?label=issues
[ffi_leak_tracker_issues_link]: https://github.com/halildurmus/win32/issues?q=is%3Aissue+is%3Aopen+label%3A%22package%3A+ffi_leak_tracker%22
[filepicker_windows]: https://github.com/halildurmus/win32/tree/main/packages/filepicker_windows
[filepicker_windows_pub_badge]: https://img.shields.io/pub/v/filepicker_windows.svg
[filepicker_windows_pub]: https://pub.dev/packages/filepicker_windows
[filepicker_windows_issues_badge]: https://img.shields.io/github/issues/halildurmus/win32/package%3A%20filepicker_windows?label=issues
[filepicker_windows_issues_link]: https://github.com/halildurmus/win32/issues?q=is%3Aissue+is%3Aopen+label%3A%22package%3A+filepicker_windows%22
[win32]: https://github.com/halildurmus/win32/tree/main/packages/win32
[win32_pub_badge]: https://img.shields.io/pub/v/win32.svg
[win32_pub]: https://pub.dev/packages/win32
[win32_issues_badge]: https://img.shields.io/github/issues/halildurmus/win32/package%3A%20win32?label=issues
[win32_issues_link]: https://github.com/halildurmus/win32/issues?q=is%3Aissue+is%3Aopen+label%3A%22package%3A+win32%22
[win32_clipboard]: https://github.com/halildurmus/win32/tree/main/packages/win32_clipboard
[win32_clipboard_pub_badge]: https://img.shields.io/pub/v/win32_clipboard.svg
[win32_clipboard_pub]: https://pub.dev/packages/win32_clipboard
[win32_clipboard_issues_badge]: https://img.shields.io/github/issues/halildurmus/win32/package%3A%20win32_clipboard?label=issues
[win32_clipboard_issues_link]: https://github.com/halildurmus/win32/issues?q=is%3Aissue+is%3Aopen+label%3A%22package%3A+win32_clipboard%22
[win32_gamepad]: https://github.com/halildurmus/win32/tree/main/packages/win32_gamepad
[win32_gamepad_pub_badge]: https://img.shields.io/pub/v/win32_gamepad.svg
[win32_gamepad_pub]: https://pub.dev/packages/win32_gamepad
[win32_gamepad_issues_badge]: https://img.shields.io/github/issues/halildurmus/win32/package%3A%20win32_gamepad?label=issues
[win32_gamepad_issues_link]: https://github.com/halildurmus/win32/issues?q=is%3Aissue+is%3Aopen+label%3A%22package%3A+win32_gamepad%22
[win32_registry]: https://github.com/halildurmus/win32/tree/main/packages/win32_registry
[win32_registry_pub_badge]: https://img.shields.io/pub/v/win32_registry.svg
[win32_registry_pub]: https://pub.dev/packages/win32_registry
[win32_registry_issues_badge]: https://img.shields.io/github/issues/halildurmus/win32/package%3A%20win32_registry?label=issues
[win32_registry_issues_link]: https://github.com/halildurmus/win32/issues?q=is%3Aissue+is%3Aopen+label%3A%22package%3A+win32_registry%22
[win32_runner]: https://github.com/halildurmus/win32/tree/main/packages/win32_runner
[win32_runner_pub_badge]: https://img.shields.io/pub/v/win32_runner.svg
[win32_runner_pub]: https://pub.dev/packages/win32_runner
[win32_runner_issues_badge]: https://img.shields.io/github/issues/halildurmus/win32/package%3A%20win32_runner?label=issues
[win32_runner_issues_link]: https://github.com/halildurmus/win32/issues?q=is%3Aissue+is%3Aopen+label%3A%22package%3A+win32_runner%22
[winmd]: https://github.com/halildurmus/win32/tree/main/packages/winmd
[winmd_pub_badge]: https://img.shields.io/pub/v/winmd.svg
[winmd_pub]: https://pub.dev/packages/winmd
[winmd_issues_badge]: https://img.shields.io/github/issues/halildurmus/win32/package%3A%20winmd?label=issues
[winmd_issues_link]: https://github.com/halildurmus/win32/issues?q=is%3Aissue+is%3Aopen+label%3A%22package%3A+winmd%22

### Internal Packages

| Package     | Description                                                   | Issues                                                     |
| ----------- | ------------------------------------------------------------- | ---------------------------------------------------------- |
| [generator] | Generates Win32 and COM API projections from Windows Metadata | [![issues][generator_issues_badge]][generator_issues_link] |

[generator]: https://github.com/halildurmus/win32/tree/main/packages/generator
[generator_issues_badge]: https://img.shields.io/github/issues/halildurmus/win32/package%3A%20generator?label=issues
[generator_issues_link]: https://github.com/halildurmus/win32/issues?q=is%3Aissue%20state%3Aopen%20label%3A%22package%3A%20generator%22

## 🐞 Features and Bugs

If you encounter bugs or need additional functionality, please [file an issue].

[file an issue]: https://github.com/halildurmus/win32/issues
