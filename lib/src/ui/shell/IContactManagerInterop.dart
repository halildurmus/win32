// IContactManagerInterop.dart

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
import '../../specialTypes.dart';
import '../../ui/shell/structs.g.dart';

/// @nodoc
const IID_IContactManagerInterop = '{99EACBA7-E073-43B6-A896-55AFE48A0833}';

/// {@category Interface}
/// {@category com}
class IContactManagerInterop extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IContactManagerInterop(Pointer<COMObject> ptr) : super(ptr);

  int ShowContactCardForWindow(
    int appWindow,
    Pointer<COMObject> contact,
    Pointer<RECT> selection,
    int preferredPlacement,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr appWindow,
            Pointer<COMObject> contact,
            Pointer<RECT> selection,
            Int32 preferredPlacement,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int appWindow,
            Pointer<COMObject> contact,
            Pointer<RECT> selection,
            int preferredPlacement,
          )>()(
        ptr.ref.lpVtbl,
        appWindow,
        contact,
        selection,
        preferredPlacement,
      );
}
