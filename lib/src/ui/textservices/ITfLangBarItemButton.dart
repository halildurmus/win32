// ITfLangBarItemButton.dart

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

import '../../ui/textservices/ITfLangBarItem.dart';
import '../../ui/textservices/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../ui/textservices/ITfMenu.dart';
import '../../ui/windowsandmessaging/structs.g.dart';

/// @nodoc
const IID_ITfLangBarItemButton = '{28C7F1D0-DE25-11D2-AFDD-00105A2799B5}';

/// {@category Interface}
/// {@category com}
class ITfLangBarItemButton extends ITfLangBarItem {
  // vtable begins at 7, is 5 entries long.
  ITfLangBarItemButton(Pointer<COMObject> ptr) : super(ptr);

  int OnClick(
    int click,
    POINT pt,
    Pointer<RECT> prcArea,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 click,
            POINT pt,
            Pointer<RECT> prcArea,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int click,
            POINT pt,
            Pointer<RECT> prcArea,
          )>()(
        ptr.ref.lpVtbl,
        click,
        pt,
        prcArea,
      );

  int InitMenu(
    Pointer<COMObject> pMenu,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pMenu,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pMenu,
          )>()(
        ptr.ref.lpVtbl,
        pMenu,
      );

  int OnMenuSelect(
    int wID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 wID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wID,
          )>()(
        ptr.ref.lpVtbl,
        wID,
      );

  int GetIcon(
    Pointer<IntPtr> phIcon,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> phIcon,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> phIcon,
          )>()(
        ptr.ref.lpVtbl,
        phIcon,
      );

  int GetText(
    Pointer<Pointer<Utf16>> pbstrText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrText,
          )>()(
        ptr.ref.lpVtbl,
        pbstrText,
      );
}
