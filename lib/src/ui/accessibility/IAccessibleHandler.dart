// IAccessibleHandler.dart

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
import '../../ui/accessibility/IAccessible.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IAccessibleHandler = '{03022430-ABC4-11D0-BDE2-00AA001A1953}';

/// {@category Interface}
/// {@category com}
class IAccessibleHandler extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IAccessibleHandler(Pointer<COMObject> ptr) : super(ptr);

  int AccessibleObjectFromID(
    int hwnd,
    int lObjectID,
    Pointer<Pointer<COMObject>> pIAccessible,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hwnd,
            Int32 lObjectID,
            Pointer<Pointer<COMObject>> pIAccessible,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
            int lObjectID,
            Pointer<Pointer<COMObject>> pIAccessible,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
        lObjectID,
        pIAccessible,
      );
}
