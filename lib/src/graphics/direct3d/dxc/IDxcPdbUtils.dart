// IDxcPdbUtils.dart

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
import '../../../graphics/direct3d/dxc/IDxcBlobEncoding.dart';
import '../../../graphics/direct3d/dxc/IDxcVersionInfo.dart';
import '../../../graphics/direct3d/dxc/IDxcCompiler3.dart';
import '../../../graphics/direct3d/dxc/IDxcResult.dart';
import '../../../graphics/direct3d/dxc/structs.g.dart';

/// @nodoc
const IID_IDxcPdbUtils = '{E6C9647E-9D6A-4C3B-B94C-524B5A6C343D}';

/// {@category Interface}
/// {@category com}
class IDxcPdbUtils extends IUnknown {
  // vtable begins at 3, is 24 entries long.
  IDxcPdbUtils(Pointer<COMObject> ptr) : super(ptr);

  int Load(
    Pointer<COMObject> pPdbOrDxil,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPdbOrDxil,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPdbOrDxil,
          )>()(
        ptr.ref.lpVtbl,
        pPdbOrDxil,
      );

  int GetSourceCount(
    Pointer<Uint32> pCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pCount,
          )>()(
        ptr.ref.lpVtbl,
        pCount,
      );

  int GetSource(
    int uIndex,
    Pointer<Pointer<COMObject>> ppResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uIndex,
            Pointer<Pointer<COMObject>> ppResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uIndex,
            Pointer<Pointer<COMObject>> ppResult,
          )>()(
        ptr.ref.lpVtbl,
        uIndex,
        ppResult,
      );

  int GetSourceName(
    int uIndex,
    Pointer<Pointer<Utf16>> pResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uIndex,
            Pointer<Pointer<Utf16>> pResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uIndex,
            Pointer<Pointer<Utf16>> pResult,
          )>()(
        ptr.ref.lpVtbl,
        uIndex,
        pResult,
      );

  int GetFlagCount(
    Pointer<Uint32> pCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pCount,
          )>()(
        ptr.ref.lpVtbl,
        pCount,
      );

  int GetFlag(
    int uIndex,
    Pointer<Pointer<Utf16>> pResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uIndex,
            Pointer<Pointer<Utf16>> pResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uIndex,
            Pointer<Pointer<Utf16>> pResult,
          )>()(
        ptr.ref.lpVtbl,
        uIndex,
        pResult,
      );

  int GetArgCount(
    Pointer<Uint32> pCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pCount,
          )>()(
        ptr.ref.lpVtbl,
        pCount,
      );

  int GetArg(
    int uIndex,
    Pointer<Pointer<Utf16>> pResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uIndex,
            Pointer<Pointer<Utf16>> pResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uIndex,
            Pointer<Pointer<Utf16>> pResult,
          )>()(
        ptr.ref.lpVtbl,
        uIndex,
        pResult,
      );

  int GetArgPairCount(
    Pointer<Uint32> pCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pCount,
          )>()(
        ptr.ref.lpVtbl,
        pCount,
      );

  int GetArgPair(
    int uIndex,
    Pointer<Pointer<Utf16>> pName,
    Pointer<Pointer<Utf16>> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uIndex,
            Pointer<Pointer<Utf16>> pName,
            Pointer<Pointer<Utf16>> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uIndex,
            Pointer<Pointer<Utf16>> pName,
            Pointer<Pointer<Utf16>> pValue,
          )>()(
        ptr.ref.lpVtbl,
        uIndex,
        pName,
        pValue,
      );

  int GetDefineCount(
    Pointer<Uint32> pCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pCount,
          )>()(
        ptr.ref.lpVtbl,
        pCount,
      );

  int GetDefine(
    int uIndex,
    Pointer<Pointer<Utf16>> pResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uIndex,
            Pointer<Pointer<Utf16>> pResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uIndex,
            Pointer<Pointer<Utf16>> pResult,
          )>()(
        ptr.ref.lpVtbl,
        uIndex,
        pResult,
      );

  int GetTargetProfile(
    Pointer<Pointer<Utf16>> pResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pResult,
          )>()(
        ptr.ref.lpVtbl,
        pResult,
      );

  int GetEntryPoint(
    Pointer<Pointer<Utf16>> pResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pResult,
          )>()(
        ptr.ref.lpVtbl,
        pResult,
      );

  int GetMainFileName(
    Pointer<Pointer<Utf16>> pResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pResult,
          )>()(
        ptr.ref.lpVtbl,
        pResult,
      );

  int GetHash(
    Pointer<Pointer<COMObject>> ppResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
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

  int GetName(
    Pointer<Pointer<Utf16>> pResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pResult,
          )>()(
        ptr.ref.lpVtbl,
        pResult,
      );

  int IsFullPDB() => ptr.ref.lpVtbl.value
          .elementAt(20)
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

  int GetFullPDB(
    Pointer<Pointer<COMObject>> ppFullPDB,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppFullPDB,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppFullPDB,
          )>()(
        ptr.ref.lpVtbl,
        ppFullPDB,
      );

  int GetVersionInfo(
    Pointer<Pointer<COMObject>> ppVersionInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppVersionInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppVersionInfo,
          )>()(
        ptr.ref.lpVtbl,
        ppVersionInfo,
      );

  int SetCompiler(
    Pointer<COMObject> pCompiler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCompiler,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCompiler,
          )>()(
        ptr.ref.lpVtbl,
        pCompiler,
      );

  int CompileForFullPDB(
    Pointer<Pointer<COMObject>> ppResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
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

  int OverrideArgs(
    Pointer<DxcArgPair> pArgPairs,
    int uNumArgPairs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DxcArgPair> pArgPairs,
            Uint32 uNumArgPairs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DxcArgPair> pArgPairs,
            int uNumArgPairs,
          )>()(
        ptr.ref.lpVtbl,
        pArgPairs,
        uNumArgPairs,
      );

  int OverrideRootSignature(
    Pointer<Utf16> pRootSignature,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pRootSignature,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pRootSignature,
          )>()(
        ptr.ref.lpVtbl,
        pRootSignature,
      );
}
