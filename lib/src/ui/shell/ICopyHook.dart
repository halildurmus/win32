// ICopyHookW.dart

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
const IID_ICopyHookW = '{000214FC-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class ICopyHookW extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ICopyHookW(Pointer<COMObject> ptr) : super(ptr);

  int CopyCallback(
    int hwnd,
    int wFunc,
    int wFlags,
    Pointer<Utf16> pszSrcFile,
    int dwSrcAttribs,
    Pointer<Utf16> pszDestFile,
    int dwDestAttribs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
            IntPtr hwnd,
            Uint32 wFunc,
            Uint32 wFlags,
            Pointer<Utf16> pszSrcFile,
            Uint32 dwSrcAttribs,
            Pointer<Utf16> pszDestFile,
            Uint32 dwDestAttribs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
            int wFunc,
            int wFlags,
            Pointer<Utf16> pszSrcFile,
            int dwSrcAttribs,
            Pointer<Utf16> pszDestFile,
            int dwDestAttribs,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
        wFunc,
        wFlags,
        pszSrcFile,
        dwSrcAttribs,
        pszDestFile,
        dwDestAttribs,
      );
}
