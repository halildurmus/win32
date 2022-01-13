// ID3D10EffectDepthStencilViewVariable.dart

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
import '../../graphics/direct3d10/ID3D10DepthStencilView.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID3D10EffectDepthStencilViewVariable =
    '{3E02C918-CC79-4985-B622-2D92AD701623}';

/// {@category Interface}
/// {@category com}
class ID3D10EffectDepthStencilViewVariable extends ID3D10EffectVariable {
  // vtable begins at 25, is 4 entries long.
  ID3D10EffectDepthStencilViewVariable(Pointer<COMObject> ptr) : super(ptr);

  int SetDepthStencil(
    Pointer<COMObject> pResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResource,
          )>()(
        ptr.ref.lpVtbl,
        pResource,
      );

  int GetDepthStencil(
    Pointer<Pointer<COMObject>> ppResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppResource,
          )>()(
        ptr.ref.lpVtbl,
        ppResource,
      );

  int SetDepthStencilArray(
    Pointer<Pointer<COMObject>> ppResources,
    int Offset,
    int Count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppResources,
            Uint32 Offset,
            Uint32 Count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppResources,
            int Offset,
            int Count,
          )>()(
        ptr.ref.lpVtbl,
        ppResources,
        Offset,
        Count,
      );

  int GetDepthStencilArray(
    Pointer<Pointer<COMObject>> ppResources,
    int Offset,
    int Count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppResources,
            Uint32 Offset,
            Uint32 Count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppResources,
            int Offset,
            int Count,
          )>()(
        ptr.ref.lpVtbl,
        ppResources,
        Offset,
        Count,
      );
}
