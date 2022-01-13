// IStorageProviderCopyHook.dart

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
const IID_IStorageProviderCopyHook = '{7BF992A9-AF7A-4DBA-B2E5-4D080B1ECBC6}';

/// {@category Interface}
/// {@category com}
class IStorageProviderCopyHook extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IStorageProviderCopyHook(Pointer<COMObject> ptr) : super(ptr);

  int CopyCallback(
    int hwnd,
    int operation,
    int flags,
    Pointer<Utf16> srcFile,
    int srcAttribs,
    Pointer<Utf16> destFile,
    int destAttribs,
    Pointer<Uint32> result,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
            Uint32 operation,
            Uint32 flags,
            Pointer<Utf16> srcFile,
            Uint32 srcAttribs,
            Pointer<Utf16> destFile,
            Uint32 destAttribs,
            Pointer<Uint32> result,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
            int operation,
            int flags,
            Pointer<Utf16> srcFile,
            int srcAttribs,
            Pointer<Utf16> destFile,
            int destAttribs,
            Pointer<Uint32> result,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
        operation,
        flags,
        srcFile,
        srcAttribs,
        destFile,
        destAttribs,
        result,
      );
}
