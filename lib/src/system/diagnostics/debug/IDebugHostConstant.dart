// IDebugHostConstant.dart

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
import '../../../specialTypes.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDebugHostConstant = '{62787EDC-FA76-4690-BD71-5E8C3E2937EC}';

/// {@category Interface}
/// {@category com}
class IDebugHostConstant extends IDebugHostSymbol {
  // vtable begins at 10, is 1 entries long.
  IDebugHostConstant(Pointer<COMObject> ptr) : super(ptr);

  int GetValue(
    Pointer<VARIANT> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> value,
          )>()(
        ptr.ref.lpVtbl,
        value,
      );
}
