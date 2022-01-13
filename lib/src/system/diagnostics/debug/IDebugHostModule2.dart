// IDebugHostModule2.dart

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

import '../../../system/diagnostics/debug/IDebugHostModule.dart';
import '../../../system/diagnostics/debug/IDebugHostSymbol.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDebugHostModule2 = '{B51887E8-BCD0-4E8F-A8C7-434398B78C37}';

/// {@category Interface}
/// {@category com}
class IDebugHostModule2 extends IDebugHostModule {
  // vtable begins at 16, is 1 entries long.
  IDebugHostModule2(Pointer<COMObject> ptr) : super(ptr);

  int FindContainingSymbolByRVA(
    int rva,
    Pointer<Pointer<COMObject>> symbol,
    Pointer<Uint64> offset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 rva,
            Pointer<Pointer<COMObject>> symbol,
            Pointer<Uint64> offset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int rva,
            Pointer<Pointer<COMObject>> symbol,
            Pointer<Uint64> offset,
          )>()(
        ptr.ref.lpVtbl,
        rva,
        symbol,
        offset,
      );
}
