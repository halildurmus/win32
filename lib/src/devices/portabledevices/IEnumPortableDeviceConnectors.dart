// IEnumPortableDeviceConnectors.dart

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
import '../../devices/portabledevices/IPortableDeviceConnector.dart';
import '../../foundation/structs.g.dart';
import '../../devices/portabledevices/IEnumPortableDeviceConnectors.dart';

/// @nodoc
const IID_IEnumPortableDeviceConnectors =
    '{BFDEF549-9247-454F-BD82-06FE80853FAA}';

/// {@category Interface}
/// {@category com}
class IEnumPortableDeviceConnectors extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IEnumPortableDeviceConnectors(Pointer<COMObject> ptr) : super(ptr);

  int Next(
    int cRequested,
    Pointer<Pointer<COMObject>> pConnectors,
    Pointer<Uint32> pcFetched,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cRequested,
            Pointer<Pointer<COMObject>> pConnectors,
            Pointer<Uint32> pcFetched,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cRequested,
            Pointer<Pointer<COMObject>> pConnectors,
            Pointer<Uint32> pcFetched,
          )>()(
        ptr.ref.lpVtbl,
        cRequested,
        pConnectors,
        pcFetched,
      );

  int Skip(
    int cConnectors,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cConnectors,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cConnectors,
          )>()(
        ptr.ref.lpVtbl,
        cConnectors,
      );

  int Reset() => ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int Clone(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        ppEnum,
      );
}
