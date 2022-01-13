// ITfMenu.dart

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
import '../../graphics/gdi/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../ui/textservices/ITfMenu.dart';

/// @nodoc
const IID_ITfMenu = '{6F8A98E4-AAA0-4F15-8C5B-07E0DF0A3DD8}';

/// {@category Interface}
/// {@category com}
class ITfMenu extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ITfMenu(Pointer<COMObject> ptr) : super(ptr);

  int AddMenuItem(
    int uId,
    int dwFlags,
    int hbmp,
    int hbmpMask,
    Pointer<Utf16> pch,
    int cch,
    Pointer<Pointer<COMObject>> ppMenu,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uId,
            Uint32 dwFlags,
            IntPtr hbmp,
            IntPtr hbmpMask,
            Pointer<Utf16> pch,
            Uint32 cch,
            Pointer<Pointer<COMObject>> ppMenu,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uId,
            int dwFlags,
            int hbmp,
            int hbmpMask,
            Pointer<Utf16> pch,
            int cch,
            Pointer<Pointer<COMObject>> ppMenu,
          )>()(
        ptr.ref.lpVtbl,
        uId,
        dwFlags,
        hbmp,
        hbmpMask,
        pch,
        cch,
        ppMenu,
      );
}
