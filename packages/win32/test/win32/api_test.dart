@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

import '../helpers.dart';

void main() {
  setUpAll(LeakTracker.enableInDebug);

  setUp(LeakTracker.reset);

  tearDown(LeakTracker.verifyNoLeaksInDebug);

  group('Win32 API tests', () {
    group('CallNtPowerInformation', () {
      test('returns system battery state', () {
        using((arena) {
          final batteryState = arena<SYSTEM_BATTERY_STATE>();
          final result = CallNtPowerInformation(
            SystemBatteryState,
            null,
            0,
            batteryState,
            sizeOf<SYSTEM_BATTERY_STATE>(),
          );
          check(result).equals(STATUS_SUCCESS);
          final SYSTEM_BATTERY_STATE(
            :AcOnLine,
            :BatteryPresent,
            :Charging,
            :Discharging,
          ) = batteryState.ref;
          check(AcOnLine).isIn([false, true]);
          check(BatteryPresent).isIn([false, true]);
          check(Charging).isIn([false, true]);
          check(Discharging).isIn([false, true]);
        });
      });
    });

    group('CLSIDFromString', () {
      test('converts a string to a CLSID', () {
        using((arena) {
          final lpsz = arena.pcwstr('{42a8b9b0-6b6b-4e3a-8e4a-5b6d9d7b9fe3}');
          final guid = arena.using(CLSIDFromString(lpsz), free);
          check(
            guid.ref.toString(),
          ).equalsIgnoringCase('{42a8b9b0-6b6b-4e3a-8e4a-5b6d9d7b9fe3}');
        });
      });
    });

    group('FindFirstVolume', () {
      test('returns the first volume name', () {
        using((arena) {
          final lpszVolumeName = arena.pwstrBuffer(MAX_PATH);
          final hFindVolume = FindFirstVolume(lpszVolumeName, MAX_PATH).value;
          check(hFindVolume).not((it) => it.equals(INVALID_HANDLE_VALUE));
          final volume = lpszVolumeName.toDartString();
          check(volume).startsWith(r'\\?\');
        });
      });
    });

    group('GetConsoleScreenBufferInfo', () {
      test('returns console screen buffer information', () {
        using((arena) {
          final outputHandle = GetStdHandle(STD_OUTPUT_HANDLE).value;
          check(outputHandle).not((it) => it.equals(INVALID_HANDLE_VALUE));
          final bufferInfo = arena<CONSOLE_SCREEN_BUFFER_INFO>();
          // Skip the test if the console is non-interactive.
          if (GetConsoleScreenBufferInfo(outputHandle, bufferInfo).value) {
            final COORD(X: cursorX, Y: cursorY) =
                bufferInfo.ref.dwCursorPosition;
            final COORD(X: sizeX, Y: sizeY) = bufferInfo.ref.dwSize;
            // Validate that the cursor is within the buffer bounds.
            check(cursorX).isLessOrEqual(sizeX);
            check(cursorY).isLessOrEqual(sizeY);
          }
        });
      });
    });

    group('GetCurrentProcess', () {
      test('returns expected pseudo-handle', () {
        final hProcess = GetCurrentProcess();
        check(hProcess).equals(HANDLE(Pointer.fromAddress(-1)));
      });
    });

    test('GetLastError and SetLastError', () {
      // Calling `GetLastError` for the first time resets the error code,
      // so call it once before `SetLastError` to ensure we get correct results.
      // See: https://github.com/dart-lang/sdk/issues/38832
      GetLastError();

      SetLastError(ERROR_FILE_NOT_FOUND);
      check(GetLastError()).equals(ERROR_FILE_NOT_FOUND);

      SetLastError(ERROR_SUCCESS);
      check(GetLastError()).equals(ERROR_SUCCESS);
    });

    group('GetModuleHandle', () {
      test('returns valid handle for a known module', () {
        using((arena) {
          final moduleName = arena.pcwstr('kernel32.dll');
          final hModule = GetModuleHandle(moduleName).value;
          check(hModule.isNull).isFalse();
        });
      });

      test('returns null pointer for a non-existent module', () {
        using((arena) {
          final moduleName = arena.pcwstr('kernel33_fake_not_a_real.dll');
          final hModule = GetModuleHandle(moduleName).value;
          check(hModule.isNull).isTrue();
        });
      });
    });

    group('GetProcAddress', () {
      test('retrieves valid address for a known function', () {
        using((arena) {
          final moduleName = arena.pcwstr('kernel32.dll');
          final procName = arena.pcstr('Beep');
          final hModule = GetModuleHandle(moduleName).value;
          check(hModule.isNull).isFalse();

          final pGetProc = GetProcAddress(hModule, procName).value;
          check(pGetProc.address).isNonZero();
        });
      });
    });

    group('GetStdHandle', () {
      test('returns standard output handle', () {
        final outputHandle = GetStdHandle(STD_OUTPUT_HANDLE).value;
        check(outputHandle).not((it) => it.equals(INVALID_HANDLE_VALUE));
      });

      test('returns invalid handle value for invalid handle', () {
        final outputHandle = GetStdHandle(const STD_HANDLE(0xFFFF)).value;
        check(outputHandle).equals(INVALID_HANDLE_VALUE);
      });
    });

    group('GetSystemPowerStatus', () {
      test('returns system battery state', () {
        using((arena) {
          final powerStatus = arena<SYSTEM_POWER_STATUS>();
          final result = GetSystemPowerStatus(powerStatus).value;
          check(result).isTrue();
          final SYSTEM_POWER_STATUS(
            :ACLineStatus,
            :BatteryLifePercent,
            :SystemStatusFlag,
          ) = powerStatus.ref;
          check(ACLineStatus).isIn([0, 1, 255]);
          // Sanity check results against some API provided ranges.
          final validBatteryPercentages = [
            for (var i = 0; i <= 100; i += 1) i,
            255,
          ];
          check(BatteryLifePercent).isIn(validBatteryPercentages);
          check(SystemStatusFlag).isIn([0, 1]);
        });
      });
    });

    group('IIDFromString', () {
      test('converts a string to an IID', () {
        using((arena) {
          final lpsz = arena.pcwstr('{317e71c4-e85b-4ecd-a5c8-12e0c7d92d0d}');
          final guid = arena.using(IIDFromString(lpsz), free);
          check(
            guid.ref.toString(),
          ).equalsIgnoringCase('{317e71c4-e85b-4ecd-a5c8-12e0c7d92d0d}');
        });
      });
    });

    group('RegisterClass', () {
      test('registers and unregisters a custom window class successfully', () {
        int windowProc(Pointer hwnd, int msg, int wParam, int lParam) =>
            DefWindowProc(HWND(hwnd), msg, WPARAM(wParam), LPARAM(lParam));

        using((arena) {
          final hInstance = HINSTANCE(GetModuleHandle(null).value);
          check(hInstance.isNull).isFalse();

          final className = arena.pcwstr('CustomWindowClass');
          final lpfnWndProc = NativeCallable<WNDPROC>.isolateLocal(
            windowProc,
            exceptionalReturn: 0,
          );

          final wc = arena<WNDCLASS>();
          wc.ref
            ..style = CS_HREDRAW | CS_VREDRAW
            ..lpfnWndProc = lpfnWndProc.nativeFunction
            ..hInstance = hInstance
            ..lpszClassName = PWSTR(className)
            ..hCursor = LoadCursor(null, IDC_ARROW).value
            ..hbrBackground = HBRUSH(GetStockObject(WHITE_BRUSH));

          try {
            final result = RegisterClass(wc).value;
            check(result).isNonZero();
            check(GetClassInfo(hInstance, className, wc).value).isTrue();
          } finally {
            lpfnWndProc.close();
            check(UnregisterClass(className, hInstance).value).isTrue();
          }
        });
      });
    });
  });
}
