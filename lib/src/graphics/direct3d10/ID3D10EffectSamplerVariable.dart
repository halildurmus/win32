// ID3D10EffectSamplerVariable.dart

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
import '../../graphics/direct3d10/ID3D10SamplerState.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d10/structs.g.dart';

/// @nodoc
const IID_ID3D10EffectSamplerVariable =
    '{6530D5C7-07E9-4271-A418-E7CE4BD1E480}';

/// {@category Interface}
/// {@category com}
class ID3D10EffectSamplerVariable extends ID3D10EffectVariable {
  // vtable begins at 25, is 2 entries long.
  ID3D10EffectSamplerVariable(Pointer<COMObject> ptr) : super(ptr);

  int GetSampler(
    int Index,
    Pointer<Pointer<COMObject>> ppSampler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<Pointer<COMObject>> ppSampler,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Pointer<COMObject>> ppSampler,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        ppSampler,
      );

  int GetBackingStore(
    int Index,
    Pointer<D3D10_SAMPLER_DESC> pSamplerDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<D3D10_SAMPLER_DESC> pSamplerDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<D3D10_SAMPLER_DESC> pSamplerDesc,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        pSamplerDesc,
      );
}
