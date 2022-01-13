// IShellIconOverlayIdentifier.dart

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
const IID_IShellIconOverlayIdentifier =
    '{0C6C4200-C589-11D0-999A-00C04FD655E1}';

/// {@category Interface}
/// {@category com}
class IShellIconOverlayIdentifier extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IShellIconOverlayIdentifier(Pointer<COMObject> ptr) : super(ptr);

  int IsMemberOf(
    Pointer<Utf16> pwszPath,
    int dwAttrib,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszPath,
            Uint32 dwAttrib,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszPath,
            int dwAttrib,
          )>()(
        ptr.ref.lpVtbl,
        pwszPath,
        dwAttrib,
      );

  int GetOverlayInfo(
    Pointer<Utf16> pwszIconFile,
    int cchMax,
    Pointer<Int32> pIndex,
    Pointer<Uint32> pdwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszIconFile,
            Int32 cchMax,
            Pointer<Int32> pIndex,
            Pointer<Uint32> pdwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszIconFile,
            int cchMax,
            Pointer<Int32> pIndex,
            Pointer<Uint32> pdwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pwszIconFile,
        cchMax,
        pIndex,
        pdwFlags,
      );

  int GetPriority(
    Pointer<Int32> pPriority,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pPriority,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pPriority,
          )>()(
        ptr.ref.lpVtbl,
        pPriority,
      );
}
