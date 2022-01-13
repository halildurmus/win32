// IXpsPrintJobStream.dart

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

import '../../../system/com/ISequentialStream.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IXpsPrintJobStream = '{7A77DC5F-45D6-4DFF-9307-D8CB846347CA}';

/// {@category Interface}
/// {@category com}
class IXpsPrintJobStream extends ISequentialStream {
  // vtable begins at 5, is 1 entries long.
  IXpsPrintJobStream(Pointer<COMObject> ptr) : super(ptr);

  int Close() => ptr.ref.lpVtbl.value
          .elementAt(5)
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
}
