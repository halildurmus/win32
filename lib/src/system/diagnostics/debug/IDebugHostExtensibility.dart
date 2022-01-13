// IDebugHostExtensibility.dart

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
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/IModelObject.dart';

/// @nodoc
const IID_IDebugHostExtensibility = '{3C2B24E1-11D0-4F86-8AE5-4DF166F73253}';

/// {@category Interface}
/// {@category com}
class IDebugHostExtensibility extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDebugHostExtensibility(Pointer<COMObject> ptr) : super(ptr);

  int CreateFunctionAlias(
    Pointer<Utf16> aliasName,
    Pointer<COMObject> functionObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> aliasName,
            Pointer<COMObject> functionObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> aliasName,
            Pointer<COMObject> functionObject,
          )>()(
        ptr.ref.lpVtbl,
        aliasName,
        functionObject,
      );

  int DestroyFunctionAlias(
    Pointer<Utf16> aliasName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> aliasName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> aliasName,
          )>()(
        ptr.ref.lpVtbl,
        aliasName,
      );
}
