// ID3D12LifetimeOwner.dart

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
import '../../graphics/direct3d12/structs.g.dart';

/// @nodoc
const IID_ID3D12LifetimeOwner = '{E667AF9F-CD56-4F46-83CE-032E595D70A8}';

/// {@category Interface}
/// {@category com}
class ID3D12LifetimeOwner extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ID3D12LifetimeOwner(Pointer<COMObject> ptr) : super(ptr);

  void LifetimeStateUpdated(
    int NewState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int32 NewState,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int NewState,
          )>()(
        ptr.ref.lpVtbl,
        NewState,
      );
}
