// IModelPropertyAccessor.dart

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
const IID_IModelPropertyAccessor = '{5A0C63D9-0526-42B8-960C-9516A3254C85}';

/// {@category Interface}
/// {@category com}
class IModelPropertyAccessor extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IModelPropertyAccessor(Pointer<COMObject> ptr) : super(ptr);

  int GetValue(
    Pointer<Utf16> key,
    Pointer<COMObject> contextObject,
    Pointer<Pointer<COMObject>> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> key,
            Pointer<COMObject> contextObject,
            Pointer<Pointer<COMObject>> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> key,
            Pointer<COMObject> contextObject,
            Pointer<Pointer<COMObject>> value,
          )>()(
        ptr.ref.lpVtbl,
        key,
        contextObject,
        value,
      );

  int SetValue(
    Pointer<Utf16> key,
    Pointer<COMObject> contextObject,
    Pointer<COMObject> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> key,
            Pointer<COMObject> contextObject,
            Pointer<COMObject> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> key,
            Pointer<COMObject> contextObject,
            Pointer<COMObject> value,
          )>()(
        ptr.ref.lpVtbl,
        key,
        contextObject,
        value,
      );
}
