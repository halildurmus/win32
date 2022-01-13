// IActiveScriptEncode.dart

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

/// @nodoc
const IID_IActiveScriptEncode = '{BB1A2AE3-A4F9-11CF-8F20-00805F2CD064}';

/// {@category Interface}
/// {@category com}
class IActiveScriptEncode extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IActiveScriptEncode(Pointer<COMObject> ptr) : super(ptr);

  int EncodeSection(
    Pointer<Utf16> pchIn,
    int cchIn,
    Pointer<Utf16> pchOut,
    int cchOut,
    Pointer<Uint32> pcchRet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pchIn,
            Uint32 cchIn,
            Pointer<Utf16> pchOut,
            Uint32 cchOut,
            Pointer<Uint32> pcchRet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pchIn,
            int cchIn,
            Pointer<Utf16> pchOut,
            int cchOut,
            Pointer<Uint32> pcchRet,
          )>()(
        ptr.ref.lpVtbl,
        pchIn,
        cchIn,
        pchOut,
        cchOut,
        pcchRet,
      );

  int DecodeScript(
    Pointer<Utf16> pchIn,
    int cchIn,
    Pointer<Utf16> pchOut,
    int cchOut,
    Pointer<Uint32> pcchRet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pchIn,
            Uint32 cchIn,
            Pointer<Utf16> pchOut,
            Uint32 cchOut,
            Pointer<Uint32> pcchRet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pchIn,
            int cchIn,
            Pointer<Utf16> pchOut,
            int cchOut,
            Pointer<Uint32> pcchRet,
          )>()(
        ptr.ref.lpVtbl,
        pchIn,
        cchIn,
        pchOut,
        cchOut,
        pcchRet,
      );

  int GetEncodeProgId(
    Pointer<Pointer<Utf16>> pbstrOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrOut,
          )>()(
        ptr.ref.lpVtbl,
        pbstrOut,
      );
}
