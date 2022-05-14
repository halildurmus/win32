This package provides a Dart language abstraction over Windows metadata files,
making it possible to load them and build Dart FFI interop libraries from the
results. It can be used to interrogate the Windows developer API, whether
unmanaged APIs like Win32 or COM, or APIs like Windows Runtime that include
their own metadata.

[![pub package](https://img.shields.io/pub/v/winmd.svg)](https://pub.dev/packages/winmd)
[![Language](https://img.shields.io/badge/language-Dart-blue.svg)](https://dart.dev)
![Build](https://github.com/timsneath/winmd/workflows/Build/badge.svg)
[![codecov](https://codecov.io/gh/timsneath/winmd/branch/main/graph/badge.svg?token=1ouz1Jr9nW)](https://codecov.io/gh/timsneath/winmd)

## Architecture

![Architecture diagram](https://github.com/timsneath/winmd/blob/main/metadata.drawio.svg?raw=true)

## Usage (Windows Runtime)

A simple example: loading the `MediaPlayer` class and retrieving information
about its methods.

```dart
import 'package:winmd/winmd.dart';

void main() {
  // A Windows Runtime interface
  const typeToGenerate = 'Windows.Media.Playback.MediaPlayer';

  // Load the metadata for this interface
  final typeDef = MetadataStore.getMetadataForType(typeToGenerate)!;

  // Create a Dart projection
  print('$typeToGenerate contains the following methods:');

  for (final method in typeDef.methods) {
    print('  ${method.name}');
  }
}
```

## Usage (Win32)

Load all the methods from the GDI namespace and print out some metadata.

```dart
import 'package:winmd/winmd.dart';

void main() {
  // Load WinMD metadata for Win32, as produced by the following utility:
  // https://github.com/microsoft/win32metadata
  final scope = MetadataStore.getWin32Scope();

  // Find a namespace
  final namespace =
      scope.findTypeDef('Windows.Win32.UI.WindowsAndMessaging.Apis')!;

  // Sort the functions alphabetically
  final sortedMethods = namespace.methods
    ..sort((a, b) => a.name.compareTo(b.name));

  // Find a specific function
  const funcName = 'MessageBoxW';
  final method = sortedMethods.firstWhere((m) => m.name == funcName);

  // Print out some information about it
  print('Win32 function $funcName [token #${method.token}]');

  // Retrieve its parameters and project them into Dart FFI types
  final params = method.parameters
      .map((param) =>
          '${param.typeIdentifier.name.split('.').last} ${param.name}')
      .join(', ');
  print('The parameters are:\n  $params');

  final returnType = method.returnType.typeIdentifier.name.split('.').last;
  print('It returns type: $returnType.');
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/timsneath/winmd
