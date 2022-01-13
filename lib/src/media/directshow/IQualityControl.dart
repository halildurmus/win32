// IQualityControl.dart

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
import '../../media/directshow/IBaseFilter.dart';
import '../../media/directshow/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/IQualityControl.dart';

/// @nodoc
const IID_IQualityControl = '{56A868A5-0AD4-11CE-B03A-0020AF0BA770}';

/// {@category Interface}
/// {@category com}
class IQualityControl extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IQualityControl(Pointer<COMObject> ptr) : super(ptr);

  int Notify(
    Pointer<COMObject> pSelf,
    Quality q,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSelf,
            Quality q,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSelf,
            Quality q,
          )>()(
        ptr.ref.lpVtbl,
        pSelf,
        q,
      );

  int SetSink(
    Pointer<COMObject> piqc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> piqc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> piqc,
          )>()(
        ptr.ref.lpVtbl,
        piqc,
      );
}
