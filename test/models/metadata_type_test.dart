// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  group('MetadataType', () {
    test('can find enum value from package name', () {
      final win32 =
          MetadataType.fromPackageName('Microsoft.Windows.SDK.Win32Metadata');
      check(win32).equals(MetadataType.win32);
      final winrt =
          MetadataType.fromPackageName('Microsoft.Windows.SDK.Contracts');
      check(winrt).equals(MetadataType.winrt);
    });

    test('throws an ArgumentError when enum value is not found', () {
      check(() => MetadataType.fromPackageName('Foo.Bar'))
          .throws<ArgumentError>()
          .has((e) => e.message, 'message')
          .equals('Invalid package name.');
    });
  });
}
