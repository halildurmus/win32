import 'dart:async';
import 'dart:isolate';
import 'dart:math';

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/src/_internal/win32.dart';
import 'package:win32/win32.dart';

import '../helpers.dart';

void main() async {
  group('win32.h', () {
    const testRuns = 100;
    final random = Random();

    // Generates random delays between 0 and 100 ms.
    Future<void> randomDelay() async {
      final delay = random.nextInt(100);
      await Future.delayed(Duration(milliseconds: delay));
    }

    test('verify thread-safe last error handling', () async {
      // The test verifies that the last error value is properly managed across
      // threads, ensuring that each thread maintains its own error value and
      // that setting the error in one thread does not impact others.
      await Future.wait([
        Isolate.run(() async {
          const taskId = 1;
          for (var i = 0; i < testRuns; i++) {
            setLastError(taskId);
            check(GetLastError()).equals(const WIN32_ERROR(taskId));
            await randomDelay();
          }
        }),

        Isolate.run(() async {
          const taskId = 2;
          for (var i = 0; i < testRuns; i++) {
            setLastError(taskId);
            check(GetLastError()).equals(const WIN32_ERROR(taskId));
            await randomDelay();
          }
        }),

        Isolate.run(() async {
          const taskId = 3;
          for (var i = 0; i < testRuns; i++) {
            setLastError(taskId);
            check(GetLastError()).equals(const WIN32_ERROR(taskId));
            await randomDelay();
          }
        }),

        Isolate.run(() {
          const taskId = 4;
          for (var i = 0; i < testRuns; i++) {
            setLastError(taskId);
            check(GetLastError()).equals(const WIN32_ERROR(taskId));
          }
        }),
      ]);
    });

    test('releaseIUnknown decrements ref count', () {
      initializeCom();
      final dialog = createInstance<IFileOpenDialog>(FileOpenDialog)..addRef();
      check(refCount(dialog)).equals(2);
      releaseIUnknown(dialog.ptr);
      check(refCount(dialog)).equals(1);
      check(dialog.release()).isZero();
    });
  });
}
