import 'dart:ffi';

import 'package:ffi/ffi.dart';

const IID_IShellItem = '{43826d1e-e718-42ee-bc55-a1e261c37bfe}';

class SIGDN {
  static final int SIGDN_NORMALDISPLAY = 0;
  static final int SIGDN_PARENTRELATIVEPARSING = 0x80018001;
  static final int SIGDN_DESKTOPABSOLUTEPARSING = 0x80028000;
  static final int SIGDN_PARENTRELATIVEEDITING = 0x80031001;
  static final int SIGDN_DESKTOPABSOLUTEEDITING = 0x8004c000;
  static final int SIGDN_FILESYSPATH = 0x80058000;
  static final int SIGDN_URL = 0x80068000;
  static final int SIGDN_PARENTRELATIVEFORADDRESSBAR = 0x8007c001;
  static final int SIGDN_PARENTRELATIVE = 0x80080001;
  static final int SIGDN_PARENTRELATIVEFORUI = 0x8009400;
}

typedef IShellItem_Release_Native = Int32 Function(Pointer obj);
typedef IShellItem_Release_Dart = int Function(Pointer obj);

typedef IShellItem_GetDisplayName_Native = Int32 Function(
    Pointer obj, Int32 sigdnName, Pointer<Utf16> ppszName);
typedef IShellItem_GetDisplayName_Dart = int Function(
    Pointer obj, int sigdnName, Pointer<Utf16> ppszName);

class IShellItem extends Struct {
  Pointer<IntPtr> lpVtbl;

  Pointer<IntPtr> get vtable => Pointer.fromAddress(lpVtbl.value);

  Pointer<IntPtr> get queryInterfacePtr => vtable.elementAt(0);
  Pointer<IntPtr> get addRefPtr => vtable.elementAt(1);
  Pointer<IntPtr> get releasePtr => vtable.elementAt(2);
  Pointer<IntPtr> get bindToHandlerPtr => vtable.elementAt(3);
  Pointer<IntPtr> get getParentPtr => vtable.elementAt(4);
  Pointer<IntPtr> get getDisplayNamePtr => vtable.elementAt(5);
  Pointer<IntPtr> get getAttributesPtr => vtable.elementAt(6);
  Pointer<IntPtr> get comparePtr => vtable.elementAt(7);

  factory IShellItem.allocate() =>
      allocate<IShellItem>().ref..lpVtbl = allocate<IntPtr>();
}

class ShellItem {
  Pointer<IShellItem> shellItem;

  IShellItem_Release_Dart Release;
  IShellItem_GetDisplayName_Dart GetDisplayName;

  ShellItem(this.shellItem) {
    Release = Pointer<IntPtr>.fromAddress(shellItem.ref.releasePtr.value)
        .cast<NativeFunction<IShellItem_Release_Native>>()
        .asFunction<IShellItem_Release_Dart>();

    GetDisplayName =
        Pointer<IntPtr>.fromAddress(shellItem.ref.getDisplayNamePtr.value)
            .cast<NativeFunction<IShellItem_GetDisplayName_Native>>()
            .asFunction<IShellItem_GetDisplayName_Dart>();
  }
}
