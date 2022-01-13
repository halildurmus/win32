// INewShortcutHookW.dart

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
const IID_INewShortcutHookW = '{000214F7-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class INewShortcutHookW extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  INewShortcutHookW(Pointer<COMObject> ptr) : super(ptr);

  int SetReferent(
    Pointer<Utf16> pcszReferent,
    int hwnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pcszReferent,
            IntPtr hwnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pcszReferent,
            int hwnd,
          )>()(
        ptr.ref.lpVtbl,
        pcszReferent,
        hwnd,
      );

  int GetReferent(
    Pointer<Utf16> pszReferent,
    int cchReferent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszReferent,
            Int32 cchReferent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszReferent,
            int cchReferent,
          )>()(
        ptr.ref.lpVtbl,
        pszReferent,
        cchReferent,
      );

  int SetFolder(
    Pointer<Utf16> pcszFolder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pcszFolder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pcszFolder,
          )>()(
        ptr.ref.lpVtbl,
        pcszFolder,
      );

  int GetFolder(
    Pointer<Utf16> pszFolder,
    int cchFolder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszFolder,
            Int32 cchFolder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszFolder,
            int cchFolder,
          )>()(
        ptr.ref.lpVtbl,
        pszFolder,
        cchFolder,
      );

  int GetName(
    Pointer<Utf16> pszName,
    int cchName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszName,
            Int32 cchName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszName,
            int cchName,
          )>()(
        ptr.ref.lpVtbl,
        pszName,
        cchName,
      );

  int GetExtension(
    Pointer<Utf16> pszExtension,
    int cchExtension,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszExtension,
            Int32 cchExtension,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszExtension,
            int cchExtension,
          )>()(
        ptr.ref.lpVtbl,
        pszExtension,
        cchExtension,
      );
}
