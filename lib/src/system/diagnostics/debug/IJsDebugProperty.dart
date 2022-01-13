// IJsDebugProperty.dart

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
import '../../../system/diagnostics/debug/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/IJsEnumDebugProperty.dart';

/// @nodoc
const IID_IJsDebugProperty = '{F8FFCF2B-3AA4-4320-85C3-52A312BA9633}';

/// {@category Interface}
/// {@category com}
class IJsDebugProperty extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IJsDebugProperty(Pointer<COMObject> ptr) : super(ptr);

  int GetPropertyInfo(
    int nRadix,
    Pointer<JsDebugPropertyInfo> pPropertyInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nRadix,
            Pointer<JsDebugPropertyInfo> pPropertyInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nRadix,
            Pointer<JsDebugPropertyInfo> pPropertyInfo,
          )>()(
        ptr.ref.lpVtbl,
        nRadix,
        pPropertyInfo,
      );

  int GetMembers(
    int members,
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 members,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int members,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        members,
        ppEnum,
      );
}
