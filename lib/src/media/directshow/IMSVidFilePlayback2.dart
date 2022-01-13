// IMSVidFilePlayback2.dart

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

import '../../media/directshow/IMSVidFilePlayback.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMSVidFilePlayback2 = '{2F7E44AF-6E52-4660-BC08-D8D542587D72}';

/// {@category Interface}
/// {@category com}
class IMSVidFilePlayback2 extends IMSVidFilePlayback {
  // vtable begins at 34, is 2 entries long.
  IMSVidFilePlayback2(Pointer<COMObject> ptr) : super(ptr);

  set SourceFilter(Pointer<Utf16> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(34)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<Utf16> FileName,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<Utf16> FileName,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int put___SourceFilter(
    GUID FileName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID FileName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID FileName,
          )>()(
        ptr.ref.lpVtbl,
        FileName,
      );
}
