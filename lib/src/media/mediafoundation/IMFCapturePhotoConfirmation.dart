// IMFCapturePhotoConfirmation.dart

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
import '../../media/mediafoundation/IMFAsyncCallback.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFCapturePhotoConfirmation =
    '{19F68549-CA8A-4706-A4EF-481DBC95E12C}';

/// {@category Interface}
/// {@category com}
class IMFCapturePhotoConfirmation extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMFCapturePhotoConfirmation(Pointer<COMObject> ptr) : super(ptr);

  int SetPhotoConfirmationCallback(
    Pointer<COMObject> pNotificationCallback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pNotificationCallback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pNotificationCallback,
          )>()(
        ptr.ref.lpVtbl,
        pNotificationCallback,
      );

  int SetPixelFormat(
    GUID subtype,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID subtype,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID subtype,
          )>()(
        ptr.ref.lpVtbl,
        subtype,
      );

  int GetPixelFormat(
    Pointer<GUID> subtype,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> subtype,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> subtype,
          )>()(
        ptr.ref.lpVtbl,
        subtype,
      );
}
