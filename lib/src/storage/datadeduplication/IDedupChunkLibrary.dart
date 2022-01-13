// IDedupChunkLibrary.dart

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

/// @nodoc
const IID_IDedupChunkLibrary = '{BB5144D7-2720-4DCC-8777-78597416EC23}';

/// {@category Interface}
/// {@category com}
class IDedupChunkLibrary extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IDedupChunkLibrary(Pointer<COMObject> ptr) : super(ptr);

  int InitializeForPushBuffers() => ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int Uninitialize() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int SetParameter(
    int dwParamType,
    VARIANT vParamValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwParamType,
            VARIANT vParamValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwParamType,
            VARIANT vParamValue,
          )>()(
        ptr.ref.lpVtbl,
        dwParamType,
        vParamValue,
      );

  int StartChunking(
    GUID iidIteratorInterfaceID,
    Pointer<Pointer<COMObject>> ppChunksEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID iidIteratorInterfaceID,
            Pointer<Pointer<COMObject>> ppChunksEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID iidIteratorInterfaceID,
            Pointer<Pointer<COMObject>> ppChunksEnum,
          )>()(
        ptr.ref.lpVtbl,
        iidIteratorInterfaceID,
        ppChunksEnum,
      );
}
