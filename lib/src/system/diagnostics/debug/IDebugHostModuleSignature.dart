// IDebugHostModuleSignature.dart

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
import '../../../system/diagnostics/debug/IDebugHostModule.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDebugHostModuleSignature = '{31E53A5A-01EE-4BBB-B899-4B46AE7D595C}';

/// {@category Interface}
/// {@category com}
class IDebugHostModuleSignature extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDebugHostModuleSignature(Pointer<COMObject> ptr) : super(ptr);

  int IsMatch(
    Pointer<COMObject> pModule,
    Pointer<Bool> isMatch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pModule,
            Pointer<Bool> isMatch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pModule,
            Pointer<Bool> isMatch,
          )>()(
        ptr.ref.lpVtbl,
        pModule,
        isMatch,
      );
}
