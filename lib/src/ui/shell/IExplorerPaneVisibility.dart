// IExplorerPaneVisibility.dart

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
const IID_IExplorerPaneVisibility = '{E07010EC-BC17-44C0-97B0-46C7C95B9EDC}';

/// {@category Interface}
/// {@category com}
class IExplorerPaneVisibility extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IExplorerPaneVisibility(Pointer<COMObject> ptr) : super(ptr);

  int GetPaneState(
    Pointer<GUID> ep,
    Pointer<Uint32> peps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> ep,
            Pointer<Uint32> peps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> ep,
            Pointer<Uint32> peps,
          )>()(
        ptr.ref.lpVtbl,
        ep,
        peps,
      );
}
