// ITfTransitoryExtensionSink.dart

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
import '../../ui/textservices/ITfContext.dart';
import '../../ui/textservices/ITfRange.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITfTransitoryExtensionSink = '{A615096F-1C57-4813-8A15-55EE6E5A839C}';

/// {@category Interface}
/// {@category com}
class ITfTransitoryExtensionSink extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ITfTransitoryExtensionSink(Pointer<COMObject> ptr) : super(ptr);

  int OnTransitoryExtensionUpdated(
    Pointer<COMObject> pic,
    int ecReadOnly,
    Pointer<COMObject> pResultRange,
    Pointer<COMObject> pCompositionRange,
    Pointer<Int32> pfDeleteResultRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pic,
            Uint32 ecReadOnly,
            Pointer<COMObject> pResultRange,
            Pointer<COMObject> pCompositionRange,
            Pointer<Int32> pfDeleteResultRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pic,
            int ecReadOnly,
            Pointer<COMObject> pResultRange,
            Pointer<COMObject> pCompositionRange,
            Pointer<Int32> pfDeleteResultRange,
          )>()(
        ptr.ref.lpVtbl,
        pic,
        ecReadOnly,
        pResultRange,
        pCompositionRange,
        pfDeleteResultRange,
      );
}
