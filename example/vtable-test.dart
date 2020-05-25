import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

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
  var ifd = IFileDialog.allocate();

  var dlg_addr = ifd.lpVtbl.address;
  Pointer<IntPtr> ptr = Pointer.fromAddress(dlg_addr);

  // var hr = CoInitializeEx(
  //     nullptr, COINIT_APARTMENTTHREADED | COINIT_DISABLE_OLE1DDE);
  // if (!SUCCEEDED(hr)) return;

  // hr = CoCreateInstance(
  //     GUID.fromString(CLSID_FileOpenDialog).addressOf,
  //     nullptr,
  //     CLSCTX_ALL,
  //     GUID.fromString(IID_IFileDialog).addressOf,
  //     ifd.addressOf.cast());
  // if (!SUCCEEDED(hr)) return;

  ptr.elementAt(0).value = 0xFFFFFFFFFFFFFFFF;
  ptr.elementAt(1).value = 0x01;
  ptr.elementAt(2).value = 0x02;
  ptr.elementAt(3).value = 0x03;
  ptr.elementAt(4).value = 0x04;

  Pointer<IFileDialog> dlg = ifd.addressOf.cast();

  printPointer('dlg', dlg);
  printPointer('dlg->lpVtbl', dlg.ref.lpVtbl);

  // This gives the correct value.
  printPointer(
      'dlg->lpVtbl->QueryInterface', dlg.ref.lpVtbl.ref.QueryInterface);
  printPointer('dlg->lpVtbl->AddRef', dlg.ref.lpVtbl.ref.AddRef);
  printPointer('dlg->lpVtbl->Release', dlg.ref.lpVtbl.ref.Release);
  printPointer('dlg->lpVtbl->Show', dlg.ref.lpVtbl.ref.Show);
  printPointer('dlg->lpVtbl->SetFileTypes', dlg.ref.lpVtbl.ref.SetFileTypes);
  printPointer('dlg->lpVtbl->SetTitle', dlg.ref.lpVtbl.ref.SetTitle);
}
