@TestOn('windows')
library;

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('Can find mdmerge.exe', () {
    final path = MdMerge.executablePath;
    check(path)
      ..isNotEmpty()
      ..endsWith('mdmerge.exe');
  });
}
