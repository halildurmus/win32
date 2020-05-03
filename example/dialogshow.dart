// dialogshow.dart

// Opens the File Open dialog box and shows results

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

// typedef queryInterfaceNative = Int32 Function(
//     Pointer<Uint64> obj, Pointer<GUID> riid, Pointer<Uint64> ppvObject);
// typedef queryInterfaceDart = int Function(
//     Pointer<Uint64> obj, Pointer<GUID> riid, Pointer<Uint64> ppvObject);

typedef IModalWindowShowNative = Int32 Function(Pointer obj, IntPtr hwndOwner);
typedef IModalWindowShowDart = int Function(Pointer obj, int hwndOwner);

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

  // factory IFileDialogVtbl.allocate() => allocate<IFileDialogVtbl>().ref
  //   ..QueryInterface = nullptr
  //   ..AddRef = nullptr
  //   ..Release = nullptr
  //   ..Show = nullptr
  //   ..SetFileTypes = nullptr
  //   ..SetFileTypeIndex = nullptr
  //   ..GetFileTypeIndex = nullptr
  //   ..Advise = nullptr
  //   ..Unadvise = nullptr
  //   ..SetOptions = nullptr
  //   ..GetOptions = nullptr
  //   ..SetDefaultFolder = nullptr
  //   ..SetFolder = nullptr
  //   ..GetFolder = nullptr
  //   ..GetCurrentSelection = nullptr
  //   ..SetFileName = nullptr
  //   ..GetFileName = nullptr
  //   ..SetTitle = nullptr
  //   ..SetOkButtonLabel = nullptr
  //   ..SetFileNameLabel = nullptr
  //   ..GetResult = nullptr
  //   ..AddPlace = nullptr
  //   ..SetDefaultExtension = nullptr
  //   ..Close = nullptr
  //   ..SetClientGuid = nullptr
  //   ..ClearClientData = nullptr
  //   ..SetFilter = nullptr;
}

class IFileDialog extends Struct {
  Pointer<IFileDialogVtbl> lpVtbl;

  factory IFileDialog.allocate() =>
      allocate<IFileDialog>().ref..lpVtbl = allocate<IFileDialogVtbl>();
}

void printPointer(String name, Pointer ptr) {
  print('${name.padRight(30)}: ${pointerAsString(ptr).toUpperCase()}');
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
        GUID.fromString(IID_IFileDialog).addressOf,
        dlg.cast());

    if (SUCCEEDED(hr)) {
      printPointer('dlg', dlg);
      printPointer('dlg->lpVtbl', dlg.ref.lpVtbl);

      // vTable contains, in order:
      //   [0] QueryInterface
      //   [1] AddRef
      //   [2] Release
      //   [3] Show
      //   ...
      // All are function pointers

      // This gives the correct value.
      printPointer(
          'dlg->lpVtbl->QueryInterface', dlg.ref.lpVtbl.ref.QueryInterface);

      print('---');

      // These do not give the right addresses.
      printPointer('dlg->lpVtbl->AddRef', dlg.ref.lpVtbl.ref.AddRef);
      printPointer('dlg->lpVtbl->Release', dlg.ref.lpVtbl.ref.Release);
      printPointer('dlg->lpVtbl->Show', dlg.ref.lpVtbl.ref.Show);
      printPointer('dlg->lpVtbl->SetTitle', dlg.ref.lpVtbl.ref.SetTitle);

      print('---');

      // But we know that Show is the fourth entry in the vtable, so it must
      // be at *(QI + 24). On 64-bit, this gives 0x00007FF8CB32EF38, which is
      // indeed the same value as the C-based version.
      final showAddress =
          dlg.ref.lpVtbl.cast<IntPtr>().value + sizeOf<IntPtr>() * 3;
      final showNativePtr = Pointer<IntPtr>.fromAddress(showAddress);
      printPointer('dlg->lpVtbl->Show (calc)', showNativePtr);

      // Trying dereferencing this one more time to get to the actual function
      // address. This may not be right -- am I dereferencing once to many?
      final showNative =
          Pointer<NativeFunction<IModalWindowShowNative>>.fromAddress(
              showNativePtr.value);
      printPointer('dlg->lpVtbl->Show*', showNative);

      final showDart = showNative.asFunction<IModalWindowShowDart>();

      print('Attempting to show dialog. The next line crashes...');
      hr = showDart(dlg, NULL);
      print('showDart returned $hr');
    } else {
      COMError(hr, 'CoCreateInstance');
    }
    CoUninitialize();
  } else {
    COMError(hr, 'CoInitializeEx');
  }
}
