// IStreamBufferSink3.dart

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

import '../../media/directshow/IStreamBufferSink2.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IStreamBufferSink3 = '{974723F2-887A-4452-9366-2CFF3057BC8F}';

/// {@category Interface}
/// {@category com}
class IStreamBufferSink3 extends IStreamBufferSink2 {
  // vtable begins at 7, is 1 entries long.
  IStreamBufferSink3(Pointer<COMObject> ptr) : super(ptr);

  int SetAvailableFilter(
    Pointer<Int64> prtMin,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> prtMin,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> prtMin,
          )>()(
        ptr.ref.lpVtbl,
        prtMin,
      );
}
