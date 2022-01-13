// IDVB_EIT2.dart

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

import '../../media/directshow/IDVB_EIT.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDVB_EIT2 = '{61A389E0-9B9E-4BA0-AEEA-5DDD159820EA}';

/// {@category Interface}
/// {@category com}
class IDVB_EIT2 extends IDVB_EIT {
  // vtable begins at 24, is 2 entries long.
  IDVB_EIT2(Pointer<COMObject> ptr) : super(ptr);

  int GetSegmentInfo(
    Pointer<Uint8> pbTid,
    Pointer<Uint8> pbSegment,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbTid,
            Pointer<Uint8> pbSegment,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbTid,
            Pointer<Uint8> pbSegment,
          )>()(
        ptr.ref.lpVtbl,
        pbTid,
        pbSegment,
      );

  int GetRecordSection(
    int dwRecordIndex,
    Pointer<Uint8> pbVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwRecordIndex,
            Pointer<Uint8> pbVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwRecordIndex,
            Pointer<Uint8> pbVal,
          )>()(
        ptr.ref.lpVtbl,
        dwRecordIndex,
        pbVal,
      );
}
