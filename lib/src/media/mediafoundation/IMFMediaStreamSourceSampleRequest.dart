// IMFMediaStreamSourceSampleRequest.dart

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
import '../../media/mediafoundation/IMFSample.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFMediaStreamSourceSampleRequest =
    '{380B9AF9-A85B-4E78-A2AF-EA5CE645C6B4}';

/// {@category Interface}
/// {@category com}
class IMFMediaStreamSourceSampleRequest extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMFMediaStreamSourceSampleRequest(Pointer<COMObject> ptr) : super(ptr);

  int SetSample(
    Pointer<COMObject> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> value,
          )>()(
        ptr.ref.lpVtbl,
        value,
      );
}
