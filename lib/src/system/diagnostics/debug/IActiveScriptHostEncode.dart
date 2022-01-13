// IActiveScriptHostEncode.dart

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
const IID_IActiveScriptHostEncode = '{BEE9B76E-CFE3-11D1-B747-00C04FC2B085}';

/// {@category Interface}
/// {@category com}
class IActiveScriptHostEncode extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IActiveScriptHostEncode(Pointer<COMObject> ptr) : super(ptr);

  int EncodeScriptHostFile(
    Pointer<Utf16> bstrInFile,
    Pointer<Pointer<Utf16>> pbstrOutFile,
    int cFlags,
    Pointer<Utf16> bstrDefaultLang,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrInFile,
            Pointer<Pointer<Utf16>> pbstrOutFile,
            Uint32 cFlags,
            Pointer<Utf16> bstrDefaultLang,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrInFile,
            Pointer<Pointer<Utf16>> pbstrOutFile,
            int cFlags,
            Pointer<Utf16> bstrDefaultLang,
          )>()(
        ptr.ref.lpVtbl,
        bstrInFile,
        pbstrOutFile,
        cFlags,
        bstrDefaultLang,
      );
}
