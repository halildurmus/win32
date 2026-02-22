import 'package:win32/win32.dart';

import '../core/game_key.dart';

GameKey? mapVirtualKey(int vk) => switch (vk) {
  VK_UP => GameKey.up,
  VK_DOWN => GameKey.down,
  VK_LEFT => GameKey.left,
  VK_RIGHT => GameKey.right,
  VK_PAUSE => GameKey.pause,
  VK_RETURN => GameKey.enter,
  _ => null,
};
