// ISAXLocator.dart

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

/// @nodoc
const IID_ISAXLocator = '{9B7E472A-0DE4-4640-BFF3-84D38A051C31}';

/// {@category Interface}
/// {@category com}
class ISAXLocator extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ISAXLocator(Pointer<COMObject> ptr) : super(ptr);

  int getColumnNumber(
    Pointer<Int32> pnColumn,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pnColumn,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pnColumn,
          )>()(
        ptr.ref.lpVtbl,
        pnColumn,
      );

  int getLineNumber(
    Pointer<Int32> pnLine,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pnLine,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pnLine,
          )>()(
        ptr.ref.lpVtbl,
        pnLine,
      );

  int getPublicId(
    Pointer<Pointer<Uint16>> ppwchPublicId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint16>> ppwchPublicId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint16>> ppwchPublicId,
          )>()(
        ptr.ref.lpVtbl,
        ppwchPublicId,
      );

  int getSystemId(
    Pointer<Pointer<Uint16>> ppwchSystemId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint16>> ppwchSystemId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint16>> ppwchSystemId,
          )>()(
        ptr.ref.lpVtbl,
        ppwchSystemId,
      );
}
