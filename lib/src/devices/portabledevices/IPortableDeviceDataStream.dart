// IPortableDeviceDataStream.dart

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

import '../../system/com/IStream.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IPortableDeviceDataStream = '{88E04DB3-1012-4D64-9996-F703A950D3F4}';

/// {@category Interface}
/// {@category com}
class IPortableDeviceDataStream extends IStream {
  // vtable begins at 14, is 2 entries long.
  IPortableDeviceDataStream(Pointer<COMObject> ptr) : super(ptr);

  int GetObjectID(
    Pointer<Pointer<Utf16>> ppszObjectID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszObjectID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszObjectID,
          )>()(
        ptr.ref.lpVtbl,
        ppszObjectID,
      );

  int Cancel() => ptr.ref.lpVtbl.value
          .elementAt(15)
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
