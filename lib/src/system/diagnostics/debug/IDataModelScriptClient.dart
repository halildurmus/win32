// IDataModelScriptClient.dart

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
import '../../../system/diagnostics/debug/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDataModelScriptClient = '{3B362B0E-89F0-46C6-A663-DFDC95194AEF}';

/// {@category Interface}
/// {@category com}
class IDataModelScriptClient extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDataModelScriptClient(Pointer<COMObject> ptr) : super(ptr);

  int ReportError(
    int errClass,
    int hrFail,
    Pointer<Utf16> message,
    int line,
    int position,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 errClass,
            Int32 hrFail,
            Pointer<Utf16> message,
            Uint32 line,
            Uint32 position,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int errClass,
            int hrFail,
            Pointer<Utf16> message,
            int line,
            int position,
          )>()(
        ptr.ref.lpVtbl,
        errClass,
        hrFail,
        message,
        line,
        position,
      );
}
