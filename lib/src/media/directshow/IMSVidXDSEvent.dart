// IMSVidXDSEvent.dart

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

import '../../media/directshow/IMSVidFeatureEvent.dart';
import '../../media/directshow/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMSVidXDSEvent = '{6DB2317D-3B23-41EC-BA4B-701F407EAF3A}';

/// {@category Interface}
/// {@category com}
class IMSVidXDSEvent extends IMSVidFeatureEvent {
  // vtable begins at 8, is 1 entries long.
  IMSVidXDSEvent(Pointer<COMObject> ptr) : super(ptr);

  int RatingChange(
    int PrevRatingSystem,
    int PrevLevel,
    int PrevAttributes,
    int NewRatingSystem,
    int NewLevel,
    int NewAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 PrevRatingSystem,
            Int32 PrevLevel,
            Int32 PrevAttributes,
            Int32 NewRatingSystem,
            Int32 NewLevel,
            Int32 NewAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int PrevRatingSystem,
            int PrevLevel,
            int PrevAttributes,
            int NewRatingSystem,
            int NewLevel,
            int NewAttributes,
          )>()(
        ptr.ref.lpVtbl,
        PrevRatingSystem,
        PrevLevel,
        PrevAttributes,
        NewRatingSystem,
        NewLevel,
        NewAttributes,
      );
}
