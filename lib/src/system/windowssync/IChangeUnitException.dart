// IChangeUnitException.dart

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

/// @nodoc
const IID_IChangeUnitException = '{0CD7EE7C-FEC0-4021-99EE-F0E5348F2A5F}';

/// {@category Interface}
/// {@category com}
class IChangeUnitException extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IChangeUnitException(Pointer<COMObject> ptr) : super(ptr);

  int GetItemId(
    Pointer<Uint8> pbItemId,
    Pointer<Uint32> pcbIdSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbItemId,
            Pointer<Uint32> pcbIdSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbItemId,
            Pointer<Uint32> pcbIdSize,
          )>()(
        ptr.ref.lpVtbl,
        pbItemId,
        pcbIdSize,
      );

  int GetChangeUnitId(
    Pointer<Uint8> pbChangeUnitId,
    Pointer<Uint32> pcbIdSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbChangeUnitId,
            Pointer<Uint32> pcbIdSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbChangeUnitId,
            Pointer<Uint32> pcbIdSize,
          )>()(
        ptr.ref.lpVtbl,
        pbChangeUnitId,
        pcbIdSize,
      );

  int GetClockVector(
    Pointer<GUID> riid,
    Pointer<Pointer> ppUnk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppUnk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppUnk,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        ppUnk,
      );
}
