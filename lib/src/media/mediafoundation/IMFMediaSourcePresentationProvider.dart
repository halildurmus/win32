// IMFMediaSourcePresentationProvider.dart

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
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFMediaSourcePresentationProvider =
    '{0E1D600A-C9F3-442D-8C51-A42D2D49452F}';

/// {@category Interface}
/// {@category com}
class IMFMediaSourcePresentationProvider extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMFMediaSourcePresentationProvider(Pointer<COMObject> ptr) : super(ptr);

  int ForceEndOfPresentation(
    Pointer<COMObject> pPresentationDescriptor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPresentationDescriptor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPresentationDescriptor,
          )>()(
        ptr.ref.lpVtbl,
        pPresentationDescriptor,
      );
}
