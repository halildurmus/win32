// ITfContextOwnerCompositionSink.dart

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
import '../../ui/textservices/ITfCompositionView.dart';
import '../../foundation/structs.g.dart';
import '../../ui/textservices/ITfRange.dart';

/// @nodoc
const IID_ITfContextOwnerCompositionSink =
    '{5F20AA40-B57A-4F34-96AB-3576F377CC79}';

/// {@category Interface}
/// {@category com}
class ITfContextOwnerCompositionSink extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ITfContextOwnerCompositionSink(Pointer<COMObject> ptr) : super(ptr);

  int OnStartComposition(
    Pointer<COMObject> pComposition,
    Pointer<Int32> pfOk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pComposition,
            Pointer<Int32> pfOk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pComposition,
            Pointer<Int32> pfOk,
          )>()(
        ptr.ref.lpVtbl,
        pComposition,
        pfOk,
      );

  int OnUpdateComposition(
    Pointer<COMObject> pComposition,
    Pointer<COMObject> pRangeNew,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pComposition,
            Pointer<COMObject> pRangeNew,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pComposition,
            Pointer<COMObject> pRangeNew,
          )>()(
        ptr.ref.lpVtbl,
        pComposition,
        pRangeNew,
      );

  int OnEndComposition(
    Pointer<COMObject> pComposition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pComposition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pComposition,
          )>()(
        ptr.ref.lpVtbl,
        pComposition,
      );
}
