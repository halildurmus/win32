// dialog.dart

// Opens the File Open dialog box and shows results

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

final hInstance = GetModuleHandle(nullptr);

typedef IModalWindowShowNative = Int32 Function(
    Pointer<Uint64> obj, Int64 hwndOwner);
typedef IModalWindowShowDart = int Function(Pointer<Uint64> obj, int hwndOwner);

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
}

String printableAddress(Pointer ptr) =>
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
  var hr = CoInitializeEx(
      nullptr, COINIT_APARTMENTTHREADED | COINIT_DISABLE_OLE1DDE);
  if (SUCCEEDED(hr)) {
    var pFileOpen = allocate<Uint64>();

    hr = CoCreateInstance(
        GUID.fromString(CLSID_FileOpenDialog).addressOf,
        nullptr,
        CLSCTX_ALL,
        GUID.fromString(IID_IFileOpenDialog).addressOf,
        pFileOpen);
    if (SUCCEEDED(hr)) {
      final pVt = Pointer<IFileDialogVtbl>.fromAddress(pFileOpen.value);

      print(printableAddress(pVt.ref.QueryInterface));
      print(printableAddress(pVt.ref.AddRef));
      print(printableAddress(pVt.ref.Show));

      final pFunc = pVt.ref.Show;
      final pFuncUint64 = Pointer<Uint64>.fromAddress(pFunc.address);

      final pFuncDart =
          Pointer<NativeFunction<IModalWindowShowNative>>.fromAddress(
              pFuncUint64.value);
      print(printableAddress(pFuncDart));

      MessageBox(NULL, TEXT('Preparing to invoke IFileDialog::Show'),
          TEXT('Preparing'), MB_OK);
      final pFuncCallable = pFuncDart.asFunction<IModalWindowShowDart>();

      pFuncCallable(pFileOpen, NULL);
      print('success');
    } else {
      COMError(hr, 'CoCreateInstance');
    }
    CoUninitialize();
  } else {
    COMError(hr, 'CoInitializeEx');
  }
}
