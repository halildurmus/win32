// dialogshow.dart

// Opens the File Open dialog box and shows results

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

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
    ..SetFileTypeIndex = allocate<Uint64>().cast()
    ..GetFileTypeIndex = allocate<Uint64>().cast()
    ..Advise = allocate<Uint64>().cast()
    ..Unadvise = allocate<Uint64>().cast()
    ..SetOptions = allocate<Uint64>().cast()
    ..GetOptions = allocate<Uint64>().cast()
    ..SetDefaultFolder = allocate<Uint64>().cast()
    ..SetFolder = allocate<Uint64>().cast()
    ..GetFolder = allocate<Uint64>().cast()
    ..GetCurrentSelection = allocate<Uint64>().cast()
    ..SetFileName = allocate<Uint64>().cast()
    ..GetFileName = allocate<Uint64>().cast()
    ..SetTitle = allocate<Uint64>().cast()
    ..SetOkButtonLabel = allocate<Uint64>().cast()
    ..SetFileNameLabel = allocate<Uint64>().cast()
    ..GetResult = allocate<Uint64>().cast()
    ..AddPlace = allocate<Uint64>().cast()
    ..SetDefaultExtension = allocate<Uint64>().cast()
    ..Close = allocate<Uint64>().cast()
    ..SetClientGuid = allocate<Uint64>().cast()
    ..ClearClientData = allocate<Uint64>().cast()
    ..SetFilter = allocate<Uint64>().cast();
}

class IFileDialog extends Struct {
  Pointer<IFileDialogVtbl> lpVtbl;

  factory IFileDialog.allocate() => allocate<IFileDialog>().ref
    ..lpVtbl = IFileDialogVtbl.allocate().addressOf;
}

void printPointer(String name, Pointer ptr) {
  print('${name.padRight(15)}: ${pointerAsString(ptr)}');
}

String pointerAsString(Pointer ptr) =>
    BigInt.from(ptr.address).toUnsigned(64).toRadixString(16).padLeft(16, '0');

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
  final dlg = IFileDialog.allocate().addressOf;

  var hr = CoInitializeEx(
      nullptr, COINIT_APARTMENTTHREADED | COINIT_DISABLE_OLE1DDE);
  if (SUCCEEDED(hr)) {
    hr = CoCreateInstance(
        GUID.fromString(CLSID_FileOpenDialog).addressOf,
        nullptr,
        CLSCTX_ALL,
        GUID.fromString(IID_IFileOpenDialog).addressOf,
        dlg.cast());

    if (SUCCEEDED(hr)) {
      printPointer('dlg', dlg);
      printPointer('lpVtbl', dlg.ref.lpVtbl);
      printPointer('QueryInterface', dlg.ref.lpVtbl.ref.QueryInterface);
      printPointer('AddRef', dlg.ref.lpVtbl.ref.AddRef);
      printPointer('Release', dlg.ref.lpVtbl.ref.Release);
      printPointer('Show', dlg.ref.lpVtbl.ref.Show);
      printPointer(
          'ShowCalc',
          Pointer<NativeFunction<IModalWindowShowNative>>.fromAddress(
              dlg.ref.lpVtbl.cast<Uint64>().value + 24));

      final showNative =
          Pointer<NativeFunction<IModalWindowShowNative>>.fromAddress(
              dlg.ref.lpVtbl.cast<Uint64>().value + 24);
      // final showNative = dlg.ref.lpVtbl.ref.Show
      //     .cast<NativeFunction<IModalWindowShowNative>>();
      final showDart = showNative.asFunction<IModalWindowShowDart>();

      print('showing dialog');
      hr = showDart(dlg.cast(), NULL);
      print('showDart returned $hr');
    } else {
      COMError(hr, 'CoCreateInstance');
    }
    CoUninitialize();
  } else {
    COMError(hr, 'CoInitializeEx');
  }
}
