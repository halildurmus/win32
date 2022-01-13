// IActiveScriptParse32.dart

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
import '../../../system/com/structs.g.dart';
import '../../../specialTypes.dart';

/// @nodoc
const IID_IActiveScriptParse32 = '{BB1A2AE2-A4F9-11CF-8F20-00805F2CD064}';

/// {@category Interface}
/// {@category com}
class IActiveScriptParse32 extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IActiveScriptParse32(Pointer<COMObject> ptr) : super(ptr);

  int InitNew() => ptr.ref.lpVtbl.value
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

  int AddScriptlet(
    Pointer<Utf16> pstrDefaultName,
    Pointer<Utf16> pstrCode,
    Pointer<Utf16> pstrItemName,
    Pointer<Utf16> pstrSubItemName,
    Pointer<Utf16> pstrEventName,
    Pointer<Utf16> pstrDelimiter,
    int dwSourceContextCookie,
    int ulStartingLineNumber,
    int dwFlags,
    Pointer<Pointer<Utf16>> pbstrName,
    Pointer<EXCEPINFO> pexcepinfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pstrDefaultName,
            Pointer<Utf16> pstrCode,
            Pointer<Utf16> pstrItemName,
            Pointer<Utf16> pstrSubItemName,
            Pointer<Utf16> pstrEventName,
            Pointer<Utf16> pstrDelimiter,
            Uint32 dwSourceContextCookie,
            Uint32 ulStartingLineNumber,
            Uint32 dwFlags,
            Pointer<Pointer<Utf16>> pbstrName,
            Pointer<EXCEPINFO> pexcepinfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pstrDefaultName,
            Pointer<Utf16> pstrCode,
            Pointer<Utf16> pstrItemName,
            Pointer<Utf16> pstrSubItemName,
            Pointer<Utf16> pstrEventName,
            Pointer<Utf16> pstrDelimiter,
            int dwSourceContextCookie,
            int ulStartingLineNumber,
            int dwFlags,
            Pointer<Pointer<Utf16>> pbstrName,
            Pointer<EXCEPINFO> pexcepinfo,
          )>()(
        ptr.ref.lpVtbl,
        pstrDefaultName,
        pstrCode,
        pstrItemName,
        pstrSubItemName,
        pstrEventName,
        pstrDelimiter,
        dwSourceContextCookie,
        ulStartingLineNumber,
        dwFlags,
        pbstrName,
        pexcepinfo,
      );

  int ParseScriptText(
    Pointer<Utf16> pstrCode,
    Pointer<Utf16> pstrItemName,
    Pointer<COMObject> punkContext,
    Pointer<Utf16> pstrDelimiter,
    int dwSourceContextCookie,
    int ulStartingLineNumber,
    int dwFlags,
    Pointer<VARIANT> pvarResult,
    Pointer<EXCEPINFO> pexcepinfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pstrCode,
            Pointer<Utf16> pstrItemName,
            Pointer<COMObject> punkContext,
            Pointer<Utf16> pstrDelimiter,
            Uint32 dwSourceContextCookie,
            Uint32 ulStartingLineNumber,
            Uint32 dwFlags,
            Pointer<VARIANT> pvarResult,
            Pointer<EXCEPINFO> pexcepinfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pstrCode,
            Pointer<Utf16> pstrItemName,
            Pointer<COMObject> punkContext,
            Pointer<Utf16> pstrDelimiter,
            int dwSourceContextCookie,
            int ulStartingLineNumber,
            int dwFlags,
            Pointer<VARIANT> pvarResult,
            Pointer<EXCEPINFO> pexcepinfo,
          )>()(
        ptr.ref.lpVtbl,
        pstrCode,
        pstrItemName,
        punkContext,
        pstrDelimiter,
        dwSourceContextCookie,
        ulStartingLineNumber,
        dwFlags,
        pvarResult,
        pexcepinfo,
      );
}
