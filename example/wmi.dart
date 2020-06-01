// wmi.dart

// Demonstrates getting information from the Windows Management
// Instrumentation (WMI) API

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  // Initialize COM
  var hres = CoInitializeEx(nullptr, COINIT_MULTITHREADED);
  if (FAILED(hres)) {
    throw COMException(hres);
  }

  // Initialize
  hres = CoInitializeSecurity(
      nullptr,
      -1, // COM negotiates service
      nullptr, // Authentication services
      nullptr, // Reserved
      RPC_C_AUTHN_LEVEL_DEFAULT, // authentication
      RPC_C_IMP_LEVEL_IMPERSONATE, // Impersonation
      nullptr, // Authentication info
      EOLE_AUTHENTICATION_CAPABILITIES.EOAC_NONE, // Additional capabilities
      nullptr // Reserved
      );

  if (FAILED(hres)) {
    final exception = COMException(hres);
    print(exception.toString());

    CoUninitialize();
    throw exception; // Program has failed.
  }

  // Obtain the initial locator to Windows Management
  // on a particular host computer.
  IWbemLocator pLoc = IWbemLocator(COMObject.allocate().addressOf); // CHECK

  hres = CoCreateInstance(
      GUID.fromString(CLSID_WbemLocator).addressOf,
      nullptr,
      CLSCTX_INPROC_SERVER,
      GUID.fromString(IID_IWbemLocator).addressOf,
      pLoc.ptr.cast()); // CHECK

  if (FAILED(hres)) {
    final exception = COMException(hres);
    print(exception.toString());

    CoUninitialize();
    throw exception;
  }

  IWbemServices pSvc = IWbemServices(COMObject.allocate().addressOf); // CHECK

  // Connect to the root\cimv2 namespace with the
  // current user and obtain pointer pSvc
  // to make IWbemServices calls.

  hres = pLoc.ConnectServer(
      TEXT('ROOT\\CIMV2'), // WMI namespace
      nullptr, // User name
      nullptr, // User password
      nullptr, // Locale
      NULL, // Security flags
      nullptr, // Authority
      nullptr, // Context object
      pSvc.ptr.cast() // IWbemServices proxy // CHECK
      );

  if (FAILED(hres)) {
    final exception = COMException(hres);
    print(exception.toString());

    pLoc.Release();
    CoUninitialize();
    throw exception; // Program has failed.
  }

  print('Connected to ROOT\\CIMV2 WMI namespace');

  // Set the IWbemServices proxy so that impersonation
  // of the user (client) occurs.
  hres = CoSetProxyBlanket(
      pSvc.ptr.cast(), // the proxy to set // CHECK
      RPC_C_AUTHN_WINNT, // authentication service
      RPC_C_AUTHZ_NONE, // authorization service
      nullptr, // Server principal name
      RPC_C_AUTHN_LEVEL_CALL, // authentication level
      RPC_C_IMP_LEVEL_IMPERSONATE, // impersonation level
      nullptr, // client identity
      EOLE_AUTHENTICATION_CAPABILITIES.EOAC_NONE // proxy capabilities
      );

  if (FAILED(hres)) {
    final exception = COMException(hres);
    print(exception.toString());
    pSvc.Release();
    pLoc.Release();
    CoUninitialize();
    throw exception; // Program has failed.
  }

  // Use the IWbemServices pointer to make requests of WMI.
  // Make requests here:

  // For example, query for all the running processes
  IEnumWbemClassObject pEnumerator =
      IEnumWbemClassObject(COMObject.allocate().addressOf); // CHECK
  ;
  hres = pSvc.ExecQuery(
      TEXT('WQL'),
      TEXT('SELECT * FROM Win32_Process'),
      WBEM_GENERIC_FLAG_TYPE.WBEM_FLAG_FORWARD_ONLY |
          WBEM_GENERIC_FLAG_TYPE.WBEM_FLAG_RETURN_IMMEDIATELY,
      nullptr,
      pEnumerator.ptr.cast());

  if (FAILED(hres)) {
    final exception = COMException(hres);
    print(exception.toString());
    pSvc.Release();
    pLoc.Release();
    CoUninitialize();
    throw exception; // Program has failed.
  } else {
    IWbemClassObject pclsObj = IWbemClassObject(COMObject.allocate().addressOf);
    final uReturn = allocate<Uint32>();

    while (pEnumerator.ptr.address > 0) {
      hres = pEnumerator.Next(
          WBEM_TIMEOUT_TYPE.WBEM_INFINITE, 1, pclsObj.ptr.cast(), uReturn);

      if (0 == uReturn.value) {
        break;
      }

      Pointer vtProp = allocate<Uint16>(count: 132); // CHECK

      // Get the value of the Name property
      hres = pclsObj.Get(TEXT('Name'), 0, vtProp, nullptr, nullptr);

      // First 4 x 16 entries can be ignored, the rest is a BSTR
      Pointer<Utf16> process = vtProp.elementAt(4).cast();
      print('Process Name : ${process.unpackString(128)}');
      // VariantClear(vtProp);

      pclsObj.Release();
    }
  }

  // Cleanup
  // ========

  pSvc.Release();
  pLoc.Release();
  pEnumerator.Release();

  CoUninitialize();

  return; // Program successfully completed.
}
