// ignore_for_file: non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:win32/win32.dart';

final CLSID_ExampleCom = GUID('{36B142F2-97DC-4594-96A4-8160EEB7184C}');
final IID_IExampleCom = GUID('{4C2DDA7F-9DC9-46FD-A107-832254B2EEBE}');

/// Represents the `IExampleCom` interface from the .NET component.
///
/// This interface extends [IDispatch] and provides the following methods:
/// - **`GetMessage`**: Retrieves a string value from the COM object.
/// - **`GetSum`**: Takes two integers as input and returns their sum.
///
/// To interact with this .NET component from Dart, you must define the method
/// signatures using FFI (Foreign Function Interface). These signatures can be
/// derived from the IDL (Interface Definition Language) description of the COM
/// interface.
///
/// The IDL definition of the `IExampleCom` interface:
/// ```idl
/// interface IExampleCom : IDispatch {
///     HRESULT GetMessage([out, retval] BSTR* pRetVal);
///     HRESULT GetSum([in] long a, [in] long b, [out, retval] long* pRetVal);
/// };
/// ```
///
/// To examine the type library and IDL definitions of your .NET component,
/// you can use tools such as the
/// [OLE/COM Object Viewer](https://learn.microsoft.com/windows/win32/com/ole-com-object-viewer).
///
/// This interface inherits from [IDispatch], which itself extends [IUnknown].
/// As a result, the methods defined in this interface (`GetMessage` and
/// `GetSum`) appear in the VTable following the standard [IUnknown] and
/// [IDispatch] methods.
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
class IExampleCom extends IDispatch implements ComInterface {
  IExampleCom(super.ptr) : _vtable = ptr.value.cast<IExampleComVtbl>().ref;

  final IExampleComVtbl _vtable;
  late final _GetMessageFn =
      _vtable.GetMessage.asFunction<
        int Function(VTablePointer, Pointer<Pointer<Utf16>>)
      >();
  late final _GetSumFn =
      _vtable.GetSum.asFunction<
        int Function(VTablePointer, int, int, Pointer<Int32>)
      >();

  BSTR getMessage() {
    final pRetVal = adaptiveCalloc<Pointer<Utf16>>();
    final hr = HRESULT(_GetMessageFn(ptr, pRetVal));
    if (hr.isError) {
      free(pRetVal);
      throw WindowsException(hr);
    }
    final result = pRetVal.value;
    free(pRetVal);
    return .new(result);
  }

  int getSum(int a, int b) {
    final pRetVal = adaptiveCalloc<Int32>();
    final hr = HRESULT(_GetSumFn(ptr, a, b, pRetVal));
    if (hr.isError) {
      free(pRetVal);
      throw WindowsException(hr);
    }
    final result = pRetVal.value;
    free(pRetVal);
    return result;
  }
}

base class IExampleComVtbl extends Struct {
  // ignore: unreachable_from_main
  external IDispatchVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<Utf16>> pRetVal)
    >
  >
  GetMessage;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 a,
        Int32 b,
        Pointer<Int32> pRetVal,
      )
    >
  >
  GetSum;
}

final class IExampleComCompanion extends ComCompanion<IExampleCom> {
  const IExampleComCompanion();

  @override
  IExampleCom Function(VTablePointer) get fromPointer => IExampleCom.new;

  @override
  GUID get iid => IID_IExampleCom;
}

/// Demonstrates early binding with VTable access to the `IExampleCom` methods.
void invokeMethodsViaEarlyBinding() {
  // Register the IExampleCom interface so that it can be used with the
  // CoCreateInstance function.
  ComInterface.register(const IExampleComCompanion());

  // Create an instance of the IExampleCom interface.
  final exampleCom = createInstance<IExampleCom>(CLSID_ExampleCom);

  try {
    // Call the GetMessage method.
    final message = exampleCom.getMessage();
    print('Message from .NET component: ${message.toDartString()}');
    SysFreeString(message);

    // Call the GetSum method.
    final sum = exampleCom.getSum(5, 7);
    print('Sum from .NET component: $sum');
  } finally {
    exampleCom.release();
  }
}

/// Demonstrates late binding using the [IDispatch] interface via the
/// [Dispatcher] to make it easier to call methods on the COM object.
void invokeMethodsViaLateBinding() {
  // Create a Dispatcher instance for the ExampleCom object using its ProgID.
  final dispatcher = Dispatcher.fromProgID('MyLibrary.ExampleCom');
  // Note: the ProgID is the name of the COM object as registered in the
  // Windows registry. Instead of the ProgID, you can also use the CLSID to
  // create the Dispatcher instance. For example:
  // final dispatcher = Dispatcher.fromCLSID(CLSID_ExampleCom);

  try {
    // Call the GetMessage method.
    final messageResult = dispatcher.invoke<String>('GetMessage');
    final message = messageResult.value;
    print('Message from .NET component: $message');
    messageResult.free();

    // Call the GetSum method.
    final sumResult = dispatcher.invoke<int>('GetSum', [5, 7]);
    final sum = sumResult.value;
    print('Sum from .NET component: $sum');
    sumResult.free();
  } finally {
    dispatcher.dispose();
  }
}

void main() {
  CoInitializeEx(COINIT_MULTITHREADED);
  invokeMethodsViaEarlyBinding();
  invokeMethodsViaLateBinding();
}
