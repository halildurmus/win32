import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

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

  var hr = CoInitializeEx(
      nullptr, COINIT_APARTMENTTHREADED | COINIT_DISABLE_OLE1DDE);
  if (!SUCCEEDED(hr)) return;

  hr = CoCreateInstance(
      GUID.fromString(CLSID_FileOpenDialog).addressOf,
      nullptr,
      CLSCTX_ALL,
      GUID.fromString(IID_IFileDialog).addressOf,
      ifd.addressOf.cast());
  if (!SUCCEEDED(hr)) return;

  ptr.elementAt(0).value = 0xFFFFFFFFFFFFFFFF;
  ptr.elementAt(1).value = 0x01;
  ptr.elementAt(2).value = 0x02;
  ptr.elementAt(3).value = 0x03;
  ptr.elementAt(4).value = 0x04;

  Pointer<IFileDialog> dlg = ifd.addressOf.cast();

  printPointer('dlg', dlg);
  printPointer('dlg->lpVtbl', dlg.ref.lpVtbl);

  printPointer(
      'dlg->lpVtbl->QueryInterface', dlg.ref.lpVtbl.ref.QueryInterface);
  printPointer('dlg->lpVtbl->AddRef', dlg.ref.lpVtbl.ref.AddRef);
  printPointer('dlg->lpVtbl->Release', dlg.ref.lpVtbl.ref.Release);
  printPointer('dlg->lpVtbl->Show', dlg.ref.lpVtbl.ref.Show);
  printPointer('dlg->lpVtbl->SetFileTypes', dlg.ref.lpVtbl.ref.SetFileTypes);
  printPointer('dlg->lpVtbl->SetTitle', dlg.ref.lpVtbl.ref.SetTitle);

  print('---');
  printPointer('dlg->lpVtbl->QueryInterface', dlg.ref.lpVtbl.elementAt(0));
  printPointer('dlg->lpVtbl->AddRef', dlg.ref.lpVtbl.elementAt(1));
  printPointer('dlg->lpVtbl->Release', dlg.ref.lpVtbl.elementAt(2));
  printPointer('dlg->lpVtbl->Show', dlg.ref.lpVtbl.elementAt(3));
  printPointer('dlg->lpVtbl->SetFileTypes', dlg.ref.lpVtbl.elementAt(4));
  printPointer('dlg->lpVtbl->SetTitle', dlg.ref.lpVtbl.ref.SetTitle);
}
