// ITransactionImportWhereabouts.dart

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
const IID_ITransactionImportWhereabouts =
    '{0141FDA4-8FC0-11CE-BD18-204C4F4F5020}';

/// {@category Interface}
/// {@category com}
class ITransactionImportWhereabouts extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ITransactionImportWhereabouts(Pointer<COMObject> ptr) : super(ptr);

  int GetWhereaboutsSize(
    Pointer<Uint32> pcbWhereabouts,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcbWhereabouts,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcbWhereabouts,
          )>()(
        ptr.ref.lpVtbl,
        pcbWhereabouts,
      );

  int GetWhereabouts(
    int cbWhereabouts,
    Pointer<Uint8> rgbWhereabouts,
    Pointer<Uint32> pcbUsed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cbWhereabouts,
            Pointer<Uint8> rgbWhereabouts,
            Pointer<Uint32> pcbUsed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbWhereabouts,
            Pointer<Uint8> rgbWhereabouts,
            Pointer<Uint32> pcbUsed,
          )>()(
        ptr.ref.lpVtbl,
        cbWhereabouts,
        rgbWhereabouts,
        pcbUsed,
      );
}
