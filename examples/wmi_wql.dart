// Demonstrates querying Windows Management Instrumentation (WMI) using the
// WMI Query Language (WQL).

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

const _wmiNamespace = r'ROOT\CIMV2';
const _queryLanguage = 'WQL';
const _processQuery = 'SELECT Name, ProcessId FROM Win32_Process';

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

  return arena.adopt(services);
}

void main() {
  initializeComAndSecurity();

  using((arena) {
    final services = connectToWmi(arena);
    print('Connected to $_wmiNamespace');
    final enumerator = arena.adopt(
      services.execQuery(
        arena.bstr(_queryLanguage),
        arena.bstr(_processQuery),
        WBEM_FLAG_FORWARD_ONLY | WBEM_FLAG_RETURN_IMMEDIATELY,
        null,
      )!,
    );

    final returned = arena<ULONG>();
    final pObject = arena<VTablePointer>();
    var count = 0;

    while (true) {
      final hr = enumerator.next(WBEM_INFINITE, 1, pObject, returned);
      if (hr.isError) throw WindowsException(hr);
      if (returned.value == 0) break;

      count++;
      final object = arena.adopt(IWbemClassObject(pObject.value));
      final nameVar = arena.using(Variant<String>(), (v) => v.free());
      final pidVar = arena.using(Variant<int>(), (v) => v.free());
      object
        ..get(arena.pcwstr('Name'), 0, nameVar, null, null)
        ..get(arena.pcwstr('ProcessId'), 0, pidVar, null, null);
      final name = nameVar.value;
      final pid = pidVar.value;
      print('[$pid] $name');
    }

    print('\n$count processes enumerated.');
  });
}
