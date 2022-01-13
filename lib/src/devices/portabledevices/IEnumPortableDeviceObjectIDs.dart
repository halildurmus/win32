// IEnumPortableDeviceObjectIDs.dart

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
import '../../devices/portabledevices/IEnumPortableDeviceObjectIDs.dart';

/// @nodoc
const IID_IEnumPortableDeviceObjectIDs =
    '{10ECE955-CF41-4728-BFA0-41EEDF1BBF19}';

/// {@category Interface}
/// {@category com}
class IEnumPortableDeviceObjectIDs extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IEnumPortableDeviceObjectIDs(Pointer<COMObject> ptr) : super(ptr);

  int Next(
    int cObjects,
    Pointer<Pointer<Utf16>> pObjIDs,
    Pointer<Uint32> pcFetched,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cObjects,
            Pointer<Pointer<Utf16>> pObjIDs,
            Pointer<Uint32> pcFetched,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cObjects,
            Pointer<Pointer<Utf16>> pObjIDs,
            Pointer<Uint32> pcFetched,
          )>()(
        ptr.ref.lpVtbl,
        cObjects,
        pObjIDs,
        pcFetched,
      );

  int Skip(
    int cObjects,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cObjects,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cObjects,
          )>()(
        ptr.ref.lpVtbl,
        cObjects,
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

  int Cancel() => ptr.ref.lpVtbl.value
          .elementAt(7)
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
