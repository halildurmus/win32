// dialogshow.dart

// Opens the File Open dialog box and shows results

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

typedef IFileDialog_AddRef_Native = Int32 Function(Pointer obj);
typedef IFileDialog_AddRef_Dart = int Function(Pointer obj);

typedef IFileDialog_Show_Native = Int32 Function(Pointer obj, IntPtr hwndOwner);
typedef IFileDialog_Show_Dart = int Function(Pointer obj, int hwndOwner);

class IFileDialog extends Struct {
  Pointer<IntPtr> lpVtbl;

  Pointer<IntPtr> get vtable => Pointer.fromAddress(lpVtbl.value);
  Pointer<IntPtr> get queryInterfacePtr => vtable.elementAt(0);
  Pointer<IntPtr> get addRefPtr => vtable.elementAt(1);
  Pointer<IntPtr> get releasePtr => vtable.elementAt(2);
  Pointer<IntPtr> get showPtr => vtable.elementAt(3);

  factory IFileDialog.allocate() =>
      allocate<IFileDialog>().ref..lpVtbl = allocate<IntPtr>();
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
      printPointer('dlg->lpVtbl->QueryInterface', dlg.ref.queryInterfacePtr);
      printPointer('dlg->lpVtbl->AddRef', dlg.ref.addRefPtr);
      printPointer('dlg->lpVtbl->Release', dlg.ref.releasePtr);
      printPointer('dlg->lpVtbl->Show', dlg.ref.showPtr);

      final addRefFuncPtr =
          Pointer<IntPtr>.fromAddress(dlg.ref.addRefPtr.value);
      final addRefFuncNative =
          addRefFuncPtr.cast<NativeFunction<IFileDialog_AddRef_Native>>();
      final addRefFuncDart =
          addRefFuncNative.asFunction<IFileDialog_AddRef_Dart>();

      final showFuncPtr = Pointer<IntPtr>.fromAddress(dlg.ref.showPtr.value);
      final showFuncNative =
          showFuncPtr.cast<NativeFunction<IFileDialog_Show_Native>>();
      final showFuncDart = showFuncNative.asFunction<IFileDialog_Show_Dart>();

      hr = addRefFuncDart(dlg.ref.lpVtbl);
      print('AddRef() returned $hr');

      hr = showFuncDart(dlg.ref.lpVtbl, NULL);
      print('Show() returned $hr');
    } else {
      COMError(hr, 'CoCreateInstance');
    }
    CoUninitialize();
    print('CoUninitialize()');
  } else {
    COMError(hr, 'CoInitializeEx');
  }
}
