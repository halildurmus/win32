// IRawEnumerator.dart

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
import '../../../system/diagnostics/debug/structs.g.dart';
import '../../../system/diagnostics/debug/IModelObject.dart';

/// @nodoc
const IID_IRawEnumerator = '{E13613F9-3A3C-40B5-8F48-1E5EBFB9B21B}';

/// {@category Interface}
/// {@category com}
class IRawEnumerator extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IRawEnumerator(Pointer<COMObject> ptr) : super(ptr);

  int Reset() => ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int GetNext(
    Pointer<Pointer<Utf16>> name,
    Pointer<Int32> kind,
    Pointer<Pointer<COMObject>> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> name,
            Pointer<Int32> kind,
            Pointer<Pointer<COMObject>> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> name,
            Pointer<Int32> kind,
            Pointer<Pointer<COMObject>> value,
          )>()(
        ptr.ref.lpVtbl,
        name,
        kind,
        value,
      );
}
