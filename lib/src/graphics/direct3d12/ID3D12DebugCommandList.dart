// ID3D12DebugCommandList.dart

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
import '../../graphics/direct3d12/ID3D12Resource.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d12/structs.g.dart';

/// @nodoc
const IID_ID3D12DebugCommandList = '{09E0BF36-54AC-484F-8847-4BAEEAB6053F}';

/// {@category Interface}
/// {@category com}
class ID3D12DebugCommandList extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ID3D12DebugCommandList(Pointer<COMObject> ptr) : super(ptr);

  int AssertResourceState(
    Pointer<COMObject> pResource,
    int Subresource,
    int State,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResource,
            Uint32 Subresource,
            Uint32 State,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResource,
            int Subresource,
            int State,
          )>()(
        ptr.ref.lpVtbl,
        pResource,
        Subresource,
        State,
      );

  int SetFeatureMask(
    int Mask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Mask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Mask,
          )>()(
        ptr.ref.lpVtbl,
        Mask,
      );

  int GetFeatureMask() => ptr.ref.lpVtbl.value
          .elementAt(5)
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
