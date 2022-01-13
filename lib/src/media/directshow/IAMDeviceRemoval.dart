// IAMDeviceRemoval.dart

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
const IID_IAMDeviceRemoval = '{F90A6130-B658-11D2-AE49-0000F8754B99}';

/// {@category Interface}
/// {@category com}
class IAMDeviceRemoval extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IAMDeviceRemoval(Pointer<COMObject> ptr) : super(ptr);

  int DeviceInfo(
    Pointer<GUID> pclsidInterfaceClass,
    Pointer<Pointer<Utf16>> pwszSymbolicLink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pclsidInterfaceClass,
            Pointer<Pointer<Utf16>> pwszSymbolicLink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pclsidInterfaceClass,
            Pointer<Pointer<Utf16>> pwszSymbolicLink,
          )>()(
        ptr.ref.lpVtbl,
        pclsidInterfaceClass,
        pwszSymbolicLink,
      );

  int Reassociate() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int Disassociate() => ptr.ref.lpVtbl.value
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
}
