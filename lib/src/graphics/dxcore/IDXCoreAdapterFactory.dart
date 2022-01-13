// IDXCoreAdapterFactory.dart

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
import '../../graphics/dxcore/structs.g.dart';
import '../../specialTypes.dart';
import '../../graphics/dxcore/callbacks.g.dart';

/// @nodoc
const IID_IDXCoreAdapterFactory = '{78EE5945-C36E-4B13-A669-005DD11C0F06}';

/// {@category Interface}
/// {@category com}
class IDXCoreAdapterFactory extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IDXCoreAdapterFactory(Pointer<COMObject> ptr) : super(ptr);

  int CreateAdapterList(
    int numAttributes,
    Pointer<GUID> filterAttributes,
    Pointer<GUID> riid,
    Pointer<Pointer> ppvAdapterList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 numAttributes,
            Pointer<GUID> filterAttributes,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvAdapterList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int numAttributes,
            Pointer<GUID> filterAttributes,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvAdapterList,
          )>()(
        ptr.ref.lpVtbl,
        numAttributes,
        filterAttributes,
        riid,
        ppvAdapterList,
      );

  int GetAdapterByLuid(
    Pointer<LUID> adapterLUID,
    Pointer<GUID> riid,
    Pointer<Pointer> ppvAdapter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<LUID> adapterLUID,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvAdapter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<LUID> adapterLUID,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvAdapter,
          )>()(
        ptr.ref.lpVtbl,
        adapterLUID,
        riid,
        ppvAdapter,
      );

  bool IsNotificationTypeSupported(
    int notificationType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Bool Function(
            Pointer,
            Uint32 notificationType,
          )>>>()
          .value
          .asFunction<
              bool Function(
            Pointer,
            int notificationType,
          )>()(
        ptr.ref.lpVtbl,
        notificationType,
      );

  int RegisterEventNotification(
    Pointer<COMObject> dxCoreObject,
    int notificationType,
    Pointer<NativeFunction<PFN_DXCORE_NOTIFICATION_CALLBACK>> callbackFunction,
    Pointer callbackContext,
    Pointer<Uint32> eventCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> dxCoreObject,
            Uint32 notificationType,
            Pointer<NativeFunction<PFN_DXCORE_NOTIFICATION_CALLBACK>>
                callbackFunction,
            Pointer callbackContext,
            Pointer<Uint32> eventCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> dxCoreObject,
            int notificationType,
            Pointer<NativeFunction<PFN_DXCORE_NOTIFICATION_CALLBACK>>
                callbackFunction,
            Pointer callbackContext,
            Pointer<Uint32> eventCookie,
          )>()(
        ptr.ref.lpVtbl,
        dxCoreObject,
        notificationType,
        callbackFunction,
        callbackContext,
        eventCookie,
      );

  int UnregisterEventNotification(
    int eventCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 eventCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int eventCookie,
          )>()(
        ptr.ref.lpVtbl,
        eventCookie,
      );
}
