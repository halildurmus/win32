// IDataModelScriptDebugBreakpointEnumerator.dart

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
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/IDataModelScriptDebugBreakpoint.dart';

/// @nodoc
const IID_IDataModelScriptDebugBreakpointEnumerator =
    '{39484A75-B4F3-4799-86DA-691AFA57B299}';

/// {@category Interface}
/// {@category com}
class IDataModelScriptDebugBreakpointEnumerator extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDataModelScriptDebugBreakpointEnumerator(Pointer<COMObject> ptr)
      : super(ptr);

  int Reset() => ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int GetNext(
    Pointer<Pointer<COMObject>> breakpoint,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> breakpoint,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> breakpoint,
          )>()(
        ptr.ref.lpVtbl,
        breakpoint,
      );
}
