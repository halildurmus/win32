// INameSpaceTreeControl.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../system/com/IUnknown.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../ui/shell/IShellItem.dart';
import '../../ui/shell/IShellItemFilter.dart';
import '../../ui/shell/IShellItemArray.dart';
import '../../ui/shell/structs.g.dart';

/// @nodoc
const IID_INameSpaceTreeControl = '{028212A3-B627-47E9-8856-C14265554E4F}';

/// {@category Interface}
/// {@category com}
class INameSpaceTreeControl extends IUnknown {
  // vtable begins at 3, is 19 entries long.
  INameSpaceTreeControl(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    int hwndParent,
    Pointer<RECT> prc,
    int nsctsFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndParent,
            Pointer<RECT> prc,
            Uint32 nsctsFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndParent,
            Pointer<RECT> prc,
            int nsctsFlags,
          )>()(
        ptr.ref.lpVtbl,
        hwndParent,
        prc,
        nsctsFlags,
      );

  int TreeAdvise(
    Pointer<COMObject> punk,
    Pointer<Uint32> pdwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punk,
            Pointer<Uint32> pdwCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punk,
            Pointer<Uint32> pdwCookie,
          )>()(
        ptr.ref.lpVtbl,
        punk,
        pdwCookie,
      );

  int TreeUnadvise(
    int dwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwCookie,
          )>()(
        ptr.ref.lpVtbl,
        dwCookie,
      );

  int AppendRoot(
    Pointer<COMObject> psiRoot,
    int grfEnumFlags,
    int grfRootStyle,
    Pointer<COMObject> pif,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psiRoot,
            Uint32 grfEnumFlags,
            Uint32 grfRootStyle,
            Pointer<COMObject> pif,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psiRoot,
            int grfEnumFlags,
            int grfRootStyle,
            Pointer<COMObject> pif,
          )>()(
        ptr.ref.lpVtbl,
        psiRoot,
        grfEnumFlags,
        grfRootStyle,
        pif,
      );

  int InsertRoot(
    int iIndex,
    Pointer<COMObject> psiRoot,
    int grfEnumFlags,
    int grfRootStyle,
    Pointer<COMObject> pif,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iIndex,
            Pointer<COMObject> psiRoot,
            Uint32 grfEnumFlags,
            Uint32 grfRootStyle,
            Pointer<COMObject> pif,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iIndex,
            Pointer<COMObject> psiRoot,
            int grfEnumFlags,
            int grfRootStyle,
            Pointer<COMObject> pif,
          )>()(
        ptr.ref.lpVtbl,
        iIndex,
        psiRoot,
        grfEnumFlags,
        grfRootStyle,
        pif,
      );

  int RemoveRoot(
    Pointer<COMObject> psiRoot,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psiRoot,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psiRoot,
          )>()(
        ptr.ref.lpVtbl,
        psiRoot,
      );

  int RemoveAllRoots() => ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetRootItems(
    Pointer<Pointer<COMObject>> ppsiaRootItems,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppsiaRootItems,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppsiaRootItems,
          )>()(
        ptr.ref.lpVtbl,
        ppsiaRootItems,
      );

  int SetItemState(
    Pointer<COMObject> psi,
    int nstcisMask,
    int nstcisFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psi,
            Uint32 nstcisMask,
            Uint32 nstcisFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psi,
            int nstcisMask,
            int nstcisFlags,
          )>()(
        ptr.ref.lpVtbl,
        psi,
        nstcisMask,
        nstcisFlags,
      );

  int GetItemState(
    Pointer<COMObject> psi,
    int nstcisMask,
    Pointer<Uint32> pnstcisFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psi,
            Uint32 nstcisMask,
            Pointer<Uint32> pnstcisFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psi,
            int nstcisMask,
            Pointer<Uint32> pnstcisFlags,
          )>()(
        ptr.ref.lpVtbl,
        psi,
        nstcisMask,
        pnstcisFlags,
      );

  int GetSelectedItems(
    Pointer<Pointer<COMObject>> psiaItems,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> psiaItems,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> psiaItems,
          )>()(
        ptr.ref.lpVtbl,
        psiaItems,
      );

  int GetItemCustomState(
    Pointer<COMObject> psi,
    Pointer<Int32> piStateNumber,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psi,
            Pointer<Int32> piStateNumber,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psi,
            Pointer<Int32> piStateNumber,
          )>()(
        ptr.ref.lpVtbl,
        psi,
        piStateNumber,
      );

  int SetItemCustomState(
    Pointer<COMObject> psi,
    int iStateNumber,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psi,
            Int32 iStateNumber,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psi,
            int iStateNumber,
          )>()(
        ptr.ref.lpVtbl,
        psi,
        iStateNumber,
      );

  int EnsureItemVisible(
    Pointer<COMObject> psi,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psi,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psi,
          )>()(
        ptr.ref.lpVtbl,
        psi,
      );

  int SetTheme(
    Pointer<Utf16> pszTheme,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszTheme,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszTheme,
          )>()(
        ptr.ref.lpVtbl,
        pszTheme,
      );

  int GetNextItem(
    Pointer<COMObject> psi,
    int nstcgi,
    Pointer<Pointer<COMObject>> ppsiNext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psi,
            Int32 nstcgi,
            Pointer<Pointer<COMObject>> ppsiNext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psi,
            int nstcgi,
            Pointer<Pointer<COMObject>> ppsiNext,
          )>()(
        ptr.ref.lpVtbl,
        psi,
        nstcgi,
        ppsiNext,
      );

  int HitTest(
    Pointer<POINT> ppt,
    Pointer<Pointer<COMObject>> ppsiOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<POINT> ppt,
            Pointer<Pointer<COMObject>> ppsiOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<POINT> ppt,
            Pointer<Pointer<COMObject>> ppsiOut,
          )>()(
        ptr.ref.lpVtbl,
        ppt,
        ppsiOut,
      );

  int GetItemRect(
    Pointer<COMObject> psi,
    Pointer<RECT> prect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psi,
            Pointer<RECT> prect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psi,
            Pointer<RECT> prect,
          )>()(
        ptr.ref.lpVtbl,
        psi,
        prect,
      );

  int CollapseAll() => ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
