// IClassActivator.dart

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
const IID_IClassActivator = '{00000140-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class IClassActivator extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IClassActivator(Pointer<COMObject> ptr) : super(ptr);

  int GetClassObject(
    Pointer<GUID> rclsid,
    int dwClassContext,
    int locale,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rclsid,
            Uint32 dwClassContext,
            Uint32 locale,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rclsid,
            int dwClassContext,
            int locale,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        rclsid,
        dwClassContext,
        locale,
        riid,
        ppv,
      );
}
