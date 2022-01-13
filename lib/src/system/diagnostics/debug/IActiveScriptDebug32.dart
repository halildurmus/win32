// IActiveScriptDebug32.dart

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
import '../../../system/diagnostics/debug/IEnumDebugCodeContexts.dart';

/// @nodoc
const IID_IActiveScriptDebug32 = '{51973C10-CB0C-11D0-B5C9-00A0244A0E7A}';

/// {@category Interface}
/// {@category com}
class IActiveScriptDebug32 extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IActiveScriptDebug32(Pointer<COMObject> ptr) : super(ptr);

  int GetScriptTextAttributes(
    Pointer<Utf16> pstrCode,
    int uNumCodeChars,
    Pointer<Utf16> pstrDelimiter,
    int dwFlags,
    Pointer<Uint16> pattr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pstrCode,
            Uint32 uNumCodeChars,
            Pointer<Utf16> pstrDelimiter,
            Uint32 dwFlags,
            Pointer<Uint16> pattr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pstrCode,
            int uNumCodeChars,
            Pointer<Utf16> pstrDelimiter,
            int dwFlags,
            Pointer<Uint16> pattr,
          )>()(
        ptr.ref.lpVtbl,
        pstrCode,
        uNumCodeChars,
        pstrDelimiter,
        dwFlags,
        pattr,
      );

  int GetScriptletTextAttributes(
    Pointer<Utf16> pstrCode,
    int uNumCodeChars,
    Pointer<Utf16> pstrDelimiter,
    int dwFlags,
    Pointer<Uint16> pattr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pstrCode,
            Uint32 uNumCodeChars,
            Pointer<Utf16> pstrDelimiter,
            Uint32 dwFlags,
            Pointer<Uint16> pattr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pstrCode,
            int uNumCodeChars,
            Pointer<Utf16> pstrDelimiter,
            int dwFlags,
            Pointer<Uint16> pattr,
          )>()(
        ptr.ref.lpVtbl,
        pstrCode,
        uNumCodeChars,
        pstrDelimiter,
        dwFlags,
        pattr,
      );

  int EnumCodeContextsOfPosition(
    int dwSourceContext,
    int uCharacterOffset,
    int uNumChars,
    Pointer<Pointer<COMObject>> ppescc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSourceContext,
            Uint32 uCharacterOffset,
            Uint32 uNumChars,
            Pointer<Pointer<COMObject>> ppescc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSourceContext,
            int uCharacterOffset,
            int uNumChars,
            Pointer<Pointer<COMObject>> ppescc,
          )>()(
        ptr.ref.lpVtbl,
        dwSourceContext,
        uCharacterOffset,
        uNumChars,
        ppescc,
      );
}
