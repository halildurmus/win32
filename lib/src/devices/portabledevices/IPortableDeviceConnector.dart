// IPortableDeviceConnector.dart

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
import '../../devices/portabledevices/IConnectionRequestCallback.dart';
import '../../foundation/structs.g.dart';
import '../../devices/properties/structs.g.dart';

/// @nodoc
const IID_IPortableDeviceConnector = '{625E2DF8-6392-4CF0-9AD1-3CFA5F17775C}';

/// {@category Interface}
/// {@category com}
class IPortableDeviceConnector extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IPortableDeviceConnector(Pointer<COMObject> ptr) : super(ptr);

  int Connect(
    Pointer<COMObject> pCallback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int Disconnect(
    Pointer<COMObject> pCallback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int Cancel(
    Pointer<COMObject> pCallback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int GetProperty(
    Pointer<DEVPROPKEY> pPropertyKey,
    Pointer<Uint32> pPropertyType,
    Pointer<Pointer<Uint8>> ppData,
    Pointer<Uint32> pcbData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DEVPROPKEY> pPropertyKey,
            Pointer<Uint32> pPropertyType,
            Pointer<Pointer<Uint8>> ppData,
            Pointer<Uint32> pcbData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DEVPROPKEY> pPropertyKey,
            Pointer<Uint32> pPropertyType,
            Pointer<Pointer<Uint8>> ppData,
            Pointer<Uint32> pcbData,
          )>()(
        ptr.ref.lpVtbl,
        pPropertyKey,
        pPropertyType,
        ppData,
        pcbData,
      );

  int SetProperty(
    Pointer<DEVPROPKEY> pPropertyKey,
    int PropertyType,
    Pointer<Uint8> pData,
    int cbData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DEVPROPKEY> pPropertyKey,
            Uint32 PropertyType,
            Pointer<Uint8> pData,
            Uint32 cbData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DEVPROPKEY> pPropertyKey,
            int PropertyType,
            Pointer<Uint8> pData,
            int cbData,
          )>()(
        ptr.ref.lpVtbl,
        pPropertyKey,
        PropertyType,
        pData,
        cbData,
      );

  int GetPnPID(
    Pointer<Pointer<Utf16>> ppwszPnPID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszPnPID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszPnPID,
          )>()(
        ptr.ref.lpVtbl,
        ppwszPnPID,
      );
}
