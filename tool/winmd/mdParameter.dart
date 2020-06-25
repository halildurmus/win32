import 'package:win32/win32.dart';

import 'mdType.dart';

class WindowsRuntimeParameter {
  IMetaDataImport2 reader;

  int token;
  int sequence;
  int attributes;
  WindowsRuntimeType typeFlag;
  String name;
  int paramValueLength;

  WindowsRuntimeParameter(this.reader, this.token, this.sequence,
      this.attributes, this.typeFlag, this.name, this.paramValueLength);
}
