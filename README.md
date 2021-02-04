This package is used for interrogating WinMD files and building Dart FFI interop
libraries from the results.

## Usage

A simple example:

```dart
import 'package:winmd/winmd.dart';

final type = 'Windows.Foundation.IAsyncInfo';
final mdTypeDef = WinmdStore.getMetadataForType(type);
final projection = TypeBuilder.projectWinMdType(mdTypeDef);
final dartClass = TypePrinter.printType(projection);

final outputFilename = type.split('.').last;
final outputFile =
    File('${outputDirectory.uri.toFilePath()}$outputFilename.dart');

print('Writing:    ${outputFile.path}');
outputFile.writeAsStringSync(dartClass);
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: http://github.com/timsneath/winmd
