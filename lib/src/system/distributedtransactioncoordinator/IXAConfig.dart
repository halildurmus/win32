// IXAConfig.dart

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
const IID_IXAConfig = '{C8A6E3A1-9A8C-11CF-A308-00A0C905416E}';

/// {@category Interface}
/// {@category com}
class IXAConfig extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IXAConfig(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    GUID clsidHelperDll,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID clsidHelperDll,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID clsidHelperDll,
          )>()(
        ptr.ref.lpVtbl,
        clsidHelperDll,
      );

  int Terminate() => ptr.ref.lpVtbl.value
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
}
