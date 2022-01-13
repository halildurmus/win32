// IPrintAsyncNotifyDataObject.dart

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
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IPrintAsyncNotifyDataObject =
    '{77CF513E-5D49-4789-9F30-D0822B335C0D}';

/// {@category Interface}
/// {@category com}
class IPrintAsyncNotifyDataObject extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IPrintAsyncNotifyDataObject(Pointer<COMObject> ptr) : super(ptr);

  int AcquireData(
    Pointer<Pointer<Uint8>> ppNotificationData,
    Pointer<Uint32> pSize,
    Pointer<Pointer<GUID>> ppSchema,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint8>> ppNotificationData,
            Pointer<Uint32> pSize,
            Pointer<Pointer<GUID>> ppSchema,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint8>> ppNotificationData,
            Pointer<Uint32> pSize,
            Pointer<Pointer<GUID>> ppSchema,
          )>()(
        ptr.ref.lpVtbl,
        ppNotificationData,
        pSize,
        ppSchema,
      );

  int ReleaseData() => ptr.ref.lpVtbl.value
          .elementAt(4)
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
