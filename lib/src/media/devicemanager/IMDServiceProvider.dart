// IMDServiceProvider.dart

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
import '../../media/devicemanager/IMDSPEnumDevice.dart';
import '../../media/audio/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IMDServiceProvider = '{1DCB3A10-33ED-11D3-8470-00C04F79DBC0}';

/// {@category Interface}
/// {@category com}
class IMDServiceProvider extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMDServiceProvider(Pointer<COMObject> ptr) : super(ptr);

  int GetDeviceCount(
    Pointer<Uint32> pdwCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwCount,
          )>()(
        ptr.ref.lpVtbl,
        pdwCount,
      );

  int EnumDevices(
    Pointer<Pointer<COMObject>> ppEnumDevice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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
}
