// Demonstrates getting perf information from the Windows Management
// Instrumentation (WMI) API using the IWbemObjectAccess interface.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void initializeCom() {
  CoInitializeEx(COINIT_MULTITHREADED);

  // Initialize security model
  CoInitializeSecurity(
    null,
    -1, // COM negotiates service
    null, // Authentication services
    RPC_C_AUTHN_LEVEL_DEFAULT, // authentication
    RPC_C_IMP_LEVEL_IMPERSONATE, // Impersonation
    null, // Authentication info
    EOAC_NONE, // Additional capabilities
  );
}

IWbemServices connectWMI(IWbemLocator pLoc) {
  final networkResource = b(r'ROOT\CIMV2');
  // Connect to the root\cimv2 namespace with the current user and obtain
  // pointer pSvc to make IWbemServices calls.
  final services = pLoc.connectServer(
    networkResource.ptr,
    nullptr,
    nullptr,
    nullptr,
    NULL,
    nullptr,
    null,
  )!;

  CoSetProxyBlanket(
    services, // the proxy to set
    RPC_C_AUTHN_WINNT, // authentication service
    RPC_C_AUTHZ_NONE, // authorization service
    null, // Server principal name
    RPC_C_AUTHN_LEVEL_CALL, // authentication level
    RPC_C_IMP_LEVEL_IMPERSONATE, // impersonation level
    null, // client identity
    EOAC_NONE, // proxy capabilities
  );

  return services;
}

void main() {
  const processToMonitor = 'winlogon';

  initializeCom();

  using((arena) {
    final locator = createInstance<IWbemLocator>(WbemLocator);
    final services = connectWMI(locator);

    final refresher = createInstance<IWbemRefresher>(WbemRefresher);
    final pConfig = IWbemConfigureRefresher.from(refresher);
    final ppRefreshable = loggingCalloc<VTablePointer>();

    // Add the instance to be refreshed.
    final path = w(
      'Win32_PerfRawData_PerfProc_Process.Name="$processToMonitor"',
    );
    pConfig.addObjectByPath(
      services,
      path.ptr,
      0,
      null,
      ppRefreshable,
      nullptr,
    );

    final classObject = IWbemClassObject(ppRefreshable.value);
    free(ppRefreshable);
    final objectAccess = IWbemObjectAccess.from(classObject);

    final cimType = arena<Int32>();
    final plHandle = arena<Int32>();

    final propertyName = w('WorkingSet');
    objectAccess.getPropertyHandle(propertyName.ptr, cimType, plHandle);

    for (var x = 0; x < 10; x++) {
      refresher.refresh(WBEM_FLAG_REFRESH_AUTO_RECONNECT);
      final workingSetBytes = objectAccess.readDWORD(plHandle.value);
      print(
        'Winlogon process is using ${workingSetBytes / 1000}'
        ' kilobytes of working set.',
      );

      Sleep(1000); // Sleep for a second.
    }
  });
}
