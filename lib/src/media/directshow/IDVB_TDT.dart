// IDVB_TDT.dart

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
import '../../media/directshow/ISectionList.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IDVB_TDT = '{0780DC7D-D55C-4AEF-97E6-6B75906E2796}';

/// {@category Interface}
/// {@category com}
class IDVB_TDT extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDVB_TDT(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<COMObject> pSectionList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSectionList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSectionList,
          )>()(
        ptr.ref.lpVtbl,
        pSectionList,
      );

  int GetUTCTime(
    Pointer<MPEG_DATE_AND_TIME> pmdtVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MPEG_DATE_AND_TIME> pmdtVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MPEG_DATE_AND_TIME> pmdtVal,
          )>()(
        ptr.ref.lpVtbl,
        pmdtVal,
      );
}
