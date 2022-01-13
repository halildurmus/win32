// IDebugHostSymbol2.dart

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
import '../../../system/diagnostics/debug/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDebugHostSymbol2 = '{21515B67-6720-4257-8A68-077DC944471C}';

/// {@category Interface}
/// {@category com}
class IDebugHostSymbol2 extends IDebugHostSymbol {
  // vtable begins at 10, is 1 entries long.
  IDebugHostSymbol2(Pointer<COMObject> ptr) : super(ptr);

  int GetLanguage(
    Pointer<Int32> pKind,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pKind,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pKind,
          )>()(
        ptr.ref.lpVtbl,
        pKind,
      );
}
