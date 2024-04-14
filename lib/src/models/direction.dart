// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// The compass point represented by the directional pad.
enum Direction {
  /// Left.
  west,

  /// Left and up.
  northwest,

  /// Up.
  north,

  /// Up and right.
  northeast,

  /// Right.
  east,

  /// Down and right.
  southeast,

  /// Down.
  south,

  /// Down and left.
  southwest,

  /// Neutral (not pressed).
  center
}
