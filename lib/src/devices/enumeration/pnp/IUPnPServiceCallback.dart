// IUPnPServiceCallback.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../devices/enumeration/pnp/IUPnPService.dart';
import '../../../foundation/structs.g.dart';
import '../../../specialTypes.dart';

/// @nodoc
const IID_IUPnPServiceCallback = '{31FADCA9-AB73-464B-B67D-5C1D0F83C8B8}';

/// {@category Interface}
/// {@category com}
class IUPnPServiceCallback extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IUPnPServiceCallback(Pointer<COMObject> ptr) : super(ptr);

  int StateVariableChanged(
    Pointer<COMObject> pus,
    Pointer<Utf16> pcwszStateVarName,
    VARIANT vaValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pus,
            Pointer<Utf16> pcwszStateVarName,
            VARIANT vaValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pus,
            Pointer<Utf16> pcwszStateVarName,
            VARIANT vaValue,
          )>()(
        ptr.ref.lpVtbl,
        pus,
        pcwszStateVarName,
        vaValue,
      );

  int ServiceInstanceDied(
    Pointer<COMObject> pus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pus,
          )>()(
        ptr.ref.lpVtbl,
        pus,
      );
}
