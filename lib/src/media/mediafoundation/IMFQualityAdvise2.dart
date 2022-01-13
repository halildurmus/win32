// IMFQualityAdvise2.dart

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

import '../../media/mediafoundation/IMFQualityAdvise.dart';
import '../../media/mediafoundation/IMFMediaEvent.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFQualityAdvise2 = '{F3706F0D-8EA2-4886-8000-7155E9EC2EAE}';

/// {@category Interface}
/// {@category com}
class IMFQualityAdvise2 extends IMFQualityAdvise {
  // vtable begins at 8, is 1 entries long.
  IMFQualityAdvise2(Pointer<COMObject> ptr) : super(ptr);

  int NotifyQualityEvent(
    Pointer<COMObject> pEvent,
    Pointer<Uint32> pdwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pEvent,
            Pointer<Uint32> pdwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pEvent,
            Pointer<Uint32> pdwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pEvent,
        pdwFlags,
      );
}
