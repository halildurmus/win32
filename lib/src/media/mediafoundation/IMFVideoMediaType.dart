// IMFVideoMediaType.dart

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

import '../../media/mediafoundation/IMFMediaType.dart';
import '../../media/mediafoundation/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFVideoMediaType = '{B99F381F-A8F9-47A2-A5AF-CA3A225A3890}';

/// {@category Interface}
/// {@category com}
class IMFVideoMediaType extends IMFMediaType {
  // vtable begins at 38, is 2 entries long.
  IMFVideoMediaType(Pointer<COMObject> ptr) : super(ptr);

  Pointer<MFVIDEOFORMAT> GetVideoFormat() => ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<MFVIDEOFORMAT> Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              Pointer<MFVIDEOFORMAT> Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetVideoRepresentation(
    GUID guidRepresentation,
    Pointer<Pointer> ppvRepresentation,
    int lStride,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID guidRepresentation,
            Pointer<Pointer> ppvRepresentation,
            Int32 lStride,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID guidRepresentation,
            Pointer<Pointer> ppvRepresentation,
            int lStride,
          )>()(
        ptr.ref.lpVtbl,
        guidRepresentation,
        ppvRepresentation,
        lStride,
      );
}
