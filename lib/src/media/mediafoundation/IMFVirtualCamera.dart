// IMFVirtualCamera.dart

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

import '../../media/mediafoundation/IMFAttributes.dart';
import '../../foundation/structs.g.dart';
import '../../devices/properties/structs.g.dart';
import '../../media/mediafoundation/IMFAsyncCallback.dart';
import '../../media/mediafoundation/IMFMediaSource.dart';
import '../../media/mediafoundation/IMFCameraSyncObject.dart';

/// @nodoc
const IID_IMFVirtualCamera = '{1C08A864-EF6C-4C75-AF59-5F2D68DA9563}';

/// {@category Interface}
/// {@category com}
class IMFVirtualCamera extends IMFAttributes {
  // vtable begins at 33, is 11 entries long.
  IMFVirtualCamera(Pointer<COMObject> ptr) : super(ptr);

  int AddDeviceSourceInfo(
    Pointer<Utf16> DeviceSourceInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> DeviceSourceInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> DeviceSourceInfo,
          )>()(
        ptr.ref.lpVtbl,
        DeviceSourceInfo,
      );

  int AddProperty(
    Pointer<DEVPROPKEY> pKey,
    int Type,
    Pointer<Uint8> pbData,
    int cbData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DEVPROPKEY> pKey,
            Uint32 Type,
            Pointer<Uint8> pbData,
            Uint32 cbData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DEVPROPKEY> pKey,
            int Type,
            Pointer<Uint8> pbData,
            int cbData,
          )>()(
        ptr.ref.lpVtbl,
        pKey,
        Type,
        pbData,
        cbData,
      );

  int AddRegistryEntry(
    Pointer<Utf16> EntryName,
    Pointer<Utf16> SubkeyPath,
    int dwRegType,
    Pointer<Uint8> pbData,
    int cbData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> EntryName,
            Pointer<Utf16> SubkeyPath,
            Uint32 dwRegType,
            Pointer<Uint8> pbData,
            Uint32 cbData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> EntryName,
            Pointer<Utf16> SubkeyPath,
            int dwRegType,
            Pointer<Uint8> pbData,
            int cbData,
          )>()(
        ptr.ref.lpVtbl,
        EntryName,
        SubkeyPath,
        dwRegType,
        pbData,
        cbData,
      );

  int Start(
    Pointer<COMObject> pCallback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCallback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCallback,
          )>()(
        ptr.ref.lpVtbl,
        pCallback,
      );

  int Stop() => ptr.ref.lpVtbl.value
          .elementAt(37)
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

  int Remove() => ptr.ref.lpVtbl.value
          .elementAt(38)
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

  int GetMediaSource(
    Pointer<Pointer<COMObject>> ppMediaSource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppMediaSource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppMediaSource,
          )>()(
        ptr.ref.lpVtbl,
        ppMediaSource,
      );

  int SendCameraProperty(
    Pointer<GUID> propertySet,
    int propertyId,
    int propertyFlags,
    Pointer propertyPayload,
    int propertyPayloadLength,
    Pointer data,
    int dataLength,
    Pointer<Uint32> dataWritten,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> propertySet,
            Uint32 propertyId,
            Uint32 propertyFlags,
            Pointer propertyPayload,
            Uint32 propertyPayloadLength,
            Pointer data,
            Uint32 dataLength,
            Pointer<Uint32> dataWritten,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> propertySet,
            int propertyId,
            int propertyFlags,
            Pointer propertyPayload,
            int propertyPayloadLength,
            Pointer data,
            int dataLength,
            Pointer<Uint32> dataWritten,
          )>()(
        ptr.ref.lpVtbl,
        propertySet,
        propertyId,
        propertyFlags,
        propertyPayload,
        propertyPayloadLength,
        data,
        dataLength,
        dataWritten,
      );

  int CreateSyncEvent(
    Pointer<GUID> kseventSet,
    int kseventId,
    int kseventFlags,
    int eventHandle,
    Pointer<Pointer<COMObject>> cameraSyncObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> kseventSet,
            Uint32 kseventId,
            Uint32 kseventFlags,
            IntPtr eventHandle,
            Pointer<Pointer<COMObject>> cameraSyncObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> kseventSet,
            int kseventId,
            int kseventFlags,
            int eventHandle,
            Pointer<Pointer<COMObject>> cameraSyncObject,
          )>()(
        ptr.ref.lpVtbl,
        kseventSet,
        kseventId,
        kseventFlags,
        eventHandle,
        cameraSyncObject,
      );

  int CreateSyncSemaphore(
    Pointer<GUID> kseventSet,
    int kseventId,
    int kseventFlags,
    int semaphoreHandle,
    int semaphoreAdjustment,
    Pointer<Pointer<COMObject>> cameraSyncObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> kseventSet,
            Uint32 kseventId,
            Uint32 kseventFlags,
            IntPtr semaphoreHandle,
            Int32 semaphoreAdjustment,
            Pointer<Pointer<COMObject>> cameraSyncObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> kseventSet,
            int kseventId,
            int kseventFlags,
            int semaphoreHandle,
            int semaphoreAdjustment,
            Pointer<Pointer<COMObject>> cameraSyncObject,
          )>()(
        ptr.ref.lpVtbl,
        kseventSet,
        kseventId,
        kseventFlags,
        semaphoreHandle,
        semaphoreAdjustment,
        cameraSyncObject,
      );

  int Shutdown() => ptr.ref.lpVtbl.value
          .elementAt(43)
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
