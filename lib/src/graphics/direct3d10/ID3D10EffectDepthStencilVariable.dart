// ID3D10EffectDepthStencilVariable.dart

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

import '../../graphics/direct3d10/ID3D10EffectVariable.dart';
import '../../graphics/direct3d10/ID3D10DepthStencilState.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d10/structs.g.dart';

/// @nodoc
const IID_ID3D10EffectDepthStencilVariable =
    '{AF482368-330A-46A5-9A5C-01C71AF24C8D}';

/// {@category Interface}
/// {@category com}
class ID3D10EffectDepthStencilVariable extends ID3D10EffectVariable {
  // vtable begins at 25, is 2 entries long.
  ID3D10EffectDepthStencilVariable(Pointer<COMObject> ptr) : super(ptr);

  int GetDepthStencilState(
    int Index,
    Pointer<Pointer<COMObject>> ppDepthStencilState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<Pointer<COMObject>> ppDepthStencilState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Pointer<COMObject>> ppDepthStencilState,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        ppDepthStencilState,
      );

  int GetBackingStore(
    int Index,
    Pointer<D3D10_DEPTH_STENCIL_DESC> pDepthStencilDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<D3D10_DEPTH_STENCIL_DESC> pDepthStencilDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<D3D10_DEPTH_STENCIL_DESC> pDepthStencilDesc,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        pDepthStencilDesc,
      );
}
