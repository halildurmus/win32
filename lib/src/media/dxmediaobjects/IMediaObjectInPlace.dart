// IMediaObjectInPlace.dart

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
import '../../media/dxmediaobjects/IMediaObjectInPlace.dart';

/// @nodoc
const IID_IMediaObjectInPlace = '{651B9AD0-0FC7-4AA9-9538-D89931010741}';

/// {@category Interface}
/// {@category com}
class IMediaObjectInPlace extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMediaObjectInPlace(Pointer<COMObject> ptr) : super(ptr);

  int Process(
    int ulSize,
    Pointer<Uint8> pData,
    int refTimeStart,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulSize,
            Pointer<Uint8> pData,
            Int64 refTimeStart,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulSize,
            Pointer<Uint8> pData,
            int refTimeStart,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        ulSize,
        pData,
        refTimeStart,
        dwFlags,
      );

  int Clone(
    Pointer<Pointer<COMObject>> ppMediaObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppMediaObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppMediaObject,
          )>()(
        ptr.ref.lpVtbl,
        ppMediaObject,
      );

  int GetLatency(
    Pointer<Int64> pLatencyTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> pLatencyTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> pLatencyTime,
          )>()(
        ptr.ref.lpVtbl,
        pLatencyTime,
      );
}
