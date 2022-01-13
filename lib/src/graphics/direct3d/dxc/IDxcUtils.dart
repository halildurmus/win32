// IDxcUtils.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../graphics/direct3d/dxc/IDxcBlob.dart';
import '../../../foundation/structs.g.dart';
import '../../../graphics/direct3d/dxc/structs.g.dart';
import '../../../graphics/direct3d/dxc/IDxcBlobEncoding.dart';
import '../../../system/com/IMalloc.dart';
import '../../../system/com/IStream.dart';
import '../../../graphics/direct3d/dxc/IDxcIncludeHandler.dart';
import '../../../graphics/direct3d/dxc/IDxcBlobUtf8.dart';
import '../../../graphics/direct3d/dxc/IDxcBlobUtf16.dart';
import '../../../graphics/direct3d/dxc/IDxcCompilerArgs.dart';

/// @nodoc
const IID_IDxcUtils = '{4605C4CB-2019-492A-ADA4-65F20BB7D67F}';

/// {@category Interface}
/// {@category com}
class IDxcUtils extends IUnknown {
  // vtable begins at 3, is 13 entries long.
  IDxcUtils(Pointer<COMObject> ptr) : super(ptr);

  int CreateBlobFromBlob(
    Pointer<COMObject> pBlob,
    int offset,
    int length,
    Pointer<Pointer<COMObject>> ppResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pBlob,
            Uint32 offset,
            Uint32 length,
            Pointer<Pointer<COMObject>> ppResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pBlob,
            int offset,
            int length,
            Pointer<Pointer<COMObject>> ppResult,
          )>()(
        ptr.ref.lpVtbl,
        pBlob,
        offset,
        length,
        ppResult,
      );

  int CreateBlobFromPinned(
    Pointer pData,
    int size,
    int codePage,
    Pointer<Pointer<COMObject>> pBlobEncoding,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pData,
            Uint32 size,
            Uint32 codePage,
            Pointer<Pointer<COMObject>> pBlobEncoding,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pData,
            int size,
            int codePage,
            Pointer<Pointer<COMObject>> pBlobEncoding,
          )>()(
        ptr.ref.lpVtbl,
        pData,
        size,
        codePage,
        pBlobEncoding,
      );

  int MoveToBlob(
    Pointer pData,
    Pointer<COMObject> pIMalloc,
    int size,
    int codePage,
    Pointer<Pointer<COMObject>> pBlobEncoding,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pData,
            Pointer<COMObject> pIMalloc,
            Uint32 size,
            Uint32 codePage,
            Pointer<Pointer<COMObject>> pBlobEncoding,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pData,
            Pointer<COMObject> pIMalloc,
            int size,
            int codePage,
            Pointer<Pointer<COMObject>> pBlobEncoding,
          )>()(
        ptr.ref.lpVtbl,
        pData,
        pIMalloc,
        size,
        codePage,
        pBlobEncoding,
      );

  int CreateBlob(
    Pointer pData,
    int size,
    int codePage,
    Pointer<Pointer<COMObject>> pBlobEncoding,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pData,
            Uint32 size,
            Uint32 codePage,
            Pointer<Pointer<COMObject>> pBlobEncoding,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pData,
            int size,
            int codePage,
            Pointer<Pointer<COMObject>> pBlobEncoding,
          )>()(
        ptr.ref.lpVtbl,
        pData,
        size,
        codePage,
        pBlobEncoding,
      );

  int LoadFile(
    Pointer<Utf16> pFileName,
    Pointer<Uint32> pCodePage,
    Pointer<Pointer<COMObject>> pBlobEncoding,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pFileName,
            Pointer<Uint32> pCodePage,
            Pointer<Pointer<COMObject>> pBlobEncoding,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pFileName,
            Pointer<Uint32> pCodePage,
            Pointer<Pointer<COMObject>> pBlobEncoding,
          )>()(
        ptr.ref.lpVtbl,
        pFileName,
        pCodePage,
        pBlobEncoding,
      );

  int CreateReadOnlyStreamFromBlob(
    Pointer<COMObject> pBlob,
    Pointer<Pointer<COMObject>> ppStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pBlob,
            Pointer<Pointer<COMObject>> ppStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pBlob,
            Pointer<Pointer<COMObject>> ppStream,
          )>()(
        ptr.ref.lpVtbl,
        pBlob,
        ppStream,
      );

  int CreateDefaultIncludeHandler(
    Pointer<Pointer<COMObject>> ppResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppResult,
          )>()(
        ptr.ref.lpVtbl,
        ppResult,
      );

  int GetBlobAsUtf8(
    Pointer<COMObject> pBlob,
    Pointer<Pointer<COMObject>> pBlobEncoding,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pBlob,
            Pointer<Pointer<COMObject>> pBlobEncoding,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pBlob,
            Pointer<Pointer<COMObject>> pBlobEncoding,
          )>()(
        ptr.ref.lpVtbl,
        pBlob,
        pBlobEncoding,
      );

  int GetBlobAsUtf16(
    Pointer<COMObject> pBlob,
    Pointer<Pointer<COMObject>> pBlobEncoding,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pBlob,
            Pointer<Pointer<COMObject>> pBlobEncoding,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pBlob,
            Pointer<Pointer<COMObject>> pBlobEncoding,
          )>()(
        ptr.ref.lpVtbl,
        pBlob,
        pBlobEncoding,
      );

  int GetDxilContainerPart(
    Pointer<DxcBuffer> pShader,
    int DxcPart,
    Pointer<Pointer> ppPartData,
    Pointer<Uint32> pPartSizeInBytes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DxcBuffer> pShader,
            Uint32 DxcPart,
            Pointer<Pointer> ppPartData,
            Pointer<Uint32> pPartSizeInBytes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DxcBuffer> pShader,
            int DxcPart,
            Pointer<Pointer> ppPartData,
            Pointer<Uint32> pPartSizeInBytes,
          )>()(
        ptr.ref.lpVtbl,
        pShader,
        DxcPart,
        ppPartData,
        pPartSizeInBytes,
      );

  int CreateReflection(
    Pointer<DxcBuffer> pData,
    Pointer<GUID> iid,
    Pointer<Pointer> ppvReflection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DxcBuffer> pData,
            Pointer<GUID> iid,
            Pointer<Pointer> ppvReflection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DxcBuffer> pData,
            Pointer<GUID> iid,
            Pointer<Pointer> ppvReflection,
          )>()(
        ptr.ref.lpVtbl,
        pData,
        iid,
        ppvReflection,
      );

  int BuildArguments(
    Pointer<Utf16> pSourceName,
    Pointer<Utf16> pEntryPoint,
    Pointer<Utf16> pTargetProfile,
    Pointer<Pointer<Utf16>> pArguments,
    int argCount,
    Pointer<DxcDefine> pDefines,
    int defineCount,
    Pointer<Pointer<COMObject>> ppArgs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pSourceName,
            Pointer<Utf16> pEntryPoint,
            Pointer<Utf16> pTargetProfile,
            Pointer<Pointer<Utf16>> pArguments,
            Uint32 argCount,
            Pointer<DxcDefine> pDefines,
            Uint32 defineCount,
            Pointer<Pointer<COMObject>> ppArgs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pSourceName,
            Pointer<Utf16> pEntryPoint,
            Pointer<Utf16> pTargetProfile,
            Pointer<Pointer<Utf16>> pArguments,
            int argCount,
            Pointer<DxcDefine> pDefines,
            int defineCount,
            Pointer<Pointer<COMObject>> ppArgs,
          )>()(
        ptr.ref.lpVtbl,
        pSourceName,
        pEntryPoint,
        pTargetProfile,
        pArguments,
        argCount,
        pDefines,
        defineCount,
        ppArgs,
      );

  int GetPDBContents(
    Pointer<COMObject> pPDBBlob,
    Pointer<Pointer<COMObject>> ppHash,
    Pointer<Pointer<COMObject>> ppContainer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPDBBlob,
            Pointer<Pointer<COMObject>> ppHash,
            Pointer<Pointer<COMObject>> ppContainer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPDBBlob,
            Pointer<Pointer<COMObject>> ppHash,
            Pointer<Pointer<COMObject>> ppContainer,
          )>()(
        ptr.ref.lpVtbl,
        pPDBBlob,
        ppHash,
        ppContainer,
      );
}
