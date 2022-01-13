// IMarshalingStream.dart

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

import '../../../system/com/IStream.dart';
import '../../../system/com/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IMarshalingStream = '{D8F2F5E6-6102-4863-9F26-389A4676EFDE}';

/// {@category Interface}
/// {@category com}
class IMarshalingStream extends IStream {
  // vtable begins at 14, is 1 entries long.
  IMarshalingStream(Pointer<COMObject> ptr) : super(ptr);

  int GetMarshalingContextAttribute(
    int attribute,
    Pointer<IntPtr> pAttributeValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 attribute,
            Pointer<IntPtr> pAttributeValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int attribute,
            Pointer<IntPtr> pAttributeValue,
          )>()(
        ptr.ref.lpVtbl,
        attribute,
        pAttributeValue,
      );
}
