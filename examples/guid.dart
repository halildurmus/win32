// Creates a globally unique identifier (GUID).

import 'package:win32/win32.dart';

void main() {
  final guid = Guid.generate();
  print(guid);

  // TODO(halildurmus): Add more examples
}
