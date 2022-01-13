// IMSVidGenericSink2.dart

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

import '../../media/directshow/IMSVidGenericSink.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMSVidGenericSink2 = '{6B5A28F3-47F1-4092-B168-60CABEC08F1C}';

/// {@category Interface}
/// {@category com}
class IMSVidGenericSink2 extends IMSVidGenericSink {
  // vtable begins at 19, is 2 entries long.
  IMSVidGenericSink2(Pointer<COMObject> ptr) : super(ptr);

  int AddFilter(
    Pointer<Utf16> bstrName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrName,
          )>()(
        ptr.ref.lpVtbl,
        bstrName,
      );

  int ResetFilterList() => ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
