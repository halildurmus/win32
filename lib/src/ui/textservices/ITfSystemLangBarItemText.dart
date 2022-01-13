// ITfSystemLangBarItemText.dart

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
const IID_ITfSystemLangBarItemText = '{5C4CE0E5-BA49-4B52-AC6B-3B397B4F701F}';

/// {@category Interface}
/// {@category com}
class ITfSystemLangBarItemText extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ITfSystemLangBarItemText(Pointer<COMObject> ptr) : super(ptr);

  int SetItemText(
    Pointer<Utf16> pch,
    int cch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pch,
            Uint32 cch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pch,
            int cch,
          )>()(
        ptr.ref.lpVtbl,
        pch,
        cch,
      );

  int GetItemText(
    Pointer<Pointer<Utf16>> pbstrText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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
