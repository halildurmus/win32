// IMMNotificationClient.dart

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
import '../../media/audio/structs.g.dart';
import '../../ui/shell/propertiessystem/structs.g.dart';

/// @nodoc
const IID_IMMNotificationClient = '{7991EEC9-7E89-4D85-8390-6C703CEC60C0}';

/// {@category Interface}
/// {@category com}
class IMMNotificationClient extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IMMNotificationClient(Pointer<COMObject> ptr) : super(ptr);

  int OnDeviceStateChanged(
    Pointer<Utf16> pwstrDeviceId,
    int dwNewState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwstrDeviceId,
            Uint32 dwNewState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwstrDeviceId,
            int dwNewState,
          )>()(
        ptr.ref.lpVtbl,
        pwstrDeviceId,
        dwNewState,
      );

  int OnDeviceAdded(
    Pointer<Utf16> pwstrDeviceId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwstrDeviceId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwstrDeviceId,
          )>()(
        ptr.ref.lpVtbl,
        pwstrDeviceId,
      );

  int OnDeviceRemoved(
    Pointer<Utf16> pwstrDeviceId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwstrDeviceId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwstrDeviceId,
          )>()(
        ptr.ref.lpVtbl,
        pwstrDeviceId,
      );

  int OnDefaultDeviceChanged(
    int flow,
    int role,
    Pointer<Utf16> pwstrDefaultDeviceId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 flow,
            Int32 role,
            Pointer<Utf16> pwstrDefaultDeviceId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int flow,
            int role,
            Pointer<Utf16> pwstrDefaultDeviceId,
          )>()(
        ptr.ref.lpVtbl,
        flow,
        role,
        pwstrDefaultDeviceId,
      );

  int OnPropertyValueChanged(
    Pointer<Utf16> pwstrDeviceId,
    PROPERTYKEY key,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwstrDeviceId,
            PROPERTYKEY key,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwstrDeviceId,
            PROPERTYKEY key,
          )>()(
        ptr.ref.lpVtbl,
        pwstrDeviceId,
        key,
      );
}
