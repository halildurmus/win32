// IExplorerCommandState.dart

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
import '../../ui/shell/IShellItemArray.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IExplorerCommandState = '{BDDACB60-7657-47AE-8445-D23E1ACF82AE}';

/// {@category Interface}
/// {@category com}
class IExplorerCommandState extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IExplorerCommandState(Pointer<COMObject> ptr) : super(ptr);

  int GetState(
    Pointer<COMObject> psiItemArray,
    int fOkToBeSlow,
    Pointer<Uint32> pCmdState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psiItemArray,
            Int32 fOkToBeSlow,
            Pointer<Uint32> pCmdState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psiItemArray,
            int fOkToBeSlow,
            Pointer<Uint32> pCmdState,
          )>()(
        ptr.ref.lpVtbl,
        psiItemArray,
        fOkToBeSlow,
        pCmdState,
      );
}
