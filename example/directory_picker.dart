// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:filepicker_windows/filepicker_windows.dart';

// Directory picker example

void main() {
  final file = DirectoryPicker()..title = 'Select a directory';

  final result = file.getDirectory();
  if (result != null) {
    print(result.path);
  }
}
