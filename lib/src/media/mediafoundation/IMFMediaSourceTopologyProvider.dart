// IMFMediaSourceTopologyProvider.dart

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
import '../../media/mediafoundation/IMFPresentationDescriptor.dart';
import '../../media/mediafoundation/IMFTopology.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFMediaSourceTopologyProvider =
    '{0E1D6009-C9F3-442D-8C51-A42D2D49452F}';

/// {@category Interface}
/// {@category com}
class IMFMediaSourceTopologyProvider extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMFMediaSourceTopologyProvider(Pointer<COMObject> ptr) : super(ptr);

  int GetMediaSourceTopology(
    Pointer<COMObject> pPresentationDescriptor,
    Pointer<Pointer<COMObject>> ppTopology,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPresentationDescriptor,
            Pointer<Pointer<COMObject>> ppTopology,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPresentationDescriptor,
            Pointer<Pointer<COMObject>> ppTopology,
          )>()(
        ptr.ref.lpVtbl,
        pPresentationDescriptor,
        ppTopology,
      );
}
