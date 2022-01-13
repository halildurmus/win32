// ITravelLogStg.dart

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
import '../../ui/shell/ITravelLogEntry.dart';
import '../../ui/shell/structs.g.dart';
import '../../ui/shell/IEnumTravelLogEntry.dart';

/// @nodoc
const IID_ITravelLogStg = '{7EBFDD80-AD18-11D3-A4C5-00C04F72D6B8}';

/// {@category Interface}
/// {@category com}
class ITravelLogStg extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  ITravelLogStg(Pointer<COMObject> ptr) : super(ptr);

  int CreateEntry(
    Pointer<Utf16> pszUrl,
    Pointer<Utf16> pszTitle,
    Pointer<COMObject> ptleRelativeTo,
    int fPrepend,
    Pointer<Pointer<COMObject>> pptle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszUrl,
            Pointer<Utf16> pszTitle,
            Pointer<COMObject> ptleRelativeTo,
            Int32 fPrepend,
            Pointer<Pointer<COMObject>> pptle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszUrl,
            Pointer<Utf16> pszTitle,
            Pointer<COMObject> ptleRelativeTo,
            int fPrepend,
            Pointer<Pointer<COMObject>> pptle,
          )>()(
        ptr.ref.lpVtbl,
        pszUrl,
        pszTitle,
        ptleRelativeTo,
        fPrepend,
        pptle,
      );

  int TravelTo(
    Pointer<COMObject> ptle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> ptle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> ptle,
          )>()(
        ptr.ref.lpVtbl,
        ptle,
      );

  int EnumEntries(
    int flags,
    Pointer<Pointer<COMObject>> ppenum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 flags,
            Pointer<Pointer<COMObject>> ppenum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int flags,
            Pointer<Pointer<COMObject>> ppenum,
          )>()(
        ptr.ref.lpVtbl,
        flags,
        ppenum,
      );

  int FindEntries(
    int flags,
    Pointer<Utf16> pszUrl,
    Pointer<Pointer<COMObject>> ppenum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 flags,
            Pointer<Utf16> pszUrl,
            Pointer<Pointer<COMObject>> ppenum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int flags,
            Pointer<Utf16> pszUrl,
            Pointer<Pointer<COMObject>> ppenum,
          )>()(
        ptr.ref.lpVtbl,
        flags,
        pszUrl,
        ppenum,
      );

  int GetCount(
    int flags,
    Pointer<Uint32> pcEntries,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 flags,
            Pointer<Uint32> pcEntries,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int flags,
            Pointer<Uint32> pcEntries,
          )>()(
        ptr.ref.lpVtbl,
        flags,
        pcEntries,
      );

  int RemoveEntry(
    Pointer<COMObject> ptle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> ptle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> ptle,
          )>()(
        ptr.ref.lpVtbl,
        ptle,
      );

  int GetRelativeEntry(
    int iOffset,
    Pointer<Pointer<COMObject>> ptle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iOffset,
            Pointer<Pointer<COMObject>> ptle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iOffset,
            Pointer<Pointer<COMObject>> ptle,
          )>()(
        ptr.ref.lpVtbl,
        iOffset,
        ptle,
      );
}
