// IChangeUnitListFilterInfo.dart

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

import '../../system/windowssync/ISyncFilterInfo.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IChangeUnitListFilterInfo = '{F2837671-0BDF-43FA-B502-232375FB50C2}';

/// {@category Interface}
/// {@category com}
class IChangeUnitListFilterInfo extends ISyncFilterInfo {
  // vtable begins at 4, is 3 entries long.
  IChangeUnitListFilterInfo(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<Pointer<Uint8>> ppbChangeUnitIds,
    int dwChangeUnitCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint8>> ppbChangeUnitIds,
            Uint32 dwChangeUnitCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint8>> ppbChangeUnitIds,
            int dwChangeUnitCount,
          )>()(
        ptr.ref.lpVtbl,
        ppbChangeUnitIds,
        dwChangeUnitCount,
      );

  int GetChangeUnitIdCount(
    Pointer<Uint32> pdwChangeUnitIdCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwChangeUnitIdCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwChangeUnitIdCount,
          )>()(
        ptr.ref.lpVtbl,
        pdwChangeUnitIdCount,
      );

  int GetChangeUnitId(
    int dwChangeUnitIdIndex,
    Pointer<Uint8> pbChangeUnitId,
    Pointer<Uint32> pcbIdSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwChangeUnitIdIndex,
            Pointer<Uint8> pbChangeUnitId,
            Pointer<Uint32> pcbIdSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwChangeUnitIdIndex,
            Pointer<Uint8> pbChangeUnitId,
            Pointer<Uint32> pcbIdSize,
          )>()(
        ptr.ref.lpVtbl,
        dwChangeUnitIdIndex,
        pbChangeUnitId,
        pcbIdSize,
      );
}
