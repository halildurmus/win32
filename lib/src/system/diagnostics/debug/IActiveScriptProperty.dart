// IActiveScriptProperty.dart

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
import '../../../specialTypes.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IActiveScriptProperty = '{4954E0D0-FBC7-11D1-8410-006008C3FBFC}';

/// {@category Interface}
/// {@category com}
class IActiveScriptProperty extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IActiveScriptProperty(Pointer<COMObject> ptr) : super(ptr);

  int GetProperty(
    int dwProperty,
    Pointer<VARIANT> pvarIndex,
    Pointer<VARIANT> pvarValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwProperty,
            Pointer<VARIANT> pvarIndex,
            Pointer<VARIANT> pvarValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwProperty,
            Pointer<VARIANT> pvarIndex,
            Pointer<VARIANT> pvarValue,
          )>()(
        ptr.ref.lpVtbl,
        dwProperty,
        pvarIndex,
        pvarValue,
      );

  int SetProperty(
    int dwProperty,
    Pointer<VARIANT> pvarIndex,
    Pointer<VARIANT> pvarValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwProperty,
            Pointer<VARIANT> pvarIndex,
            Pointer<VARIANT> pvarValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwProperty,
            Pointer<VARIANT> pvarIndex,
            Pointer<VARIANT> pvarValue,
          )>()(
        ptr.ref.lpVtbl,
        dwProperty,
        pvarIndex,
        pvarValue,
      );
}
