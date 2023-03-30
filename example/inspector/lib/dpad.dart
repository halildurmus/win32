import 'dart:math';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:win32_gamepad/win32_gamepad.dart';

class DpadIcon extends StatelessWidget {
  final Direction direction;
  const DpadIcon({Key? key, required this.direction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // For consistency, rotate a single arrow rather than use different arrows
    // (FluentIcons seems to be missing some directions).
    const icon = Icon(FluentIcons.up);

    switch (direction) {
      case Direction.west:
        return Transform.rotate(angle: pi * 6 / 4, child: icon);
      case Direction.northwest:
        return Transform.rotate(angle: pi * 7 / 4, child: icon);
      case Direction.north:
        return Transform.rotate(angle: 0, child: icon);
      case Direction.northeast:
        return Transform.rotate(angle: pi * 1 / 4, child: icon);
      case Direction.east:
        return Transform.rotate(angle: pi * 2 / 4, child: icon);
      case Direction.southeast:
        return Transform.rotate(angle: pi * 3 / 4, child: icon);
      case Direction.south:
        return Transform.rotate(angle: pi, child: icon);
      case Direction.southwest:
        return Transform.rotate(angle: pi * 5 / 4, child: icon);
      default:
        return const Icon(FluentIcons.location_outline);
    }
  }
}
