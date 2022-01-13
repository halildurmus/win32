// IDefaultExtractIconInit.dart

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
import '../../system/registry/structs.g.dart';

/// @nodoc
const IID_IDefaultExtractIconInit = '{41DED17D-D6B3-4261-997D-88C60E4B1D58}';

/// {@category Interface}
/// {@category com}
class IDefaultExtractIconInit extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IDefaultExtractIconInit(Pointer<COMObject> ptr) : super(ptr);

  int SetFlags(
    int uFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uFlags,
          )>()(
        ptr.ref.lpVtbl,
        uFlags,
      );

  int SetKey(
    int hkey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hkey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hkey,
          )>()(
        ptr.ref.lpVtbl,
        hkey,
      );

  int SetNormalIcon(
    Pointer<Utf16> pszFile,
    int iIcon,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszFile,
            Int32 iIcon,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszFile,
            int iIcon,
          )>()(
        ptr.ref.lpVtbl,
        pszFile,
        iIcon,
      );

  int SetOpenIcon(
    Pointer<Utf16> pszFile,
    int iIcon,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszFile,
            Int32 iIcon,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszFile,
            int iIcon,
          )>()(
        ptr.ref.lpVtbl,
        pszFile,
        iIcon,
      );

  int SetShortcutIcon(
    Pointer<Utf16> pszFile,
    int iIcon,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszFile,
            Int32 iIcon,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszFile,
            int iIcon,
          )>()(
        ptr.ref.lpVtbl,
        pszFile,
        iIcon,
      );

  int SetDefaultIcon(
    Pointer<Utf16> pszFile,
    int iIcon,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszFile,
            Int32 iIcon,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszFile,
            int iIcon,
          )>()(
        ptr.ref.lpVtbl,
        pszFile,
        iIcon,
      );
}
