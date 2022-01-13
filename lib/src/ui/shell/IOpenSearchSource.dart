// IOpenSearchSource.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../system/com/IUnknown.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IOpenSearchSource = '{F0EE7333-E6FC-479B-9F25-A860C234A38E}';

/// {@category Interface}
/// {@category com}
class IOpenSearchSource extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IOpenSearchSource(Pointer<COMObject> ptr) : super(ptr);

  int GetResults(
    int hwnd,
    Pointer<Utf16> pszQuery,
    int dwStartIndex,
    int dwCount,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
            Pointer<Utf16> pszQuery,
            Uint32 dwStartIndex,
            Uint32 dwCount,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
            Pointer<Utf16> pszQuery,
            int dwStartIndex,
            int dwCount,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
        pszQuery,
        dwStartIndex,
        dwCount,
        riid,
        ppv,
      );
}
