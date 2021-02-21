This package provides a Dart abstraction over Windows metadata files, making it
possible to load them and build Dart FFI interop libraries from the results.

[![pub package](https://img.shields.io/pub/v/winmd.svg)](https://pub.dev/packages/winmd)
[![Language](https://img.shields.io/badge/language-Dart-blue.svg)](https://dart.dev)
![Code Coverage](https://github.com/timsneath/winmd/blob/main/coverage_badge.svg?raw=true)

## Architecture

![Architecture diagram](https://github.com/timsneath/winmd/blob/main/metadata.drawio.svg?raw=true)

## Usage (Windows Runtime)

A simple example: loading the IAsyncInfo interface and emitting the Dart
equivalent file.

```dart
import 'package:winmd/winmd.dart';

final type = 'Windows.Foundation.IAsyncInfo';
final typeDef = MetadataStore.getMetadataForType(type);
final projection = TypeBuilder.projectWindowsType(typeDef);
final dartClass = TypePrinter.printType(projection);

final outputFilename = type.split('.').last;
final outputFile =
    File('${outputDirectory.uri.toFilePath()}$outputFilename.dart');

print('Writing:    ${outputFile.path}');
outputFile.writeAsStringSync(dartClass);
```

## Usage (Win32)

Load all the methods from the GDI namespace and print out some metadata.

```dart
import 'package:winmd/winmd.dart';

void main() {
  // Load WinMD metadata for Win32, as produced by the following utility:
  // https://github.com/microsoft/win32metadata
  final scope = MetadataStore.getScopeForFile('Windows.Win32.winmd');

  // Find the GDI API namesapce
  final gdiApi =
      scope.typeDefs.firstWhere((type) => type.typeName.endsWith('Gdi.Apis'));

  // Sort the functions alphabetically
  final sortedMethods = gdiApi.methods
    ..sort((a, b) => a.methodName.compareTo(b.methodName));

  // Find a specific function
  const funcName = 'AddFontResourceW';
  final method = sortedMethods.firstWhere((m) => m.methodName == funcName);

  // Print out some information about it
  print('This method is token #${method.token}');

  final params = method.parameters
      .map((param) => '${param.typeIdentifier.nativeType} ${param.name!}')
      .join(', ');
  print('The parameters are:\n$params');
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/timsneath/winmd
