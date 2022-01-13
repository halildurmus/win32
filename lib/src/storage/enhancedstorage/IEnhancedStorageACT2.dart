// IEnhancedStorageACT2.dart

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

import '../../storage/enhancedstorage/IEnhancedStorageACT.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IEnhancedStorageACT2 = '{4DA57D2E-8EB3-41F6-A07E-98B52B88242B}';

/// {@category Interface}
/// {@category com}
class IEnhancedStorageACT2 extends IEnhancedStorageACT {
  // vtable begins at 9, is 2 entries long.
  IEnhancedStorageACT2(Pointer<COMObject> ptr) : super(ptr);

  int GetDeviceName(
    Pointer<Pointer<Utf16>> ppwszDeviceName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszDeviceName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszDeviceName,
          )>()(
        ptr.ref.lpVtbl,
        ppwszDeviceName,
      );

  int IsDeviceRemovable(
    Pointer<Int32> pIsDeviceRemovable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pIsDeviceRemovable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pIsDeviceRemovable,
          )>()(
        ptr.ref.lpVtbl,
        pIsDeviceRemovable,
      );
}
