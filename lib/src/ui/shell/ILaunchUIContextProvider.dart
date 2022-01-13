// ILaunchUIContextProvider.dart

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
import '../../ui/shell/ILaunchUIContext.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ILaunchUIContextProvider = '{0D12C4C8-A3D9-4E24-94C1-0E20C5A956C4}';

/// {@category Interface}
/// {@category com}
class ILaunchUIContextProvider extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ILaunchUIContextProvider(Pointer<COMObject> ptr) : super(ptr);

  int UpdateContext(
    Pointer<COMObject> context,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> context,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> context,
          )>()(
        ptr.ref.lpVtbl,
        context,
      );
}
