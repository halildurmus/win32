// IDVB_DIT.dart

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

/// @nodoc
const IID_IDVB_DIT = '{91BFFDF9-9432-410F-86EF-1C228ED0AD70}';

/// {@category Interface}
/// {@category com}
class IDVB_DIT extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDVB_DIT(Pointer<COMObject> ptr) : super(ptr);

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

  int GetTransitionFlag(
    Pointer<Int32> pfVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfVal,
          )>()(
        ptr.ref.lpVtbl,
        pfVal,
      );
}
