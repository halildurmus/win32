// ID3D11Linker.dart

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
import '../../graphics/direct3d11/ID3D11ModuleInstance.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d/ID3DBlob.dart';

/// @nodoc
const IID_ID3D11Linker = '{59A6CD0E-E10D-4C1F-88C0-63ABA1DAF30E}';

/// {@category Interface}
/// {@category com}
class ID3D11Linker extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ID3D11Linker(Pointer<COMObject> ptr) : super(ptr);

  int Link(
    Pointer<COMObject> pEntry,
    Pointer<Utf8> pEntryName,
    Pointer<Utf8> pTargetName,
    int uFlags,
    Pointer<Pointer<COMObject>> ppShaderBlob,
    Pointer<Pointer<COMObject>> ppErrorBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pEntry,
            Pointer<Utf8> pEntryName,
            Pointer<Utf8> pTargetName,
            Uint32 uFlags,
            Pointer<Pointer<COMObject>> ppShaderBlob,
            Pointer<Pointer<COMObject>> ppErrorBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pEntry,
            Pointer<Utf8> pEntryName,
            Pointer<Utf8> pTargetName,
            int uFlags,
            Pointer<Pointer<COMObject>> ppShaderBlob,
            Pointer<Pointer<COMObject>> ppErrorBuffer,
          )>()(
        ptr.ref.lpVtbl,
        pEntry,
        pEntryName,
        pTargetName,
        uFlags,
        ppShaderBlob,
        ppErrorBuffer,
      );

  int UseLibrary(
    Pointer<COMObject> pLibraryMI,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pLibraryMI,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pLibraryMI,
          )>()(
        ptr.ref.lpVtbl,
        pLibraryMI,
      );

  int AddClipPlaneFromCBuffer(
    int uCBufferSlot,
    int uCBufferEntry,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uCBufferSlot,
            Uint32 uCBufferEntry,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uCBufferSlot,
            int uCBufferEntry,
          )>()(
        ptr.ref.lpVtbl,
        uCBufferSlot,
        uCBufferEntry,
      );
}
