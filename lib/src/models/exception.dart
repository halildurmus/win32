// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// Exception thrown to signal errors that occur while performing clipboard
/// operations.
final class ClipboardException implements Exception {
  const ClipboardException(this.message);

  final String message;

  @override
  String toString() => 'ClipboardException: $message';
}
