// ITfSystemLangBarItem.dart

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

/// @nodoc
const IID_ITfSystemLangBarItem = '{1E13E9EC-6B33-4D4A-B5EB-8A92F029F356}';

/// {@category Interface}
/// {@category com}
class ITfSystemLangBarItem extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ITfSystemLangBarItem(Pointer<COMObject> ptr) : super(ptr);

  int SetIcon(
    int hIcon,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hIcon,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hIcon,
          )>()(
        ptr.ref.lpVtbl,
        hIcon,
      );

  int SetTooltipString(
    Pointer<Utf16> pchToolTip,
    int cch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pchToolTip,
            Uint32 cch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pchToolTip,
            int cch,
          )>()(
        ptr.ref.lpVtbl,
        pchToolTip,
        cch,
      );
}
