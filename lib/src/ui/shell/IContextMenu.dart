// IContextMenu.dart

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
import '../../ui/windowsandmessaging/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../ui/shell/structs.g.dart';

/// @nodoc
const IID_IContextMenu = '{000214E4-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class IContextMenu extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IContextMenu(Pointer<COMObject> ptr) : super(ptr);

  int QueryContextMenu(
    int hmenu,
    int indexMenu,
    int idCmdFirst,
    int idCmdLast,
    int uFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hmenu,
            Uint32 indexMenu,
            Uint32 idCmdFirst,
            Uint32 idCmdLast,
            Uint32 uFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hmenu,
            int indexMenu,
            int idCmdFirst,
            int idCmdLast,
            int uFlags,
          )>()(
        ptr.ref.lpVtbl,
        hmenu,
        indexMenu,
        idCmdFirst,
        idCmdLast,
        uFlags,
      );

  int InvokeCommand(
    Pointer<CMINVOKECOMMANDINFO> pici,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<CMINVOKECOMMANDINFO> pici,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<CMINVOKECOMMANDINFO> pici,
          )>()(
        ptr.ref.lpVtbl,
        pici,
      );

  int GetCommandString(
    int idCmd,
    int uType,
    Pointer<Uint32> pReserved,
    Pointer<Utf8> pszName,
    int cchMax,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr idCmd,
            Uint32 uType,
            Pointer<Uint32> pReserved,
            Pointer<Utf8> pszName,
            Uint32 cchMax,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int idCmd,
            int uType,
            Pointer<Uint32> pReserved,
            Pointer<Utf8> pszName,
            int cchMax,
          )>()(
        ptr.ref.lpVtbl,
        idCmd,
        uType,
        pReserved,
        pszName,
        cchMax,
      );
}
