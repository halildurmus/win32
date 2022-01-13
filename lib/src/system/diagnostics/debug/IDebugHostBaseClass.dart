// IDebugHostBaseClass.dart

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

import '../../../system/diagnostics/debug/IDebugHostSymbol.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDebugHostBaseClass = '{B94D57D2-390B-40F7-B5B4-B6DB897D974B}';

/// {@category Interface}
/// {@category com}
class IDebugHostBaseClass extends IDebugHostSymbol {
  // vtable begins at 10, is 1 entries long.
  IDebugHostBaseClass(Pointer<COMObject> ptr) : super(ptr);

  int GetOffset(
    Pointer<Uint64> offset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> offset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> offset,
          )>()(
        ptr.ref.lpVtbl,
        offset,
      );
}
