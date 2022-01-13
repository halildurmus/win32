// IDebugExpressionContext.dart

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
import '../../../system/diagnostics/debug/IDebugExpression.dart';

/// @nodoc
const IID_IDebugExpressionContext = '{51973C15-CB0C-11D0-B5C9-00A0244A0E7A}';

/// {@category Interface}
/// {@category com}
class IDebugExpressionContext extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDebugExpressionContext(Pointer<COMObject> ptr) : super(ptr);

  int ParseLanguageText(
    Pointer<Utf16> pstrCode,
    int nRadix,
    Pointer<Utf16> pstrDelimiter,
    int dwFlags,
    Pointer<Pointer<COMObject>> ppe,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pstrCode,
            Uint32 nRadix,
            Pointer<Utf16> pstrDelimiter,
            Uint32 dwFlags,
            Pointer<Pointer<COMObject>> ppe,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pstrCode,
            int nRadix,
            Pointer<Utf16> pstrDelimiter,
            int dwFlags,
            Pointer<Pointer<COMObject>> ppe,
          )>()(
        ptr.ref.lpVtbl,
        pstrCode,
        nRadix,
        pstrDelimiter,
        dwFlags,
        ppe,
      );

  int GetLanguageInfo(
    Pointer<Pointer<Utf16>> pbstrLanguageName,
    Pointer<GUID> pLanguageID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrLanguageName,
            Pointer<GUID> pLanguageID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrLanguageName,
            Pointer<GUID> pLanguageID,
          )>()(
        ptr.ref.lpVtbl,
        pbstrLanguageName,
        pLanguageID,
      );
}
