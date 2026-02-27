import 'package:win32/win32.dart';

import '../core/game_key.dart';

GameKey? mapVirtualKey(int vk) => switch (vk) {
  VK_UP => .up,
  VK_DOWN => .down,
  VK_LEFT => .left,
  VK_RIGHT => .right,
  VK_PAUSE => .pause,
  VK_RETURN => .enter,
  _ => null,
};
