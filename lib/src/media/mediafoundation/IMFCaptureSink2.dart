// IMFCaptureSink2.dart

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

import '../../media/mediafoundation/IMFCaptureSink.dart';
import '../../media/mediafoundation/IMFMediaType.dart';
import '../../media/mediafoundation/IMFAttributes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFCaptureSink2 = '{F9E4219E-6197-4B5E-B888-BEE310AB2C59}';

/// {@category Interface}
/// {@category com}
class IMFCaptureSink2 extends IMFCaptureSink {
  // vtable begins at 8, is 1 entries long.
  IMFCaptureSink2(Pointer<COMObject> ptr) : super(ptr);

  int SetOutputMediaType(
    int dwStreamIndex,
    Pointer<COMObject> pMediaType,
    Pointer<COMObject> pEncodingAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamIndex,
            Pointer<COMObject> pMediaType,
            Pointer<COMObject> pEncodingAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamIndex,
            Pointer<COMObject> pMediaType,
            Pointer<COMObject> pEncodingAttributes,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIndex,
        pMediaType,
        pEncodingAttributes,
      );
}
