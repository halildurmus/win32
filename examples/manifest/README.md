# Application Manifests

This example demonstrates how [Windows application manifests] control
execution-level behavior, specifically whether an application runs with standard
user privileges or requests elevation via User Account Control (UAC).

By supplying an app manifest alongside an executable, you explicitly declare the
required execution level, allowing Windows to enforce privilege boundaries
consistently and predictably.

## Overview

- **Without a manifest:** the application runs with standard user privileges.
- **With a manifest requesting elevation:** Windows displays a UAC prompt before
  launch.
- **Manifest resolution is name-based:** the manifest must match the executable
  name exactly.

This behavior applies equally to native binaries and Dart-compiled executables.

## 1. Running a Dart file directly

```cmd
dart run manifest.dart
```

Here, the Dart CLI launches the script directly. Since no executable or app
manifest is involved, the process always runs with **standard user privileges**
and **never triggers UAC**, regardless of the script’s behavior.

## 2. Building and running with an app manifest

Build the application from the `examples/manifest` directory:

```cmd
dart build cli -o build
```

The generated output has the following structure:

```text
build/
  bundle/
    bin/
      manifest.exe
    lib/
      win32.dll
```

A corresponding manifest file, `manifest.exe.manifest`, is provided. This file
explicitly requests administrator privileges.

Copy the manifest next to the executable:

```cmd
copy resources\manifest.exe.manifest build\bundle\bin\
```

Now run the application:

```cmd
build\bundle\bin\manifest.exe
```

Windows detects the manifest, displays a UAC prompt, and — if approved —
launches the process with **elevated privileges**.

## 3. Running the same executable without a manifest

Windows associates manifests strictly by filename. If the manifest is missing
or the executable name changes, the manifest is ignored.

For example:

```cmd
copy build\bundle\bin\manifest.exe build\bundle\bin\manifest2.exe
build\bundle\bin\manifest2.exe
```

Since `manifest2.exe.manifest` does not exist, Windows launches the executable
with **standard user privileges**, without displaying a UAC prompt.

The binary itself is unchanged — only the presence and name of the manifest
affects elevation behavior.

## Important Notes

- Disabling UAC changes system-wide behavior. If UAC is turned off and you are
logged in as an administrator, all processes effectively run elevated,
regardless of manifest settings.
- Relying on disabled UAC is strongly discouraged; manifests should always
declare the intended execution level explicitly.
- Elevation cannot be requested dynamically at runtime. It must be declared
before process creation via the manifest.

[Windows application manifests]: https://learn.microsoft.com/windows/win32/sysinfo/targeting-your-application-at-windows-8-1
