# Application Manifests

This example demonstrates how [app manifest]s in Windows allow you to specify
execution-level settings for your application, such as requiring administrator
privileges.

By including an appropriate manifest file, you can control whether your
application prompts for elevated permissions or runs with standard user
privileges.

## 1. Running a Dart file directly

```cmd
dart run execution_level.dart
```

In this scenario, the Dart command-line utility is called to run the Dart file.
Since no app manifest exists, this command runs with standard user privileges
and does not prompt for elevation.

## 2. Compiling with an app manifest

Run this command to compile `execution_level.dart`:

```cmd
dart compile exe -o execution_level.exe execution_level.dart
```

Supplied in this folder is `execution_level.exe.manifest`, which is an app
manifest that explicitly requests administrator privileges. When you run
`execution_level.exe`, Windows will display a User Account Control (UAC) prompt.
If you approve, the app will run with elevated privileges.

**Note:** If UAC is disabled on your machine, all processes run with elevated
privileges by default, assuming you are logged in with an administrator account.
Therefore, even without an app manifest, the script will execute with elevated
privileges in such a scenario.

## 3. Executing without an app manifest

If you copy or rename the executable to something else and run it again:

```cmd
> copy execution_level.exe execution_level2.exe
> execution_level2.exe
```

You'll see that the same executable, in the absence of a matching app manifest,
runs with standard user privileges and does not prompt for elevation.

[app manifest]: https://learn.microsoft.com/windows/win32/sysinfo/targeting-your-application-at-windows-8-1
