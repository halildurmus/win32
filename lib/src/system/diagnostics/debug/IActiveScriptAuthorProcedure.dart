// IActiveScriptAuthorProcedure.dart

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
import '../../../system/com/IDispatch.dart';

/// @nodoc
const IID_IActiveScriptAuthorProcedure =
    '{7E2D4B70-BD9A-11D0-9336-00A0C90DCAA9}';

/// {@category Interface}
/// {@category com}
class IActiveScriptAuthorProcedure extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IActiveScriptAuthorProcedure(Pointer<COMObject> ptr) : super(ptr);

  int ParseProcedureText(
    Pointer<Utf16> pszCode,
    Pointer<Utf16> pszFormalParams,
    Pointer<Utf16> pszProcedureName,
    Pointer<Utf16> pszItemName,
    Pointer<Utf16> pszDelimiter,
    int dwCookie,
    int dwFlags,
    Pointer<COMObject> pdispFor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszCode,
            Pointer<Utf16> pszFormalParams,
            Pointer<Utf16> pszProcedureName,
            Pointer<Utf16> pszItemName,
            Pointer<Utf16> pszDelimiter,
            Uint32 dwCookie,
            Uint32 dwFlags,
            Pointer<COMObject> pdispFor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszCode,
            Pointer<Utf16> pszFormalParams,
            Pointer<Utf16> pszProcedureName,
            Pointer<Utf16> pszItemName,
            Pointer<Utf16> pszDelimiter,
            int dwCookie,
            int dwFlags,
            Pointer<COMObject> pdispFor,
          )>()(
        ptr.ref.lpVtbl,
        pszCode,
        pszFormalParams,
        pszProcedureName,
        pszItemName,
        pszDelimiter,
        dwCookie,
        dwFlags,
        pdispFor,
      );
}
