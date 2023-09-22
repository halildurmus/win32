// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:win32/win32.dart';

/// Represents a data format in the clipboard.
///
/// This class is used to define and work with various data formats that can be
/// stored and retrieved from the clipboard. It provides a convenient way to
/// manage clipboard data formats and their associated identifiers and names.
final class ClipboardFormat {
  /// Creates an instance of [ClipboardFormat] with the specified [formatId] and
  /// an optional [name].
  ///
  /// - The [formatId] parameter represents the unique identifier for the
  /// clipboard format.
  /// - The [name] parameter is an optional human-readable name for the format.
  const ClipboardFormat(this.formatId, {this.name});

  /// The unique identifier of the clipboard format.
  final int formatId;

  /// An optional human-readable name for the clipboard format.
  final String? name;

  /// Represents the Unicode text format in the clipboard.
  static const text = ClipboardFormat(CF_UNICODETEXT, name: 'CF_UNICODETEXT');

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClipboardFormat &&
          formatId == other.formatId &&
          name == other.name;

  @override
  int get hashCode => formatId.hashCode ^ name.hashCode;

  @override
  String toString() => 'ClipboardFormat($formatId, name: $name)';
}
