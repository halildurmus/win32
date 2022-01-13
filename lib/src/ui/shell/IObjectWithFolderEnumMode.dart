// IObjectWithFolderEnumMode.dart

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
const IID_IObjectWithFolderEnumMode = '{6A9D9026-0E6E-464C-B000-42ECC07DE673}';

/// {@category Interface}
/// {@category com}
class IObjectWithFolderEnumMode extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IObjectWithFolderEnumMode(Pointer<COMObject> ptr) : super(ptr);

  int SetMode(
    int feMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 feMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int feMode,
          )>()(
        ptr.ref.lpVtbl,
        feMode,
      );

  int GetMode(
    Pointer<Int32> pfeMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfeMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfeMode,
          )>()(
        ptr.ref.lpVtbl,
        pfeMode,
      );
}
