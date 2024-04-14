// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:math';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:win32_gamepad/win32_gamepad.dart';

class DpadIcon extends StatelessWidget {
  const DpadIcon({super.key, required this.direction});

  final Direction direction;

  @override
  Widget build(BuildContext context) {
    // For consistency, rotate a single arrow rather than use different arrows
    // (FluentIcons seems to be missing some directions).
    const arrowIcon = Icon(FluentIcons.up);
    return switch (direction) {
      Direction.west => Transform.rotate(angle: pi * 6 / 4, child: arrowIcon),
      Direction.northwest =>
        Transform.rotate(angle: pi * 7 / 4, child: arrowIcon),
      Direction.north => Transform.rotate(angle: 0, child: arrowIcon),
      Direction.northeast =>
        Transform.rotate(angle: pi * 1 / 4, child: arrowIcon),
      Direction.east => Transform.rotate(angle: pi * 2 / 4, child: arrowIcon),
      Direction.southeast =>
        Transform.rotate(angle: pi * 3 / 4, child: arrowIcon),
      Direction.south => Transform.rotate(angle: pi, child: arrowIcon),
      Direction.southwest =>
        Transform.rotate(angle: pi * 5 / 4, child: arrowIcon),
      Direction.center => const Icon(FluentIcons.location_outline)
    };
  }
}
