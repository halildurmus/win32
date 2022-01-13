// IEnumPIDMap.dart

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
import '../../media/directshow/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/IEnumPIDMap.dart';

/// @nodoc
const IID_IEnumPIDMap = '{AFB6C2A2-2C41-11D3-8A60-0000F81E0E4A}';

/// {@category Interface}
/// {@category com}
class IEnumPIDMap extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IEnumPIDMap(Pointer<COMObject> ptr) : super(ptr);

  int Next(
    int cRequest,
    Pointer<PID_MAP> pPIDMap,
    Pointer<Uint32> pcReceived,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cRequest,
            Pointer<PID_MAP> pPIDMap,
            Pointer<Uint32> pcReceived,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cRequest,
            Pointer<PID_MAP> pPIDMap,
            Pointer<Uint32> pcReceived,
          )>()(
        ptr.ref.lpVtbl,
        cRequest,
        pPIDMap,
        pcReceived,
      );

  int Skip(
    int cRecords,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cRecords,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cRecords,
          )>()(
        ptr.ref.lpVtbl,
        cRecords,
      );

  int Reset() => ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int Clone(
    Pointer<Pointer<COMObject>> ppIEnumPIDMap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIEnumPIDMap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIEnumPIDMap,
          )>()(
        ptr.ref.lpVtbl,
        ppIEnumPIDMap,
      );
}
