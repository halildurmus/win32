// IMFMetadataProvider.dart

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
import '../../media/mediafoundation/IMFMetadata.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFMetadataProvider = '{56181D2D-E221-4ADB-B1C8-3CEE6A53F76F}';

/// {@category Interface}
/// {@category com}
class IMFMetadataProvider extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMFMetadataProvider(Pointer<COMObject> ptr) : super(ptr);

  int GetMFMetadata(
    Pointer<COMObject> pPresentationDescriptor,
    int dwStreamIdentifier,
    int dwFlags,
    Pointer<Pointer<COMObject>> ppMFMetadata,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPresentationDescriptor,
            Uint32 dwStreamIdentifier,
            Uint32 dwFlags,
            Pointer<Pointer<COMObject>> ppMFMetadata,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPresentationDescriptor,
            int dwStreamIdentifier,
            int dwFlags,
            Pointer<Pointer<COMObject>> ppMFMetadata,
          )>()(
        ptr.ref.lpVtbl,
        pPresentationDescriptor,
        dwStreamIdentifier,
        dwFlags,
        ppMFMetadata,
      );
}
