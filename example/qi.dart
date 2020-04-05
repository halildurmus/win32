// qi.dart

// QueryInterface

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/src/typedefs.dart';
import 'package:win32/win32.dart';

final hInstance = GetModuleHandle(nullptr);

typedef queryInterfaceNative = Int32 Function(
    Pointer<Uint64> obj, Pointer<GUID> riid, Pointer<Uint64> ppvObject);
typedef queryInterfaceDart = int Function(
    Pointer<Uint64> obj, Pointer<GUID> riid, Pointer<Uint64> ppvObject);

typedef IModalWindowShowNative = Int32 Function(
    Pointer<Uint64> obj, Int64 hwndOwner);
typedef IModalWindowShowDart = int Function(Pointer<Uint64> obj, int hwndOwner);
// typedef IModalWindowShowNative = Int32 Function(Int64 hwndOwner);
// typedef IModalWindowShowDart = int Function(int hwndOwner);

class IFileDialogVtbl extends Struct {
  Pointer<NativeFunction> QueryInterface;
  Pointer<NativeFunction> AddRef;
  Pointer<NativeFunction> Release;
  Pointer<NativeFunction> Show;
  Pointer<NativeFunction> SetFileTypes;
  Pointer<NativeFunction> SetFileTypeIndex;
  Pointer<NativeFunction> GetFileTypeIndex;
  Pointer<NativeFunction> Advise;
  Pointer<NativeFunction> Unadvise;
  Pointer<NativeFunction> SetOptions;
  Pointer<NativeFunction> GetOptions;
  Pointer<NativeFunction> SetDefaultFolder;
  Pointer<NativeFunction> SetFolder;
  Pointer<NativeFunction> GetFolder;
  Pointer<NativeFunction> GetCurrentSelection;
  Pointer<NativeFunction> SetFileName;
  Pointer<NativeFunction> GetFileName;
  Pointer<NativeFunction> SetTitle;
  Pointer<NativeFunction> SetOkButtonLabel;
  Pointer<NativeFunction> SetFileNameLabel;
  Pointer<NativeFunction> GetResult;
  Pointer<NativeFunction> AddPlace;
  Pointer<NativeFunction> SetDefaultExtension;
  Pointer<NativeFunction> Close;
  Pointer<NativeFunction> SetClientGuid;
  Pointer<NativeFunction> ClearClientData;
  Pointer<NativeFunction> SetFilter;

  factory IFileDialogVtbl.allocate() => allocate<IFileDialogVtbl>().ref
    ..QueryInterface = allocate<Uint64>().cast()
    ..AddRef = allocate<Uint64>().cast()
    ..Release = allocate<Uint64>().cast()
    ..Show = allocate<Uint64>().cast()
    ..SetFileTypes = allocate<Uint64>().cast()
    ..SetFileTypeIndex = allocate<Uint64>().cast();
}

String pointerAsString(Pointer ptr) =>
    BigInt.from(ptr.address).toUnsigned(64).toRadixString(16).padLeft(16, '0');

String uint64AsString(int addr) =>
    BigInt.from(addr).toUnsigned(64).toRadixString(16).padLeft(16, '0');

void COMError(int hresult, String function) {
  hresult = hresult.toUnsigned(32);

  switch (hresult) {
    case S_OK:
      return;
    case E_INVALIDARG:
      print('$function: E_INVALIDARG');
      return;
    case E_FAIL:
      print('$function: E_FAIL');
      return;
    case REGDB_E_CLASSNOTREG:
      print('$function: Class not registered');
      return;
    case REGDB_E_IIDNOTREG:
      print('$function: Interface not registered');
      return;
  }
  print('$function: error 0x${hresult.toRadixString(16)}');
}

void main() {
  var hr = CoInitializeEx(
      nullptr, COINIT_APARTMENTTHREADED | COINIT_DISABLE_OLE1DDE);
  if (SUCCEEDED(hr)) {
    // Address of pointer variable that receives the interface pointer
    final ppvObj = IFileDialogVtbl.allocate();

    hr = CoCreateInstance(
        GUID.fromString(CLSID_FileOpenDialog).addressOf,
        nullptr,
        CLSCTX_ALL,
        GUID.fromString(IID_IFileOpenDialog).addressOf,
        ppvObj.addressOf.cast());

    print('ppvObj address       : ${pointerAsString(ppvObj.addressOf)}');

    if (SUCCEEDED(hr)) {
      // *pFileOpen contains the requested interface pointer.
      print('pQueryInterface is at: ${pointerAsString(ppvObj.QueryInterface)}');
      print('pAddRef is at        : ${pointerAsString(ppvObj.AddRef)}');
      print('pRelease is at       : ${pointerAsString(ppvObj.Release)}');
      print('pShow is at          : ${pointerAsString(ppvObj.Show)}');

      final pShowVal =
          Pointer<Uint64>.fromAddress(ppvObj.Show.cast<Uint64>().value);
      print('pShowVal is at       : ${pointerAsString(pShowVal)}');

      // final pQINative =
      //     Pointer<NativeFunction<queryInterfaceNative>>.fromAddress(
      //         pQI.address);
      // print('pQINative is at: ${pointerAsString(pQINative)}');
      // final fQIDart = pQINative.asFunction<queryInterfaceDart>();

      // hr = fQIDart(
      //     Pointer<Uint64>.fromAddress(pQI.address),
      //     GUID.fromString(IID_IFileOpenDialog).addressOf,
      //     Pointer<Uint64>.fromAddress(ppvObj.addressOf.address));

      final pShowNative =
          ppvObj.Show.cast<NativeFunction<IModalWindowShowNative>>();

      final fShowDart = pShowNative.asFunction<IModalWindowShowDart>();

      hr = fShowDart(ppvObj.addressOf.cast(), NULL);
      print('qiFunc returned $hr');
    } else {
      COMError(hr, 'CoCreateInstance');
    }
    CoUninitialize();
  } else {
    COMError(hr, 'CoInitializeEx');
  }
}
