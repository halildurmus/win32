This package provides a Dart abstraction over Windows metadata files, making it
possible to load them and build Dart FFI interop libraries from the results.

[![pub package](https://img.shields.io/pub/v/winmd.svg)](https://pub.dev/packages/winmd)
[![Language](https://img.shields.io/badge/language-Dart-blue.svg)](https://dart.dev)
![Build](https://github.com/timsneath/winmd/workflows/Build/badge.svg)

## Architecture

![Architecture diagram](https://github.com/timsneath/winmd/blob/main/metadata.drawio.svg?raw=true)

## Usage (Windows Runtime)

A simple example: loading the IAsyncInfo interface and emitting the Dart
equivalent file.

```dart
import 'package:winmd/winmd.dart';

void main() {
  // A Windows Runtime interface
  const type = 'Windows.Foundation.IAsyncInfo';

  // Load the metadata for this interface
  final typeDef = MetadataStore.getMetadataForType(type)!;

  // Project it into something Dart can work with
  final projection = ClassProjector(typeDef).projection;

  // Create a Dart projection
  final dartClass = TypePrinter.printType(projection);

  // Print it to the screen. Normally you'd save it to a file and format it.
  print(dartClass);
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

  // Find a namesapce
  final namespace = scope['Windows.Win32.WindowsAndMessaging.Apis']!;

  // Sort the functions alphabetically
  final sortedMethods = namespace.methods
    ..sort((a, b) => a.methodName.compareTo(b.methodName));

  // Find a specific function
  const funcName = 'MessageBoxW';
  final method = sortedMethods.firstWhere((m) => m.methodName == funcName);

  // Print out some information about it
  print('Win32 function $funcName [token #${method.token}]');

  // Retrieve its parameters and project them into Dart FFI types
  final params = method.parameters
      .map((param) =>
          '${TypeProjector(param.typeIdentifier).nativeType} ${param.name}')
      .join(', ');
  print('The parameters are:\n  $params');

  final returnType = TypeProjector(method.returnType.typeIdentifier).nativeType;
  print('It returns type: $returnType.');
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/timsneath/winmd
