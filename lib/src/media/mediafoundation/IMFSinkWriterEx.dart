// IMFSinkWriterEx.dart

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

import '../../media/mediafoundation/IMFSinkWriter.dart';
import '../../media/mediafoundation/IMFTransform.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFSinkWriterEx = '{588D72AB-5BC1-496A-8714-B70617141B25}';

/// {@category Interface}
/// {@category com}
class IMFSinkWriterEx extends IMFSinkWriter {
  // vtable begins at 14, is 1 entries long.
  IMFSinkWriterEx(Pointer<COMObject> ptr) : super(ptr);

  int GetTransformForStream(
    int dwStreamIndex,
    int dwTransformIndex,
    Pointer<GUID> pGuidCategory,
    Pointer<Pointer<COMObject>> ppTransform,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamIndex,
            Uint32 dwTransformIndex,
            Pointer<GUID> pGuidCategory,
            Pointer<Pointer<COMObject>> ppTransform,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamIndex,
            int dwTransformIndex,
            Pointer<GUID> pGuidCategory,
            Pointer<Pointer<COMObject>> ppTransform,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIndex,
        dwTransformIndex,
        pGuidCategory,
        ppTransform,
      );
}
