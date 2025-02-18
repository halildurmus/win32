import 'package:win32/win32.dart';

import 'canvas.dart';
import 'level.dart';

//
// Game flow
// Only Game and Canvas are exposed to main().
//
class Game {
  final Canvas canvas;
  Level level;

  bool isPaused;

  Game(this.canvas) : isPaused = false, level = Level(canvas);

  bool get isGameOver => level.isGameOver;

  /// Handles player's key press
  bool keyPress(int vk) {
    // When pausing, ignore keys other than PAUSE and ENTER
    if (vk != VIRTUAL_KEY.VK_PAUSE && vk != VIRTUAL_KEY.VK_RETURN && isPaused) {
      return false;
    }

    switch (vk) {
      case VIRTUAL_KEY.VK_UP:
        level.rotate();
      case VIRTUAL_KEY.VK_DOWN:
        level.move(0, -1);
      case VIRTUAL_KEY.VK_LEFT:
        level.move(-1, 0);
      case VIRTUAL_KEY.VK_RIGHT:
        level.move(1, 0);
      case VIRTUAL_KEY.VK_SPACE:
        level.rotate();
      case VIRTUAL_KEY.VK_PAUSE:
        if (isPaused) {
          resumeGame();
        } else {
          pauseGame();
        }
      case VIRTUAL_KEY.VK_RETURN:
        // You can only restart on game over
        if (isGameOver) {
          restart();
        }
      default:
        return false;
    }
    return true;
  }

  void pauseGame() {
    // Don't pause if game is over
    if (isGameOver) return;

    isPaused = true;
    drawPause();
    level
      ..drawScore()
      ..drawSpeed();
  }

  void resumeGame() {
    if (isGameOver) return;

    isPaused = false;
    level
      ..drawScore()
      ..drawSpeed();
  }

  /// Called on WM_PAINT
  void repaint() {
    canvas.drawInterface();

    level
      ..drawScore()
      ..drawSpeed()
      ..drawNextPiece()
      ..drawBoard();

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

    // Update game data and redraw
    level
      ..timerUpdate()
      ..drawBoard();
  }

  /// Restarts the game
  void restart() {
    level = Level(canvas);
    isPaused = false;
    repaint();
  }

  /// Shows GAME OVER message
  void drawGameOver() {
    canvas
      ..drawText('GAME OVER', 3, 10)
      ..drawText('Press ENTER to restart', 2, 9);
  }

  /// Shows PAUSE message
  void drawPause() {
    canvas
      ..drawText('PAUSE', 4, 10)
      ..drawText('Press PAUSE again to continue', 1, 9);
  }
}
