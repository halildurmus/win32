# Task Dialog Example

A **Windows Task Dialog application** written in Dart.
This example demonstrates how to create modern task dialogs using the Win32 API,
including simple messages, custom button choices, and expanded information
sections.

## Building the Application

### Build

From the `examples/task_dialog` directory, run:

```cmd
dart build cli -o build
```

The resulting output has the following structure:

```text
build/
  bundle/
    bin/
      task_dialog.exe
    lib/
      win32.dll
```

### Copy Runtime Resources

Copy the application manifest next to the executable:

```cmd
copy resources\task_dialog.exe.manifest build\bundle\bin\
```

### Run

Launch the application:

```cmd
build\bundle\bin\task_dialog.exe
```

The application will display various Task Dialog examples demonstrating
different styles and configurations.

---

## Troubleshooting

If the application doesn't work, ensure that external manifests are enabled in
the registry. This can be done by running the following command in an elevated
command prompt:

```cmd
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide" /v PreferExternalManifest /t REG_DWORD /d 1 /f
```
