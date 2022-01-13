// ID3D11ModuleInstance.dart

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
const IID_ID3D11ModuleInstance = '{469E07F7-045A-48D5-AA12-68A478CDF75D}';

/// {@category Interface}
/// {@category com}
class ID3D11ModuleInstance extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  ID3D11ModuleInstance(Pointer<COMObject> ptr) : super(ptr);

  int BindConstantBuffer(
    int uSrcSlot,
    int uDstSlot,
    int cbDstOffset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uSrcSlot,
            Uint32 uDstSlot,
            Uint32 cbDstOffset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uSrcSlot,
            int uDstSlot,
            int cbDstOffset,
          )>()(
        ptr.ref.lpVtbl,
        uSrcSlot,
        uDstSlot,
        cbDstOffset,
      );

  int BindConstantBufferByName(
    Pointer<Utf8> pName,
    int uDstSlot,
    int cbDstOffset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> pName,
            Uint32 uDstSlot,
            Uint32 cbDstOffset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> pName,
            int uDstSlot,
            int cbDstOffset,
          )>()(
        ptr.ref.lpVtbl,
        pName,
        uDstSlot,
        cbDstOffset,
      );

  int BindResource(
    int uSrcSlot,
    int uDstSlot,
    int uCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uSrcSlot,
            Uint32 uDstSlot,
            Uint32 uCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uSrcSlot,
            int uDstSlot,
            int uCount,
          )>()(
        ptr.ref.lpVtbl,
        uSrcSlot,
        uDstSlot,
        uCount,
      );

  int BindResourceByName(
    Pointer<Utf8> pName,
    int uDstSlot,
    int uCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> pName,
            Uint32 uDstSlot,
            Uint32 uCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> pName,
            int uDstSlot,
            int uCount,
          )>()(
        ptr.ref.lpVtbl,
        pName,
        uDstSlot,
        uCount,
      );

  int BindSampler(
    int uSrcSlot,
    int uDstSlot,
    int uCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uSrcSlot,
            Uint32 uDstSlot,
            Uint32 uCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uSrcSlot,
            int uDstSlot,
            int uCount,
          )>()(
        ptr.ref.lpVtbl,
        uSrcSlot,
        uDstSlot,
        uCount,
      );

  int BindSamplerByName(
    Pointer<Utf8> pName,
    int uDstSlot,
    int uCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> pName,
            Uint32 uDstSlot,
            Uint32 uCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> pName,
            int uDstSlot,
            int uCount,
          )>()(
        ptr.ref.lpVtbl,
        pName,
        uDstSlot,
        uCount,
      );

  int BindUnorderedAccessView(
    int uSrcSlot,
    int uDstSlot,
    int uCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uSrcSlot,
            Uint32 uDstSlot,
            Uint32 uCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uSrcSlot,
            int uDstSlot,
            int uCount,
          )>()(
        ptr.ref.lpVtbl,
        uSrcSlot,
        uDstSlot,
        uCount,
      );

  int BindUnorderedAccessViewByName(
    Pointer<Utf8> pName,
    int uDstSlot,
    int uCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> pName,
            Uint32 uDstSlot,
            Uint32 uCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> pName,
            int uDstSlot,
            int uCount,
          )>()(
        ptr.ref.lpVtbl,
        pName,
        uDstSlot,
        uCount,
      );

  int BindResourceAsUnorderedAccessView(
    int uSrcSrvSlot,
    int uDstUavSlot,
    int uCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uSrcSrvSlot,
            Uint32 uDstUavSlot,
            Uint32 uCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uSrcSrvSlot,
            int uDstUavSlot,
            int uCount,
          )>()(
        ptr.ref.lpVtbl,
        uSrcSrvSlot,
        uDstUavSlot,
        uCount,
      );

  int BindResourceAsUnorderedAccessViewByName(
    Pointer<Utf8> pSrvName,
    int uDstUavSlot,
    int uCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> pSrvName,
            Uint32 uDstUavSlot,
            Uint32 uCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> pSrvName,
            int uDstUavSlot,
            int uCount,
          )>()(
        ptr.ref.lpVtbl,
        pSrvName,
        uDstUavSlot,
        uCount,
      );
}
