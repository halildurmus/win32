// IAttributeSet.dart

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
const IID_IAttributeSet = '{583EC3CC-4960-4857-982B-41A33EA0A006}';

/// {@category Interface}
/// {@category com}
class IAttributeSet extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IAttributeSet(Pointer<COMObject> ptr) : super(ptr);

  int SetAttrib(
    GUID guidAttribute,
    Pointer<Uint8> pbAttribute,
    int dwAttributeLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID guidAttribute,
            Pointer<Uint8> pbAttribute,
            Uint32 dwAttributeLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID guidAttribute,
            Pointer<Uint8> pbAttribute,
            int dwAttributeLength,
          )>()(
        ptr.ref.lpVtbl,
        guidAttribute,
        pbAttribute,
        dwAttributeLength,
      );
}
