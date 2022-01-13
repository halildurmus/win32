// IPlayToControl.dart

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
import '../../media/mediafoundation/IMFSharingEngineClassFactory.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IPlayToControl = '{607574EB-F4B6-45C1-B08C-CB715122901D}';

/// {@category Interface}
/// {@category com}
class IPlayToControl extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IPlayToControl(Pointer<COMObject> ptr) : super(ptr);

  int Connect(
    Pointer<COMObject> pFactory,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFactory,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFactory,
          )>()(
        ptr.ref.lpVtbl,
        pFactory,
      );

  int Disconnect() => ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
