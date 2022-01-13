// IMarshal.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/com/IStream.dart';

/// @nodoc
const IID_IMarshal = '{00000003-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class IMarshal extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IMarshal(Pointer<COMObject> ptr) : super(ptr);

  int GetUnmarshalClass(
    Pointer<GUID> riid,
    Pointer pv,
    int dwDestContext,
    Pointer pvDestContext,
    int mshlflags,
    Pointer<GUID> pCid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer pv,
            Uint32 dwDestContext,
            Pointer pvDestContext,
            Uint32 mshlflags,
            Pointer<GUID> pCid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer pv,
            int dwDestContext,
            Pointer pvDestContext,
            int mshlflags,
            Pointer<GUID> pCid,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        pv,
        dwDestContext,
        pvDestContext,
        mshlflags,
        pCid,
      );

  int GetMarshalSizeMax(
    Pointer<GUID> riid,
    Pointer pv,
    int dwDestContext,
    Pointer pvDestContext,
    int mshlflags,
    Pointer<Uint32> pSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer pv,
            Uint32 dwDestContext,
            Pointer pvDestContext,
            Uint32 mshlflags,
            Pointer<Uint32> pSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer pv,
            int dwDestContext,
            Pointer pvDestContext,
            int mshlflags,
            Pointer<Uint32> pSize,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        pv,
        dwDestContext,
        pvDestContext,
        mshlflags,
        pSize,
      );

  int MarshalInterface(
    Pointer<COMObject> pStm,
    Pointer<GUID> riid,
    Pointer pv,
    int dwDestContext,
    Pointer pvDestContext,
    int mshlflags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pStm,
            Pointer<GUID> riid,
            Pointer pv,
            Uint32 dwDestContext,
            Pointer pvDestContext,
            Uint32 mshlflags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pStm,
            Pointer<GUID> riid,
            Pointer pv,
            int dwDestContext,
            Pointer pvDestContext,
            int mshlflags,
          )>()(
        ptr.ref.lpVtbl,
        pStm,
        riid,
        pv,
        dwDestContext,
        pvDestContext,
        mshlflags,
      );

  int UnmarshalInterface(
    Pointer<COMObject> pStm,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pStm,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pStm,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        pStm,
        riid,
        ppv,
      );

  int ReleaseMarshalData(
    Pointer<COMObject> pStm,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pStm,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pStm,
          )>()(
        ptr.ref.lpVtbl,
        pStm,
      );

  int DisconnectObject(
    int dwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwReserved,
          )>()(
        ptr.ref.lpVtbl,
        dwReserved,
      );
}
