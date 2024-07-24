// immdevicecollection.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../propertykey.dart';
import '../structs.g.dart';
import '../utils.dart';
import '../variant.dart';
import '../win32/ole32.g.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IMMDeviceCollection = '{0bd7a1be-7a1a-44db-8397-cc5392387b5e}';

/// The IMMDeviceCollection interface represents a collection of multimedia
/// device resources.
///
/// {@category com}
class IMMDeviceCollection extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMMDeviceCollection(super.ptr);

  factory IMMDeviceCollection.from(IUnknown interface) =>
      IMMDeviceCollection(interface.toInterface(IID_IMMDeviceCollection));

  int getCount(Pointer<Uint32> pcDevices) => (ptr.ref.vtable + 3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<Uint32> pcDevices)>>>()
          .value
          .asFunction<int Function(Pointer, Pointer<Uint32> pcDevices)>()(
      ptr.ref.lpVtbl, pcDevices);

  int item(int nDevice, Pointer<Pointer<COMObject>> ppDevice) =>
      (ptr.ref.vtable + 4)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Uint32 nDevice,
                              Pointer<Pointer<COMObject>> ppDevice)>>>()
              .value
              .asFunction<
                  int Function(Pointer, int nDevice,
                      Pointer<Pointer<COMObject>> ppDevice)>()(
          ptr.ref.lpVtbl, nDevice, ppDevice);
}
