// IActiveScriptParseProcedureOld64.dart

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
import '../../../specialTypes.dart';
import '../../../system/com/IDispatch.dart';

/// @nodoc
const IID_IActiveScriptParseProcedureOld64 =
    '{21F57128-08C9-4638-BA12-22D15D88DC5C}';

/// {@category Interface}
/// {@category com}
class IActiveScriptParseProcedureOld64 extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IActiveScriptParseProcedureOld64(Pointer<COMObject> ptr) : super(ptr);

  int ParseProcedureText(
    Pointer<Utf16> pstrCode,
    Pointer<Utf16> pstrFormalParams,
    Pointer<Utf16> pstrItemName,
    Pointer<COMObject> punkContext,
    Pointer<Utf16> pstrDelimiter,
    int dwSourceContextCookie,
    int ulStartingLineNumber,
    int dwFlags,
    Pointer<Pointer<COMObject>> ppdisp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pstrCode,
            Pointer<Utf16> pstrFormalParams,
            Pointer<Utf16> pstrItemName,
            Pointer<COMObject> punkContext,
            Pointer<Utf16> pstrDelimiter,
            Uint64 dwSourceContextCookie,
            Uint32 ulStartingLineNumber,
            Uint32 dwFlags,
            Pointer<Pointer<COMObject>> ppdisp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pstrCode,
            Pointer<Utf16> pstrFormalParams,
            Pointer<Utf16> pstrItemName,
            Pointer<COMObject> punkContext,
            Pointer<Utf16> pstrDelimiter,
            int dwSourceContextCookie,
            int ulStartingLineNumber,
            int dwFlags,
            Pointer<Pointer<COMObject>> ppdisp,
          )>()(
        ptr.ref.lpVtbl,
        pstrCode,
        pstrFormalParams,
        pstrItemName,
        punkContext,
        pstrDelimiter,
        dwSourceContextCookie,
        ulStartingLineNumber,
        dwFlags,
        ppdisp,
      );
}
