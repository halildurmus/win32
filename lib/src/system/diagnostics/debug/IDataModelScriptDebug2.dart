// IDataModelScriptDebug2.dart

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

import '../../../system/diagnostics/debug/IDataModelScriptDebug.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/IDataModelScriptDebugBreakpoint.dart';

/// @nodoc
const IID_IDataModelScriptDebug2 = '{CBB10ED3-839E-426C-9243-E23535C1AE1A}';

/// {@category Interface}
/// {@category com}
class IDataModelScriptDebug2 extends IDataModelScriptDebug {
  // vtable begins at 13, is 1 entries long.
  IDataModelScriptDebug2(Pointer<COMObject> ptr) : super(ptr);

  int SetBreakpointAtFunction(
    Pointer<Utf16> functionName,
    Pointer<Pointer<COMObject>> breakpoint,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> functionName,
            Pointer<Pointer<COMObject>> breakpoint,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> functionName,
            Pointer<Pointer<COMObject>> breakpoint,
          )>()(
        ptr.ref.lpVtbl,
        functionName,
        breakpoint,
      );
}
