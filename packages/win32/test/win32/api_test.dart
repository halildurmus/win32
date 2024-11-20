@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

import '../helpers.dart';

void main() {
  group('Win32 API tests', () {
    group('CallNtPowerInformation', () {
      test('returns system battery state', () {
        final batteryState = loggingCalloc<SYSTEM_BATTERY_STATE>();
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
        free(batteryState);
      });
    });

    group('CLSIDFromString', () {
      test('converts a string to a CLSID', () {
        final lpsz = w('{42a8b9b0-6b6b-4e3a-8e4a-5b6d9d7b9fe3}');
        final guid = CLSIDFromString(lpsz.ptr);
        check(
          guid.ref.toString(),
        ).equalsIgnoringCase('{42a8b9b0-6b6b-4e3a-8e4a-5b6d9d7b9fe3}');
        free(guid);
      });
    });

    group('FindFirstVolume', () {
      test('returns the first volume name', () {
        final lpszVolumeName = Pwstr.allocate(MAX_PATH);
        final hFindVolume = FindFirstVolume(lpszVolumeName.ptr, MAX_PATH);
        check(hFindVolume).not((it) => it.equals(INVALID_HANDLE_VALUE));
        final volume = lpszVolumeName.toDartString();
        check(volume).startsWith(r'\\?\');
        lpszVolumeName.free();
      });
    });

    group('GetConsoleScreenBufferInfo', () {
      test('returns console screen buffer information', () {
        final outputHandle = GetStdHandle(STD_OUTPUT_HANDLE);
        check(outputHandle).not((it) => it.equals(INVALID_HANDLE_VALUE));
        final bufferInfo = loggingCalloc<CONSOLE_SCREEN_BUFFER_INFO>();
        try {
          // Skip the test if the console is non-interactive.
          if (GetConsoleScreenBufferInfo(outputHandle, bufferInfo)) {
            final COORD(X: cursorX, Y: cursorY) =
                bufferInfo.ref.dwCursorPosition;
            final COORD(X: sizeX, Y: sizeY) = bufferInfo.ref.dwSize;
            // Validate that the cursor is within the buffer bounds.
            check(cursorX).isLessOrEqual(sizeX);
            check(cursorY).isLessOrEqual(sizeY);
          }
        } finally {
          free(bufferInfo);
        }
      });
    });

    group('GetCurrentProcess', () {
      test('returns expected pseudo-handle', () {
        final hProcess = GetCurrentProcess();
        check(hProcess).equals(-1);
      });
    });

    test('GetLastError and SetLastError', () {
      // Calling `GetLastError` for the first time resets the error code, so call
      // it once before `SetLastError` to ensure we get correct results. This is
      // probably related to https://github.com/dart-lang/sdk/issues/38832.
      GetLastError();

      SetLastError(ERROR_FILE_NOT_FOUND);
      check(GetLastError()).equals(ERROR_FILE_NOT_FOUND);

      SetLastError(ERROR_SUCCESS);
      check(GetLastError()).equals(ERROR_SUCCESS);
    });

    group('GetModuleHandle', () {
      test('returns valid handle for a known module', () {
        final moduleName = w('kernel32.dll');
        try {
          final hModule = GetModuleHandle(moduleName.ptr);
          check(hModule).isNonZero();
        } finally {
          moduleName.free();
        }
      });

      test('returns zero for a non-existent module', () {
        final moduleName = w('kernel33_fake_not_a_real.dll');
        try {
          final hModule = GetModuleHandle(moduleName.ptr);
          check(hModule).isZero();
        } finally {
          moduleName.free();
        }
      });
    });

    group('GetProcAddress', () {
      test('retrieves valid address for a known function', () {
        final moduleName = w('kernel32.dll');
        final procName = s('Beep');
        try {
          final hModule = GetModuleHandle(moduleName.ptr);
          check(hModule).isNonZero();

          final pGetProc = GetProcAddress(hModule, procName.ptr);
          check(pGetProc.address).isNonZero();
        } finally {
          moduleName.free();
          procName.free();
        }
      });
    });

    group('GetStdHandle', () {
      test('returns standard output handle', () {
        final outputHandle = GetStdHandle(STD_OUTPUT_HANDLE);
        check(outputHandle).not((it) => it.equals(INVALID_HANDLE_VALUE));
      });

      test('returns invalid handle value for invalid handle', () {
        final outputHandle = GetStdHandle(const STD_HANDLE(0xFFFF));
        check(outputHandle).equals(INVALID_HANDLE_VALUE);
      });
    });

    group('GetSystemPowerStatus', () {
      test('returns system battery state', () {
        final powerStatus = loggingCalloc<SYSTEM_POWER_STATUS>();
        final result = GetSystemPowerStatus(powerStatus);
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
        free(powerStatus);
      });
    });

    group('IIDFromString', () {
      test('converts a string to an IID', () {
        final lpsz = w('{317e71c4-e85b-4ecd-a5c8-12e0c7d92d0d}');
        final guid = IIDFromString(lpsz.ptr);
        check(
          guid.ref.toString(),
        ).equalsIgnoringCase('{317e71c4-e85b-4ecd-a5c8-12e0c7d92d0d}');
        free(guid);
      });
    });

    group('RegisterClass', () {
      test('registers and unregisters a custom window class successfully', () {
        final hInstance = GetModuleHandle(null);
        check(hInstance).isNonZero();

        final className = w('CustomWindowClass');
        final lpfnWndProc = NativeCallable<WNDPROC>.isolateLocal(
          DefWindowProc,
          exceptionalReturn: 0,
        );

        final wc = loggingCalloc<WNDCLASS>();
        wc.ref
          ..style = CS_HREDRAW | CS_VREDRAW
          ..lpfnWndProc = lpfnWndProc.nativeFunction
          ..hInstance = hInstance
          ..lpszClassName = className.ptr
          ..hCursor = LoadCursor(null, IDC_ARROW)
          ..hbrBackground = GetStockObject(WHITE_BRUSH);

        try {
          final result = RegisterClass(wc);
          check(result).isNonZero();
          check(GetClassInfo(hInstance, className.ptr, wc)).isTrue();
        } finally {
          lpfnWndProc.close();
          free(wc);
          check(UnregisterClass(className.ptr, hInstance)).isTrue();
          className.free();
        }
      });
    });
  });
}
