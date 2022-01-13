// INameSpaceTreeControlFolderCapabilities.dart

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
const IID_INameSpaceTreeControlFolderCapabilities =
    '{E9701183-E6B3-4FF2-8568-813615FEC7BE}';

/// {@category Interface}
/// {@category com}
class INameSpaceTreeControlFolderCapabilities extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  INameSpaceTreeControlFolderCapabilities(Pointer<COMObject> ptr) : super(ptr);

  int GetFolderCapabilities(
    int nfcMask,
    Pointer<Int32> pnfcValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 nfcMask,
            Pointer<Int32> pnfcValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nfcMask,
            Pointer<Int32> pnfcValue,
          )>()(
        ptr.ref.lpVtbl,
        nfcMask,
        pnfcValue,
      );
}
