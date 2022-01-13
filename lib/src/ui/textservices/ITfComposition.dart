// ITfComposition.dart

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
import '../../ui/textservices/ITfRange.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITfComposition = '{20168D64-5A8F-4A5A-B7BD-CFA29F4D0FD9}';

/// {@category Interface}
/// {@category com}
class ITfComposition extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ITfComposition(Pointer<COMObject> ptr) : super(ptr);

  int GetRange(
    Pointer<Pointer<COMObject>> ppRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppRange,
          )>()(
        ptr.ref.lpVtbl,
        ppRange,
      );

  int ShiftStart(
    int ecWrite,
    Pointer<COMObject> pNewStart,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ecWrite,
            Pointer<COMObject> pNewStart,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ecWrite,
            Pointer<COMObject> pNewStart,
          )>()(
        ptr.ref.lpVtbl,
        ecWrite,
        pNewStart,
      );

  int ShiftEnd(
    int ecWrite,
    Pointer<COMObject> pNewEnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ecWrite,
            Pointer<COMObject> pNewEnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ecWrite,
            Pointer<COMObject> pNewEnd,
          )>()(
        ptr.ref.lpVtbl,
        ecWrite,
        pNewEnd,
      );

  int EndComposition(
    int ecWrite,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ecWrite,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ecWrite,
          )>()(
        ptr.ref.lpVtbl,
        ecWrite,
      );
}
