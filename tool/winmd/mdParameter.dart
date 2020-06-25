import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

class WindowsRuntimeParameter {
  IMetaDataImport2 reader;

  int token;
  int sequence;
  int attributes;
  String name;
  String value;

  WindowsRuntimeParameter(this.reader, this.token, this.sequence,
      this.attributes, this.name, this.value);
}
