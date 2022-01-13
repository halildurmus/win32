// ITaskbarList3.dart

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

import '../../ui/shell/ITaskbarList2.dart';
import '../../foundation/structs.g.dart';
import '../../ui/shell/structs.g.dart';
import '../../ui/controls/structs.g.dart';
import '../../ui/windowsandmessaging/structs.g.dart';

/// @nodoc
const IID_ITaskbarList3 = '{EA1AFB91-9E28-4B86-90E9-9E9F8A5EEFAF}';

/// {@category Interface}
/// {@category com}
class ITaskbarList3 extends ITaskbarList2 {
  // vtable begins at 9, is 12 entries long.
  ITaskbarList3(Pointer<COMObject> ptr) : super(ptr);

  int SetProgressValue(
    int hwnd,
    int ullCompleted,
    int ullTotal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
            Uint64 ullCompleted,
            Uint64 ullTotal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
            int ullCompleted,
            int ullTotal,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
        ullCompleted,
        ullTotal,
      );

  int SetProgressState(
    int hwnd,
    int tbpFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
            Int32 tbpFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
            int tbpFlags,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
        tbpFlags,
      );

  int RegisterTab(
    int hwndTab,
    int hwndMDI,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndTab,
            IntPtr hwndMDI,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndTab,
            int hwndMDI,
          )>()(
        ptr.ref.lpVtbl,
        hwndTab,
        hwndMDI,
      );

  int UnregisterTab(
    int hwndTab,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndTab,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndTab,
          )>()(
        ptr.ref.lpVtbl,
        hwndTab,
      );

  int SetTabOrder(
    int hwndTab,
    int hwndInsertBefore,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndTab,
            IntPtr hwndInsertBefore,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndTab,
            int hwndInsertBefore,
          )>()(
        ptr.ref.lpVtbl,
        hwndTab,
        hwndInsertBefore,
      );

  int SetTabActive(
    int hwndTab,
    int hwndMDI,
    int dwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndTab,
            IntPtr hwndMDI,
            Uint32 dwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndTab,
            int hwndMDI,
            int dwReserved,
          )>()(
        ptr.ref.lpVtbl,
        hwndTab,
        hwndMDI,
        dwReserved,
      );

  int ThumbBarAddButtons(
    int hwnd,
    int cButtons,
    Pointer<THUMBBUTTON> pButton,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
            Uint32 cButtons,
            Pointer<THUMBBUTTON> pButton,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
            int cButtons,
            Pointer<THUMBBUTTON> pButton,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
        cButtons,
        pButton,
      );

  int ThumbBarUpdateButtons(
    int hwnd,
    int cButtons,
    Pointer<THUMBBUTTON> pButton,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
            Uint32 cButtons,
            Pointer<THUMBBUTTON> pButton,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
            int cButtons,
            Pointer<THUMBBUTTON> pButton,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
        cButtons,
        pButton,
      );

  int ThumbBarSetImageList(
    int hwnd,
    int himl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
            IntPtr himl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
            int himl,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
        himl,
      );

  int SetOverlayIcon(
    int hwnd,
    int hIcon,
    Pointer<Utf16> pszDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
            IntPtr hIcon,
            Pointer<Utf16> pszDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
            int hIcon,
            Pointer<Utf16> pszDescription,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
        hIcon,
        pszDescription,
      );

  int SetThumbnailTooltip(
    int hwnd,
    Pointer<Utf16> pszTip,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
            Pointer<Utf16> pszTip,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
            Pointer<Utf16> pszTip,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
        pszTip,
      );

  int SetThumbnailClip(
    int hwnd,
    Pointer<RECT> prcClip,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
            Pointer<RECT> prcClip,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
            Pointer<RECT> prcClip,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
        prcClip,
      );
}
