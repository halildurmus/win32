// ID3D10EffectType.dart

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

import '../../foundation/structs.g.dart';
import '../../graphics/direct3d10/structs.g.dart';
import '../../graphics/direct3d10/ID3D10EffectType.dart';

/// @nodoc
const IID_ID3D10EffectType = '{4E9E1DDC-CD9D-4772-A837-00180B9B88FD}';

/// {@category Interface}
/// {@category com}
class ID3D10EffectType {
  // vtable begins at 0, is 7 entries long.
  Pointer<COMObject> ptr;

  ID3D10EffectType(this.ptr);

  int IsValid() => ptr.ref.lpVtbl.value
          .elementAt(0)
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

  int GetDesc(
    Pointer<D3D10_EFFECT_TYPE_DESC> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(1)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D10_EFFECT_TYPE_DESC> pDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D10_EFFECT_TYPE_DESC> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
      );

  Pointer<COMObject> GetMemberTypeByIndex(
    int Index,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(2)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<COMObject> Function(
            Pointer,
            Uint32 Index,
          )>>>()
          .value
          .asFunction<
              Pointer<COMObject> Function(
            Pointer,
            int Index,
          )>()(
        ptr.ref.lpVtbl,
        Index,
      );

  Pointer<COMObject> GetMemberTypeByName(
    Pointer<Utf8> Name,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<COMObject> Function(
            Pointer,
            Pointer<Utf8> Name,
          )>>>()
          .value
          .asFunction<
              Pointer<COMObject> Function(
            Pointer,
            Pointer<Utf8> Name,
          )>()(
        ptr.ref.lpVtbl,
        Name,
      );

  Pointer<COMObject> GetMemberTypeBySemantic(
    Pointer<Utf8> Semantic,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<COMObject> Function(
            Pointer,
            Pointer<Utf8> Semantic,
          )>>>()
          .value
          .asFunction<
              Pointer<COMObject> Function(
            Pointer,
            Pointer<Utf8> Semantic,
          )>()(
        ptr.ref.lpVtbl,
        Semantic,
      );

  Pointer<Utf8> GetMemberName(
    int Index,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<Utf8> Function(
            Pointer,
            Uint32 Index,
          )>>>()
          .value
          .asFunction<
              Pointer<Utf8> Function(
            Pointer,
            int Index,
          )>()(
        ptr.ref.lpVtbl,
        Index,
      );

  Pointer<Utf8> GetMemberSemantic(
    int Index,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<Utf8> Function(
            Pointer,
            Uint32 Index,
          )>>>()
          .value
          .asFunction<
              Pointer<Utf8> Function(
            Pointer,
            int Index,
          )>()(
        ptr.ref.lpVtbl,
        Index,
      );
}
