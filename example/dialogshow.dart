// dialogshow.dart

// Opens the File Open dialog box and shows results

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

// typedef queryInterfaceNative = Int32 Function(
//     Pointer<Uint64> obj, Pointer<GUID> riid, Pointer<Uint64> ppvObject);
// typedef queryInterfaceDart = int Function(
//     Pointer<Uint64> obj, Pointer<GUID> riid, Pointer<Uint64> ppvObject);

typedef IFileDialog_AddRef_Native = Int32 Function(Pointer obj);
typedef IFileDialog_AddRef_Dart = int Function(Pointer obj);

typedef IFileDialog_Show_Native = Int32 Function(Pointer obj, IntPtr hwndOwner);
typedef IFileDialog_Show_Dart = int Function(Pointer obj, int hwndOwner);

class IFileDialogVtbl extends Struct {
  Pointer<IntPtr> QueryInterface;
  Pointer<IntPtr> AddRef;
  Pointer<IntPtr> Release;
  Pointer<IntPtr> Show;
  Pointer<IntPtr> SetFileTypes;
  Pointer<IntPtr> SetFileTypeIndex;
  Pointer<IntPtr> GetFileTypeIndex;
  Pointer<IntPtr> Advise;
  Pointer<IntPtr> Unadvise;
  Pointer<IntPtr> SetOptions;
  Pointer<IntPtr> GetOptions;
  Pointer<IntPtr> SetDefaultFolder;
  Pointer<IntPtr> SetFolder;
  Pointer<IntPtr> GetFolder;
  Pointer<IntPtr> GetCurrentSelection;
  Pointer<IntPtr> SetFileName;
  Pointer<IntPtr> GetFileName;
  Pointer<IntPtr> SetTitle;
  Pointer<IntPtr> SetOkButtonLabel;
  Pointer<IntPtr> SetFileNameLabel;
  Pointer<IntPtr> GetResult;
  Pointer<IntPtr> AddPlace;
  Pointer<IntPtr> SetDefaultExtension;
  Pointer<IntPtr> Close;
  Pointer<IntPtr> SetClientGuid;
  Pointer<IntPtr> ClearClientData;
  Pointer<IntPtr> SetFilter;

  factory IFileDialogVtbl.allocate() => allocate<IFileDialogVtbl>().ref
    ..QueryInterface = nullptr
    ..AddRef = nullptr
    ..Release = nullptr
    ..Show = nullptr
    ..SetFileTypes = nullptr
    ..SetFileTypeIndex = nullptr
    ..GetFileTypeIndex = nullptr
    ..Advise = nullptr
    ..Unadvise = nullptr
    ..SetOptions = nullptr
    ..GetOptions = nullptr
    ..SetDefaultFolder = nullptr
    ..SetFolder = nullptr
    ..GetFolder = nullptr
    ..GetCurrentSelection = nullptr
    ..SetFileName = nullptr
    ..GetFileName = nullptr
    ..SetTitle = nullptr
    ..SetOkButtonLabel = nullptr
    ..SetFileNameLabel = nullptr
    ..GetResult = nullptr
    ..AddPlace = nullptr
    ..SetDefaultExtension = nullptr
    ..Close = nullptr
    ..SetClientGuid = nullptr
    ..ClearClientData = nullptr
    ..SetFilter = nullptr;
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
  var dlg = IFileDialog.allocate().addressOf;

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

      // These do not give the right addresses, so the struct isn't trustworthy.
      printPointer('dlg->lpVtbl->AddRef', dlg.ref.lpVtbl.ref.AddRef);
      printPointer('dlg->lpVtbl->Release', dlg.ref.lpVtbl.ref.Release);
      printPointer('dlg->lpVtbl->Show', dlg.ref.lpVtbl.ref.Show);
      printPointer('dlg->lpVtbl->SetTitle', dlg.ref.lpVtbl.ref.SetTitle);

      print('---');

      // But we know that AddRef is the second entry in the v-table, so it must
      // be at *(QI + sizeOf(IntPtr)). On my machine, this gives
      // 0x00007FFC9C88EF28, which is indeed the same value as the C-based
      // version.
      final addRefAddress =
          dlg.ref.lpVtbl.cast<IntPtr>().value + sizeOf<IntPtr>() * 1;
      final addRefPtr =
          Pointer<NativeFunction<IFileDialog_AddRef_Native>>.fromAddress(
              addRefAddress);
      printPointer('dlg->lpVtbl->AddRef (calc)', addRefPtr);
      final addRefDart =
          Pointer<NativeFunction<IFileDialog_AddRef_Native>>.fromAddress(
                  addRefPtr.cast<IntPtr>().value)
              .asFunction<IFileDialog_AddRef_Dart>();

      // But we know that Show is the fourth entry in the v-table, so it must
      // be at *(QI + sizeOf(IntPtr) * 3). On my machine, this gives
      // 0x00007FFC9C88EF38, which is indeed the same value as the C-based
      // version.
      final showAddress =
          dlg.ref.lpVtbl.cast<IntPtr>().value + sizeOf<IntPtr>() * 3;
      final showPtr =
          Pointer<NativeFunction<IFileDialog_Show_Native>>.fromAddress(
              showAddress);
      printPointer('dlg->lpVtbl->Show (calc)', showPtr);
      final showDart =
          Pointer<NativeFunction<IFileDialog_Show_Native>>.fromAddress(
                  showPtr.cast<IntPtr>().value)
              .asFunction<IFileDialog_Show_Dart>();

      // This returns but with an error
      print('Attempting to AddRef.');
      hr = addRefDart(dlg);
      print('addRef returned $hr');

      // This just crashes.
      print('Attempting to Show.');
      hr = showDart(dlg, NULL);
      print('show returned $hr');
    } else {
      COMError(hr, 'CoCreateInstance');
    }
    CoUninitialize();
  } else {
    COMError(hr, 'CoInitializeEx');
  }
}
