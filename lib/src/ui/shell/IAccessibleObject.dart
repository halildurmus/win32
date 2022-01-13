// IAccessibleObject.dart

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
const IID_IAccessibleObject = '{95A391C5-9ED4-4C28-8401-AB9E06719E11}';

/// {@category Interface}
/// {@category com}
class IAccessibleObject extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IAccessibleObject(Pointer<COMObject> ptr) : super(ptr);

  int SetAccessibleName(
    Pointer<Utf16> pszName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszName,
          )>()(
        ptr.ref.lpVtbl,
        pszName,
      );
}
