// ITfClientId.dart

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

/// @nodoc
const IID_ITfClientId = '{D60A7B49-1B9F-4BE2-B702-47E9DC05DEC3}';

/// {@category Interface}
/// {@category com}
class ITfClientId extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ITfClientId(Pointer<COMObject> ptr) : super(ptr);

  int GetClientId(
    Pointer<GUID> rclsid,
    Pointer<Uint32> ptid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rclsid,
            Pointer<Uint32> ptid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rclsid,
            Pointer<Uint32> ptid,
          )>()(
        ptr.ref.lpVtbl,
        rclsid,
        ptid,
      );
}
