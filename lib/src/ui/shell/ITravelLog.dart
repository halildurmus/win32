// ITravelLog.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../ui/shell/ITravelEntry.dart';
import '../../ui/shell/common/structs.g.dart';
import '../../ui/windowsandmessaging/structs.g.dart';
import '../../ui/shell/ITravelLog.dart';

/// @nodoc
const IID_ITravelLog = '{66A9CB08-4802-11D2-A561-00A0C92DBFE8}';

/// {@category Interface}
/// {@category com}
class ITravelLog extends IUnknown {
  // vtable begins at 3, is 11 entries long.
  ITravelLog(Pointer<COMObject> ptr) : super(ptr);

  int AddEntry(
    Pointer<COMObject> punk,
    int fIsLocalAnchor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punk,
            Int32 fIsLocalAnchor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punk,
            int fIsLocalAnchor,
          )>()(
        ptr.ref.lpVtbl,
        punk,
        fIsLocalAnchor,
      );

  int UpdateEntry(
    Pointer<COMObject> punk,
    int fIsLocalAnchor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punk,
            Int32 fIsLocalAnchor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punk,
            int fIsLocalAnchor,
          )>()(
        ptr.ref.lpVtbl,
        punk,
        fIsLocalAnchor,
      );

  int UpdateExternal(
    Pointer<COMObject> punk,
    Pointer<COMObject> punkHLBrowseContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punk,
            Pointer<COMObject> punkHLBrowseContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punk,
            Pointer<COMObject> punkHLBrowseContext,
          )>()(
        ptr.ref.lpVtbl,
        punk,
        punkHLBrowseContext,
      );

  int Travel(
    Pointer<COMObject> punk,
    int iOffset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punk,
            Int32 iOffset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punk,
            int iOffset,
          )>()(
        ptr.ref.lpVtbl,
        punk,
        iOffset,
      );

  int GetTravelEntry(
    Pointer<COMObject> punk,
    int iOffset,
    Pointer<Pointer<COMObject>> ppte,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punk,
            Int32 iOffset,
            Pointer<Pointer<COMObject>> ppte,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punk,
            int iOffset,
            Pointer<Pointer<COMObject>> ppte,
          )>()(
        ptr.ref.lpVtbl,
        punk,
        iOffset,
        ppte,
      );

  int FindTravelEntry(
    Pointer<COMObject> punk,
    Pointer<ITEMIDLIST> pidl,
    Pointer<Pointer<COMObject>> ppte,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punk,
            Pointer<ITEMIDLIST> pidl,
            Pointer<Pointer<COMObject>> ppte,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punk,
            Pointer<ITEMIDLIST> pidl,
            Pointer<Pointer<COMObject>> ppte,
          )>()(
        ptr.ref.lpVtbl,
        punk,
        pidl,
        ppte,
      );

  int GetToolTipText(
    Pointer<COMObject> punk,
    int iOffset,
    int idsTemplate,
    Pointer<Utf16> pwzText,
    int cchText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punk,
            Int32 iOffset,
            Int32 idsTemplate,
            Pointer<Utf16> pwzText,
            Uint32 cchText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punk,
            int iOffset,
            int idsTemplate,
            Pointer<Utf16> pwzText,
            int cchText,
          )>()(
        ptr.ref.lpVtbl,
        punk,
        iOffset,
        idsTemplate,
        pwzText,
        cchText,
      );

  int InsertMenuEntries(
    Pointer<COMObject> punk,
    int hmenu,
    int nPos,
    int idFirst,
    int idLast,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punk,
            IntPtr hmenu,
            Int32 nPos,
            Int32 idFirst,
            Int32 idLast,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punk,
            int hmenu,
            int nPos,
            int idFirst,
            int idLast,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        punk,
        hmenu,
        nPos,
        idFirst,
        idLast,
        dwFlags,
      );

  int Clone(
    Pointer<Pointer<COMObject>> pptl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pptl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pptl,
          )>()(
        ptr.ref.lpVtbl,
        pptl,
      );

  int CountEntries(
    Pointer<COMObject> punk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
            Pointer<COMObject> punk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punk,
          )>()(
        ptr.ref.lpVtbl,
        punk,
      );

  int Revert() => ptr.ref.lpVtbl.value
          .elementAt(13)
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
