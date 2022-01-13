// IActiveScriptProfilerCallback.dart

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
import '../../../system/diagnostics/debug/structs.g.dart';
import '../../../specialTypes.dart';

/// @nodoc
const IID_IActiveScriptProfilerCallback =
    '{740ECA23-7D9D-42E5-BA9D-F8B24B1C7A9B}';

/// {@category Interface}
/// {@category com}
class IActiveScriptProfilerCallback extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IActiveScriptProfilerCallback(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    int dwContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwContext,
          )>()(
        ptr.ref.lpVtbl,
        dwContext,
      );

  int Shutdown(
    int hrReason,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hrReason,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hrReason,
          )>()(
        ptr.ref.lpVtbl,
        hrReason,
      );

  int ScriptCompiled(
    int scriptId,
    int type,
    Pointer<COMObject> pIDebugDocumentContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 scriptId,
            Int32 type,
            Pointer<COMObject> pIDebugDocumentContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int scriptId,
            int type,
            Pointer<COMObject> pIDebugDocumentContext,
          )>()(
        ptr.ref.lpVtbl,
        scriptId,
        type,
        pIDebugDocumentContext,
      );

  int FunctionCompiled(
    int functionId,
    int scriptId,
    Pointer<Utf16> pwszFunctionName,
    Pointer<Utf16> pwszFunctionNameHint,
    Pointer<COMObject> pIDebugDocumentContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 functionId,
            Int32 scriptId,
            Pointer<Utf16> pwszFunctionName,
            Pointer<Utf16> pwszFunctionNameHint,
            Pointer<COMObject> pIDebugDocumentContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int functionId,
            int scriptId,
            Pointer<Utf16> pwszFunctionName,
            Pointer<Utf16> pwszFunctionNameHint,
            Pointer<COMObject> pIDebugDocumentContext,
          )>()(
        ptr.ref.lpVtbl,
        functionId,
        scriptId,
        pwszFunctionName,
        pwszFunctionNameHint,
        pIDebugDocumentContext,
      );

  int OnFunctionEnter(
    int scriptId,
    int functionId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 scriptId,
            Int32 functionId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int scriptId,
            int functionId,
          )>()(
        ptr.ref.lpVtbl,
        scriptId,
        functionId,
      );

  int OnFunctionExit(
    int scriptId,
    int functionId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 scriptId,
            Int32 functionId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int scriptId,
            int functionId,
          )>()(
        ptr.ref.lpVtbl,
        scriptId,
        functionId,
      );
}
