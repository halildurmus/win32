// Demonstrates sampling process memory usage using WMI via
// IWbemRefresher + IWbemObjectAccess.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

const _wmiNamespace = r'ROOT\CIMV2';
const _propertyWorkingSet = 'WorkingSet';

void initializeComAndSecurity() {
  CoInitializeEx(COINIT_MULTITHREADED);
  CoInitializeSecurity(
    null,
    -1,
    null,
    RPC_C_AUTHN_LEVEL_DEFAULT,
    RPC_C_IMP_LEVEL_IMPERSONATE,
    null,
    EOAC_NONE,
  );
}

IWbemServices connectToWmi(Arena arena) {
  final locator = arena.com<IWbemLocator>(WbemLocator);
  final services = locator.connectServer(
    arena.bstr(_wmiNamespace),
    BSTR(nullptr),
    BSTR(nullptr),
    BSTR(nullptr),
    0,
    BSTR(nullptr),
    null,
  );
  if (services == null) {
    throw StateError('Failed to connect to WMI namespace $_wmiNamespace');
  }

  CoSetProxyBlanket(
    services,
    RPC_C_AUTHN_WINNT,
    RPC_C_AUTHZ_NONE,
    null,
    RPC_C_AUTHN_LEVEL_CALL,
    RPC_C_IMP_LEVEL_IMPERSONATE,
    null,
    EOAC_NONE,
  );

  return services;
}

void main() {
  initializeComAndSecurity();

  const processName = 'winlogon';
  const sampleCount = 10;
  const sampleIntervalMs = 500;

  using((arena) {
    final services = arena.adopt(connectToWmi(arena));
    final refresher = arena.com<IWbemRefresher>(WbemRefresher);
    final config = arena.adopt(IWbemConfigureRefresher.from(refresher));

    final ppRefreshable = arena<VTablePointer>();
    final objectPath = arena.pcwstr(
      'Win32_PerfRawData_PerfProc_Process.Name="$processName"',
    );
    config.addObjectByPath(
      services,
      objectPath,
      0,
      null,
      ppRefreshable,
      nullptr,
    );

    if (ppRefreshable.value == nullptr) {
      throw StateError('Process "$processName" not found in WMI');
    }

    final classObject = arena.adopt(IWbemClassObject(ppRefreshable.value));
    final objectAccess = arena.adopt(IWbemObjectAccess.from(classObject));

    final cimType = arena<Int32>();
    final propertyHandle = arena<Int32>();
    objectAccess.getPropertyHandle(
      arena.pcwstr(_propertyWorkingSet),
      cimType,
      propertyHandle,
    );

    for (var i = 0; i < sampleCount; i++) {
      refresher.refresh(WBEM_FLAG_REFRESH_AUTO_RECONNECT);
      final workingSetBytes = objectAccess.readDWORD(propertyHandle.value);
      print(
        '$processName working set: '
        '${(workingSetBytes / 1024).toStringAsFixed(1)} KB',
      );

      Sleep(sampleIntervalMs);
    }
  });
}
