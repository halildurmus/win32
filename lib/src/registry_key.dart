import 'dart:async';
import 'dart:ffi';
import 'dart:isolate';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'registry_key_info.dart';
import 'registry_value.dart';
import 'registry_value_type.dart';
import 'utils.dart';

/// Represents a node in the Windows Registry, structured as a tree of keys
/// that may contain values analogous to files in a filesystem.
final class RegistryKey {
  /// Creates a [RegistryKey] instance with the given [hkey] handle.
  const RegistryKey(this.hkey);

  /// Handle to the current registry key.
  final int hkey;

  /// Creates a new registry key specified by [keyName], or opens it if it
  /// already exists.
  ///
  /// **Note:** Key names are not case-sensitive.
  RegistryKey createKey(String keyName) {
    final lpSubKey = keyName.toNativeUtf16();
    final phkResult = calloc<HKEY>();
    try {
      final retcode = RegCreateKey(hkey, lpSubKey, phkResult);
      if (retcode == WIN32_ERROR.ERROR_SUCCESS) {
        return RegistryKey(phkResult.value);
      }
      throw WindowsException(HRESULT_FROM_WIN32(retcode));
    } finally {
      free(lpSubKey);
      free(phkResult);
    }
  }

  /// Deletes the specified subkey.
  ///
  /// If [recursive] is `true`, all subkeys within it are also deleted.
  ///
  /// **Note:** Key names are not case-sensitive.
  void deleteKey(String keyName, {bool recursive = false}) {
    final lpSubKey = keyName.toNativeUtf16();
    try {
      final retcode = RegDeleteKey(hkey, lpSubKey);
      if (retcode != WIN32_ERROR.ERROR_SUCCESS) {
        if (!recursive) throw WindowsException(HRESULT_FROM_WIN32(retcode));

        final key = createKey(keyName);
        try {
          for (final subKeyName in key.subkeyNames.toList()) {
            key.deleteKey(subKeyName, recursive: true);
          }
        } finally {
          key.close();
        }

        deleteKey(keyName);
      }
    } finally {
      free(lpSubKey);
    }
  }

  /// Sets a registry [value] for the current registry key.
  void createValue(RegistryValue value) {
    final lpValueName = value.name.toNativeUtf16();
    final lpWin32Data = value.toWin32();
    try {
      final retcode = RegSetValueEx(
        hkey,
        lpValueName,
        NULL,
        value.type.value,
        lpWin32Data.data,
        lpWin32Data.lengthInBytes,
      );
      if (retcode != WIN32_ERROR.ERROR_SUCCESS) {
        throw WindowsException(HRESULT_FROM_WIN32(retcode));
      }
    } finally {
      free(lpValueName);
      free(lpWin32Data.data);
    }
  }

  /// Retrieves the registry value identified by [valueName].
  ///
  /// The optional [path] parameter specifies the subkey path to the value.
  /// If omitted, the search defaults to the current key.
  ///
  /// When [expandPaths] is `true`, any environment variables in the string
  /// will be expanded.
  ///
  /// Returns `null` if the value is not found.
  RegistryValue? getValue(
    String valueName, {
    String path = '',
    bool expandPaths = false,
  }) => using((arena) {
    final lpSubKey = path.toNativeUtf16(allocator: arena);
    final lpValue = valueName.toNativeUtf16(allocator: arena);
    final pdwType = arena<DWORD>();
    final pcbData = arena<DWORD>();

    final flags =
        expandPaths
            ? REG_ROUTINE_FLAGS.RRF_RT_ANY
            : REG_ROUTINE_FLAGS.RRF_RT_ANY | REG_ROUTINE_FLAGS.RRF_NOEXPAND;

    // Call first time to find out how much memory we need to allocate
    var retcode = RegGetValue(
      hkey,
      lpSubKey,
      lpValue,
      flags,
      pdwType,
      nullptr,
      pcbData,
    );
    if (retcode == WIN32_ERROR.ERROR_FILE_NOT_FOUND) return null;

    // Now call for real to get the data we need.
    final pvData = arena<BYTE>(pcbData.value);
    retcode = RegGetValue(
      hkey,
      lpSubKey,
      lpValue,
      flags,
      pdwType,
      pvData,
      pcbData,
    );
    final valueType = RegistryValueType.fromWin32(pdwType.value);
    return valueType.toRegistryValue(
      lpValue.toDartString(),
      pvData,
      pcbData.value,
    );
  });

  /// Retrieves a binary value identified by [valueName].
  ///
  /// Returns `null` if the value does not exist or is not a binary value.
  Uint8List? getBinaryValue(String valueName) => switch (getValue(valueName)) {
    BinaryValue(:final value) => value,
    _ => null,
  };

  /// Retrieves an integer value identified by [valueName].
  ///
  /// Returns `null` if the value does not exist or is not an integer.
  int? getIntValue(String valueName) => switch (getValue(valueName)) {
    Int32Value(:final value) || Int64Value(:final value) => value,
    _ => null,
  };

  /// Retrieves a string value identified by [valueName], with optional path
  /// expansion.
  ///
  /// If [expandPaths] is `true`, environment variables in the string will be
  /// expanded.
  ///
  /// Returns `null` if the value does not exist or is not a string.
  String? getStringValue(String valueName, {bool expandPaths = false}) =>
      switch (getValue(valueName, expandPaths: expandPaths)) {
        LinkValue(:final value) ||
        StringValue(:final value) ||
        UnexpandedStringValue(:final value) => value,
        _ => null,
      };

  /// Retrieves a string array value identified by [valueName].
  ///
  /// Returns `null` if the value does not exist or is not a string array.
  List<String>? getStringArrayValue(String valueName) => switch (getValue(
    valueName,
  )) {
    StringArrayValue(:final value) => value,
    _ => null,
  };

  @Deprecated('Use getIntValue instead')
  int? getValueAsInt(String valueName) => getIntValue(valueName);

  @Deprecated('Use getStringValue instead')
  String? getValueAsString(String valueName, {bool expandPaths = false}) =>
      getStringValue(valueName, expandPaths: expandPaths);

  /// Deletes a value identified by [valueName] from the current registry key.
  ///
  /// **Note:** Value names are not case-sensitive.
  void deleteValue(String valueName) {
    final lpValueName = valueName.toNativeUtf16();
    try {
      final retcode = RegDeleteValue(hkey, lpValueName);
      if (retcode != WIN32_ERROR.ERROR_SUCCESS) {
        throw WindowsException(HRESULT_FROM_WIN32(retcode));
      }
    } finally {
      free(lpValueName);
    }
  }

  /// Renames a subkey from [oldName] to [newName].
  void renameSubkey(String oldName, String newName) {
    final lpSubKeyName = oldName.toNativeUtf16();
    final lpNewKeyName = newName.toNativeUtf16();
    try {
      final retcode = RegRenameKey(hkey, lpSubKeyName, lpNewKeyName);
      if (retcode != WIN32_ERROR.ERROR_SUCCESS) {
        throw WindowsException(HRESULT_FROM_WIN32(retcode));
      }
    } finally {
      free(lpSubKeyName);
      free(lpNewKeyName);
    }
  }

  /// Emits an event when the current registry key changes.
  ///
  /// If [includeSubkeys] is `true`, changes in the subkeys will also trigger
  /// events.
  Stream<void> onChanged({bool includeSubkeys = false}) {
    ReceivePort? receivePort;
    SendPort? isolateStopPort;
    StreamSubscription<dynamic>? receivePortSubscription;
    StreamController<void>? controller;

    controller = StreamController<void>.broadcast(
      onListen: () async {
        // Create a ReceivePort to listen for messages from the isolate.
        receivePort = ReceivePort();

        // Start the isolate and pass the message port.
        await Isolate.spawn(_startListening, (
          receivePort!.sendPort,
          includeSubkeys,
        ));

        // Listen for messages from the isolate.
        receivePortSubscription = receivePort!.listen((message) {
          if (message is SendPort) {
            isolateStopPort = message;
          } else if (message == null) {
            controller?.add(null); // Notify listeners of clipboard change.
          } else if (message is Error) {
            receivePortSubscription?.cancel();
            receivePort?.close();
            controller?.addError(message);
            controller?.close();
          }
        });
      },
      onCancel: () async {
        isolateStopPort?.send(null); // Signal to stop the isolate.
        // Give the isolate time to shut down gracefully.
        await Future.delayed(const Duration(milliseconds: 5));
        await receivePortSubscription?.cancel();
        receivePort?.close();
        await controller?.close();
      },
    );

    return controller.stream;
  }

  // Run the listening operation in a separate isolate.
  Future<void> _startListening(
    (SendPort mainSendPort, bool includeSubkey) arg,
  ) async {
    final mainSendPort = arg.$1;
    final includeSubkeys = arg.$2;

    // Create a ReceivePort for stopping the isolate.
    final stopPort = ReceivePort();

    // Send the SendPort of stopPort back to the main isolate.
    mainSendPort.send(stopPort.sendPort);

    final hEvent = CreateEvent(nullptr, TRUE, FALSE, nullptr);
    if (hEvent == NULL) {
      stopPort.close();
      mainSendPort.send(WindowsException(HRESULT_FROM_WIN32(GetLastError())));
      return;
    }

    // Whether the message loop should continue running.
    var isRunning = true;

    StreamSubscription<dynamic>? stopPortSubscription;

    // Listen for the stop signal to gracefully shut down the isolate.
    stopPortSubscription = stopPort.listen((message) async {
      await stopPortSubscription?.cancel();
      stopPort.close();
      isRunning = false;
    });

    try {
      while (isRunning) {
        // Set up registry change notification.
        final result = RegNotifyChangeKeyValue(
          hkey,
          includeSubkeys ? TRUE : FALSE,
          REG_NOTIFY_FILTER.REG_NOTIFY_CHANGE_NAME |
              REG_NOTIFY_FILTER.REG_NOTIFY_CHANGE_ATTRIBUTES |
              REG_NOTIFY_FILTER.REG_NOTIFY_CHANGE_LAST_SET |
              REG_NOTIFY_FILTER.REG_NOTIFY_CHANGE_SECURITY,
          hEvent,
          TRUE,
        );
        if (result != WIN32_ERROR.ERROR_SUCCESS) {
          mainSendPort.send(WindowsException(HRESULT_FROM_WIN32(result)));
          break;
        }

        // Polling with 10ms timeout to allow periodic check for stop signal.
        while (true) {
          final result = WaitForSingleObject(hEvent, 10);
          if (result == WAIT_EVENT.WAIT_OBJECT_0) {
            mainSendPort.send(null); // Notify listeners of the change.
            ResetEvent(hEvent); // Reset the event for future notifications.
            break;
          } else if (result == WAIT_EVENT.WAIT_TIMEOUT) {
            // Yield control to the Dart event loop to allow for the stop
            // signal to be processed.
            await Future.delayed(Duration.zero);
          } else {
            // An unexpected result, stop listening.
            await stopPortSubscription.cancel();
            stopPort.close();
            isRunning = false;
            final error = WindowsException(HRESULT_FROM_WIN32(GetLastError()));
            mainSendPort.send(error);
            break;
          }
        }
      }
    } finally {
      CloseHandle(hEvent);
    }
  }

  /// Retrieves details about the current registry key.
  RegistryKeyInfo queryInfo() => using((arena) {
    final lpClass = arena<Uint16>(256).cast<Utf16>();
    final lpcchClass = arena<DWORD>()..value = 256;
    final lpcSubKeys = arena<DWORD>();
    final lpcbMaxSubKeyLen = arena<DWORD>();
    final lpcbMaxClassLen = arena<DWORD>();
    final lpcValues = arena<DWORD>();
    final lpcbMaxValueNameLen = arena<DWORD>();
    final lpcbMaxValueLen = arena<DWORD>();
    final lpcbSecurityDescriptor = arena<DWORD>();
    final lpftLastWriteTime = arena<FILETIME>();

    final retcode = RegQueryInfoKey(
      hkey,
      lpClass,
      lpcchClass,
      nullptr,
      lpcSubKeys,
      lpcbMaxSubKeyLen,
      lpcbMaxClassLen,
      lpcValues,
      lpcbMaxValueNameLen,
      lpcbMaxValueLen,
      lpcbSecurityDescriptor,
      lpftLastWriteTime,
    );

    if (retcode != WIN32_ERROR.ERROR_SUCCESS) {
      throw WindowsException(HRESULT_FROM_WIN32(retcode));
    }

    final lastWriteTime = lpftLastWriteTime.toDateTime();
    return RegistryKeyInfo(
      lpClass.toDartString(),
      lpcSubKeys.value,
      lpcbMaxSubKeyLen.value,
      lpcbMaxClassLen.value,
      lpcValues.value,
      lpcbMaxValueNameLen.value,
      lpcbMaxValueLen.value,
      lpcbSecurityDescriptor.value,
      lastWriteTime,
    );
  });

  /// Enumerates the names of all subkeys within the current registry key.
  Iterable<RegistryValue> get values sync* {
    final keyInfo = queryInfo();

    // Allocate enough length for the maximum value name (including extra for
    // the null terminator).
    final nameMaxLength = keyInfo.valueNameMaxLength + 1;
    final lpName = wsalloc(nameMaxLength);
    final lpcchName = calloc<DWORD>();
    final lpType = calloc<DWORD>();
    final lpData = calloc<BYTE>(keyInfo.valueDataMaxSizeInBytes);
    final lpcchData = calloc<DWORD>();

    try {
      for (var idx = 0; idx < keyInfo.valuesCount; idx++) {
        // Set these sizes each time, since they're reset to the actual length
        // by the call.
        lpcchName.value = nameMaxLength;
        lpcchData.value = keyInfo.valueDataMaxSizeInBytes;

        final retcode = RegEnumValue(
          hkey,
          idx,
          lpName,
          lpcchName,
          nullptr,
          lpType,
          lpData,
          lpcchData,
        );
        if (retcode == WIN32_ERROR.ERROR_SUCCESS) {
          final valueType = RegistryValueType.fromWin32(lpType.value);
          yield valueType.toRegistryValue(
            lpName.toDartString(),
            lpData,
            lpcchData.value,
          );
        }
      }
    } finally {
      free(lpName);
      free(lpcchName);
      free(lpType);
      free(lpData);
      free(lpcchData);
    }
  }

  /// Enumerates the values under the current registry key.
  Iterable<String> get subkeyNames sync* {
    final keyInfo = queryInfo();

    // Allocate enough length for the maximum key name (including extra for the
    // null terminator).
    final keyNameLength = keyInfo.subKeyNameMaxLength + 1;
    final lpName = wsalloc(keyNameLength);
    final lpcchName = calloc<DWORD>();

    try {
      for (var idx = 0; idx < keyInfo.subKeyCount; idx++) {
        // Set this size each time, since it's reset to the actual length by the
        // call.
        lpcchName.value = keyNameLength;

        final retcode = RegEnumKeyEx(
          hkey,
          idx,
          lpName,
          lpcchName,
          nullptr,
          nullptr,
          nullptr,
          nullptr,
        );
        if (retcode == WIN32_ERROR.ERROR_SUCCESS) yield lpName.toDartString();
      }
    } finally {
      free(lpName);
      free(lpcchName);
    }
  }

  /// Releases the handle associated with the registry key.
  void close() => RegCloseKey(hkey);
}
