// IExtractIconW.dart

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
import '../../ui/windowsandmessaging/structs.g.dart';

/// @nodoc
const IID_IExtractIconW = '{000214FA-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class IExtractIconW extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IExtractIconW(Pointer<COMObject> ptr) : super(ptr);

  int GetIconLocation(
    int uFlags,
    Pointer<Utf16> pszIconFile,
    int cchMax,
    Pointer<Int32> piIndex,
    Pointer<Uint32> pwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uFlags,
            Pointer<Utf16> pszIconFile,
            Uint32 cchMax,
            Pointer<Int32> piIndex,
            Pointer<Uint32> pwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uFlags,
            Pointer<Utf16> pszIconFile,
            int cchMax,
            Pointer<Int32> piIndex,
            Pointer<Uint32> pwFlags,
          )>()(
        ptr.ref.lpVtbl,
        uFlags,
        pszIconFile,
        cchMax,
        piIndex,
        pwFlags,
      );

  int Extract(
    Pointer<Utf16> pszFile,
    int nIconIndex,
    Pointer<IntPtr> phiconLarge,
    Pointer<IntPtr> phiconSmall,
    int nIconSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszFile,
            Uint32 nIconIndex,
            Pointer<IntPtr> phiconLarge,
            Pointer<IntPtr> phiconSmall,
            Uint32 nIconSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszFile,
            int nIconIndex,
            Pointer<IntPtr> phiconLarge,
            Pointer<IntPtr> phiconSmall,
            int nIconSize,
          )>()(
        ptr.ref.lpVtbl,
        pszFile,
        nIconIndex,
        phiconLarge,
        phiconSmall,
        nIconSize,
      );
}
