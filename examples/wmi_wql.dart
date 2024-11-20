// Demonstrates getting information from the Windows Management Instrumentation
// (WMI) API using the WMI Query Language (WQL).

import 'dart:ffi';

import 'package:win32/win32.dart';

void main() {
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

  // Obtain the initial locator to Windows Management on a particular host
  // computer.
  final locator = CoCreateInstance<IWbemLocator>(
    WbemLocator.ptr,
    null,
    CLSCTX_INPROC_SERVER,
  );

  final networkResource = b(r'ROOT\CIMV2');

  // Connect to the root\cimv2 namespace with the current user and obtain
  // pointer pSvc to make IWbemServices calls.
  final services = locator.connectServer(
    networkResource.ptr,
    nullptr,
    nullptr,
    nullptr,
    NULL,
    nullptr,
    null,
  )!;
  print(r'Connected to ROOT\CIMV2 WMI namespace');

  // Set the IWbemServices proxy so that impersonation of the user (client)
  // occurs.
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

  final queryLanguage = b('WQL');
  final query = b('SELECT * FROM Win32_Process');

  // Use the IWbemServices pointer to make requests of WMI.
  // For example, query for all the running processes
  final enumerator = services.execQuery(
    queryLanguage.ptr,
    query.ptr,
    WBEM_FLAG_FORWARD_ONLY | WBEM_FLAG_RETURN_IMMEDIATELY,
    null,
  )!;

  final uReturn = loggingCalloc<ULONG>();

  var idx = 0;
  while (enumerator.ptr.address > 0) {
    final pClsObj = loggingCalloc<VTablePointer>();
    final hr = enumerator.next(WBEM_INFINITE, 1, pClsObj, uReturn);
    if (hr.isError) {
      print('Next failed: ${hr.message}');
      free(pClsObj);
      free(uReturn);
      break;
    }

    // Break out of the while loop if we've run out of processes to inspect
    if (uReturn.value == 0) {
      free(pClsObj);
      free(uReturn);
      break;
    }

    idx++;

    final clsObj = IWbemClassObject(pClsObj.value);
    free(pClsObj);

    final vtProp = Variant();
    final name = w('Name');
    clsObj.get(name.ptr, 0, vtProp.ptr, null, null);
    print('Process: ${vtProp.value}');
  }
  print('$idx processes found.');
}
