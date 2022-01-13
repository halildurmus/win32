// IMFSensorTransformFactory.dart

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
import '../../media/mediafoundation/IMFAttributes.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/IMFCollection.dart';
import '../../media/streaming/IMFDeviceTransform.dart';

/// @nodoc
const IID_IMFSensorTransformFactory = '{EED9C2EE-66B4-4F18-A697-AC7D3960215C}';

/// {@category Interface}
/// {@category com}
class IMFSensorTransformFactory extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IMFSensorTransformFactory(Pointer<COMObject> ptr) : super(ptr);

  int GetFactoryAttributes(
    Pointer<Pointer<COMObject>> ppAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppAttributes,
          )>()(
        ptr.ref.lpVtbl,
        ppAttributes,
      );

  int InitializeFactory(
    int dwMaxTransformCount,
    Pointer<COMObject> pSensorDevices,
    Pointer<COMObject> pAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwMaxTransformCount,
            Pointer<COMObject> pSensorDevices,
            Pointer<COMObject> pAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwMaxTransformCount,
            Pointer<COMObject> pSensorDevices,
            Pointer<COMObject> pAttributes,
          )>()(
        ptr.ref.lpVtbl,
        dwMaxTransformCount,
        pSensorDevices,
        pAttributes,
      );

  int GetTransformCount(
    Pointer<Uint32> pdwCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwCount,
          )>()(
        ptr.ref.lpVtbl,
        pdwCount,
      );

  int GetTransformInformation(
    int TransformIndex,
    Pointer<GUID> pguidTransformId,
    Pointer<Pointer<COMObject>> ppAttributes,
    Pointer<Pointer<COMObject>> ppStreamInformation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 TransformIndex,
            Pointer<GUID> pguidTransformId,
            Pointer<Pointer<COMObject>> ppAttributes,
            Pointer<Pointer<COMObject>> ppStreamInformation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int TransformIndex,
            Pointer<GUID> pguidTransformId,
            Pointer<Pointer<COMObject>> ppAttributes,
            Pointer<Pointer<COMObject>> ppStreamInformation,
          )>()(
        ptr.ref.lpVtbl,
        TransformIndex,
        pguidTransformId,
        ppAttributes,
        ppStreamInformation,
      );

  int CreateTransform(
    Pointer<GUID> guidSensorTransformID,
    Pointer<COMObject> pAttributes,
    Pointer<Pointer<COMObject>> ppDeviceMFT,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidSensorTransformID,
            Pointer<COMObject> pAttributes,
            Pointer<Pointer<COMObject>> ppDeviceMFT,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidSensorTransformID,
            Pointer<COMObject> pAttributes,
            Pointer<Pointer<COMObject>> ppDeviceMFT,
          )>()(
        ptr.ref.lpVtbl,
        guidSensorTransformID,
        pAttributes,
        ppDeviceMFT,
      );
}
