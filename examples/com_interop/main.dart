// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

const CLSID_ExampleCom = '{36B142F2-97DC-4594-96A4-8160EEB7184C}';
const IID_IExampleCom = '{4C2DDA7F-9DC9-46FD-A107-832254B2EEBE}';

/// Represents the `IExampleCom` interface in the .NET component.
///
/// This interface inherits from `IDispatch` and defines two methods:
///
/// - **GetMessage**: Returns a string from the COM object.
/// - **GetSum**: Accepts two integers and returns the sum of them.
///
/// ### Creating Dart Bindings:
///
/// To interact with your .NET component from Dart, you need to define the
/// method signatures using FFI. The method signatures can be found in the IDL
/// definition of the COM interface.
///
/// Here's the IDL definition for the `IExampleCom` interface:
///
/// ```idl
/// interface IExampleCom : IDispatch {
///     HRESULT GetMessage([out, retval] BSTR* pRetVal);
///     HRESULT GetSum([in] long a, [in] long b, [out, retval] long* pRetVal);
/// };
/// ```
///
/// You can use tools like [OLE/COM Object Viewer](https://learn.microsoft.com/windows/win32/com/ole-com-object-viewer)
/// to view your .NET component’s type library and IDL definition.
///
/// ### VTable Method Offsets:
///
/// Since this interface inherits from `IDispatch`, the methods (`GetMessage`
/// and `GetSum`) follow the standard `IUnknown` and `IDispatch` methods in the
/// VTable. The methods (`GetMessage` and `GetSum`) are located at indices 7 and
/// 8 respectively, after the `IDispatch` methods.
///
/// ```plaintext
/// +----------------------+
/// |  IExampleCom VTable  |
/// +---+------------------+
/// | 0 | QueryInterface   | }
/// +---+------------------+ }
/// | 1 | AddRef           | } <- IUnknown methods
/// +---+------------------+ }
/// | 2 | Release          | }
/// +---+------------------+
/// | 3 | GetTypeInfoCount | }
/// +---+------------------+ }
/// | 4 | GetTypeInfo      | }
/// +---+------------------+ } <- IDispatch methods
/// | 5 | GetIDsOfNames    | }
/// +---+------------------+ }
/// | 6 | Invoke           | }
/// +---+------------------+
/// | 7 | GetMessage       | }
/// +---+------------------+ } <- IExampleCom methods
/// | 8 | GetSum           | }
/// +---+------------------+
/// ```
class IExampleCom extends IDispatch {
  IExampleCom(super.ptr);

  int GetMessage(Pointer<Pointer<Utf16>> pRetVal) => (ptr.ref.vtable + 7)
      .cast<
        Pointer<
          NativeFunction<
            HRESULT Function(Pointer, Pointer<Pointer<Utf16>> pRetVal)
          >
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Pointer<Utf16>> pRetVal)>()(
    ptr.ref.lpVtbl,
    pRetVal,
  );

  int GetSum(int a, int b, Pointer<Int32> pRetVal) => (ptr.ref.vtable + 8)
      .cast<
        Pointer<
          NativeFunction<
            HRESULT Function(Pointer, Int32 a, Int32 b, Pointer<Int32> pRetVal)
          >
        >
      >()
      .value
      .asFunction<
        int Function(Pointer, int a, int b, Pointer<Int32> pRetVal)
      >()(ptr.ref.lpVtbl, a, b, pRetVal);
}

/// Demonstrates early binding with VTable access to the `IExampleCom` methods.
void invokeMethodsViaEarlyBinding() => using((arena) {
  final lpclsid = GUIDFromString(CLSID_ExampleCom, allocator: arena);
  final riid = GUIDFromString(IID_IExampleCom, allocator: arena);
  final ppv = calloc<COMObject>();

  // Create an instance of the IExampleCom interface.
  var hr = CoCreateInstance(lpclsid, nullptr, CLSCTX_ALL, riid, ppv.cast());
  if (FAILED(hr)) throw WindowsException(hr);

  // Pass the interface pointer to the IExampleCom class.
  final exampleCom = IExampleCom(ppv);

  // Call the GetMessage method.
  final pRetValMessage = arena<Pointer<Utf16>>();
  hr = exampleCom.GetMessage(pRetValMessage);
  if (FAILED(hr)) throw WindowsException(hr);
  final bstr = pRetValMessage.value;
  final message = bstr.toDartString();
  print('Message from .NET component: $message');
  SysFreeString(bstr);

  // Call the GetSum method.
  final pRetValSum = arena<Int32>();
  hr = exampleCom.GetSum(5, 7, pRetValSum);
  if (FAILED(hr)) throw WindowsException(hr);
  final sum = pRetValSum.value;
  print('Sum from .NET component: $sum');
});

/// Demonstrates late binding using the [IDispatch] interface via the
/// [Dispatcher] to make it easier to call methods on the COM object.
void invokeMethodsViaLateBinding() {
  // Create a Dispatcher instance for the ExampleCom object using its ProgID.
  final dispatcher = Dispatcher.fromProgID('MyLibrary.ExampleCom');
  // Note: the ProgID is the name of the COM object as registered in the
  // Windows registry. Instead of the ProgID, you can also use the CLSID to
  // create the Dispatcher instance. For example:
  // final dispatcher = Dispatcher.fromCLSID(CLSID_ExampleCom);

  // Call the GetMessage method.
  final pRetValMessage = calloc<VARIANT>();
  VariantInit(pRetValMessage);
  dispatcher.invoke('GetMessage', null, pRetValMessage);
  final bstr = pRetValMessage.ref.bstrVal; // Get the BSTR value.
  final message = bstr.toDartString(); // Convert the BSTR to a Dart string.
  print('Message from .NET component: $message');

  // Clean up.
  VariantClear(pRetValMessage);
  free(pRetValMessage);

  // Call the GetSum method.
  final dispParams = calloc<DISPPARAMS>();
  final args = calloc<VARIANT>(2); // Allocate memory for two arguments.
  // Note: these arguments appear in reverse order.
  args[0]
    ..vt = VT_I4
    ..intVal = 7; // This is the second argument to the method.
  args[1]
    ..vt = VT_I4
    ..intVal = 5; // This is the first argument to the method.
  dispParams.ref
    ..cArgs =
        2 // Number of arguments.
    ..rgvarg = args; // Pointer to the arguments.
  final pRetValSum = calloc<VARIANT>();
  VariantInit(pRetValSum);
  dispatcher.invoke('GetSum', dispParams, pRetValSum);
  final sum = pRetValSum.ref.intVal; // Get the integer value.
  print('Sum from .NET component: $sum');

  // Clean up.
  VariantClear(pRetValSum);
  free(pRetValSum);
  free(args);
  free(dispParams);

  // Clean up the Dispatcher instance.
  dispatcher.dispose();
}

void main() {
  // Initialize COM.
  CoInitializeEx(nullptr, COINIT_APARTMENTTHREADED | COINIT_DISABLE_OLE1DDE);

  invokeMethodsViaEarlyBinding();
  invokeMethodsViaLateBinding();
}
