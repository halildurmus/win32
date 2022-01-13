// IFolderViewOptions.dart

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
import '../../ui/shell/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IFolderViewOptions = '{3CC974D2-B302-4D36-AD3E-06D93F695D3F}';

/// {@category Interface}
/// {@category com}
class IFolderViewOptions extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IFolderViewOptions(Pointer<COMObject> ptr) : super(ptr);

  int SetFolderViewOptions(
    int fvoMask,
    int fvoFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fvoMask,
            Int32 fvoFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fvoMask,
            int fvoFlags,
          )>()(
        ptr.ref.lpVtbl,
        fvoMask,
        fvoFlags,
      );

  int GetFolderViewOptions(
    Pointer<Int32> pfvoFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfvoFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfvoFlags,
          )>()(
        ptr.ref.lpVtbl,
        pfvoFlags,
      );
}
