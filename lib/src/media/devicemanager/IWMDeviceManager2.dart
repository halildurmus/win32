// IWMDeviceManager2.dart

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

import '../../media/devicemanager/IWMDeviceManager.dart';
import '../../foundation/structs.g.dart';
import '../../media/devicemanager/IWMDMDevice.dart';
import '../../media/devicemanager/IWMDMEnumDevice.dart';
import '../../media/audio/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IWMDeviceManager2 = '{923E5249-8731-4C5B-9B1C-B8B60B6E46AF}';

/// {@category Interface}
/// {@category com}
class IWMDeviceManager2 extends IWMDeviceManager {
  // vtable begins at 6, is 3 entries long.
  IWMDeviceManager2(Pointer<COMObject> ptr) : super(ptr);

  int GetDeviceFromCanonicalName(
    Pointer<Utf16> pwszCanonicalName,
    Pointer<Pointer<COMObject>> ppDevice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszCanonicalName,
            Pointer<Pointer<COMObject>> ppDevice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszCanonicalName,
            Pointer<Pointer<COMObject>> ppDevice,
          )>()(
        ptr.ref.lpVtbl,
        pwszCanonicalName,
        ppDevice,
      );

  int EnumDevices2(
    Pointer<Pointer<COMObject>> ppEnumDevice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumDevice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumDevice,
          )>()(
        ptr.ref.lpVtbl,
        ppEnumDevice,
      );

  int Reinitialize() => ptr.ref.lpVtbl.value
          .elementAt(8)
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
