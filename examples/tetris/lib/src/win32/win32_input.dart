import 'package:win32/win32.dart';

import '../core/game_key.dart';

GameKey? mapVirtualKey(int vk) => switch (vk) {
  VK_LEFT => .left,
  VK_RIGHT => .right,
  VK_DOWN => .softDrop,
  VK_UP => .rotate,
  VK_SPACE => .hardDrop,
  VK_PAUSE => .pause,
  VK_RETURN => .enter,
  _ => null,
};
