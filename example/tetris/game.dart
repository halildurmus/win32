import 'package:win32/win32.dart';

import 'drawengine.dart';
import 'level.dart';

//
// Game flow.
// Only Game and DrawEngine are exposed to main().
//
class Game {
  DrawEngine de;
  Level level;

  bool isPaused;

  Game(DrawEngine de)
      : de = de,
        isPaused = false {
    print('Game constructor');
    level = Level(de, 10, 20);
  }

  bool get isGameOver => level.isGameOver();

  /// Handles player's key press
  bool keyPress(int vk) {
    // When pausing, ignore keys other than PAUSE and ENTER
    if (vk != VK_PAUSE && vk != VK_RETURN && isPaused) return false;

    switch (vk) {
      case VK_UP:
        level.rotate();
        break;
      case VK_DOWN:
        level.move(0, -1);
        break;
      case VK_LEFT:
        level.move(-1, 0);
        break;
      case VK_RIGHT:
        level.move(1, 0);
        break;
      case VK_SPACE:
        level.rotate();
        break;
      case VK_PAUSE:
        pause(!isPaused);
        break;
      case VK_RETURN:
        // You can only restart on game over
        if (level.isGameOver()) {
          restart();
        }
        break;
      default:
        return false;
    }
    return true;
  }

  /// Pass true to pause, pass false to resume
  void pause(bool paused) {
    // Don't pause if game is over
    if (isGameOver) return;

    isPaused = paused;
    if (paused) drawPause();
    level.drawScore();
    level.drawSpeed();
  }

  /// Called on WM_PAINT
  void repaint() {
    print('repaint');
    de.drawInterface();
    level.drawScore();
    level.drawSpeed();
    level.drawNextPiece();
    level.drawBoard();
    if (isGameOver) {
      drawGameOver();
    } else if (isPaused) {
      drawPause();
    }
  }

  /// Updates data or graphics
  void timerUpdate() {
    // Don't update game when pausing
    if (isPaused) {
      return;
    }

    // If game is over, show GAME OVER
    if (isGameOver) {
      isPaused = true;
      drawGameOver();
      return;
    }

    // Update game data
    level.timerUpdate();

    // Redraw
    level.drawBoard();
  }

  /// Restarts the game
  void restart() {
    level = Level(de, 10, 20);
    isPaused = false;
    repaint();
  }

  /// Shows GAME OVER message
  void drawGameOver() {
    de.drawText('GAME OVER', 3, 10);
    de.drawText('Press ENTER to restart', 2, 9);
  }

  /// Shows PAUSE message
  void drawPause() {
    de.drawText('PAUSE', 4, 10);
    de.drawText('Press PAUSE again to continue', 1, 9);
  }
}
