// IJsEnumDebugProperty.dart

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
import '../../../system/diagnostics/debug/IJsDebugProperty.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IJsEnumDebugProperty = '{4092432F-2F0F-4FE1-B638-5B74A52CDCBE}';

/// {@category Interface}
/// {@category com}
class IJsEnumDebugProperty extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IJsEnumDebugProperty(Pointer<COMObject> ptr) : super(ptr);

  int Next(
    int count,
    Pointer<Pointer<COMObject>> ppDebugProperty,
    Pointer<Uint32> pActualCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 count,
            Pointer<Pointer<COMObject>> ppDebugProperty,
            Pointer<Uint32> pActualCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int count,
            Pointer<Pointer<COMObject>> ppDebugProperty,
            Pointer<Uint32> pActualCount,
          )>()(
        ptr.ref.lpVtbl,
        count,
        ppDebugProperty,
        pActualCount,
      );

  int GetCount(
    Pointer<Uint32> pCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pCount,
          )>()(
        ptr.ref.lpVtbl,
        pCount,
      );
}
