// IDxcCompiler2.dart

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

import '../../../graphics/direct3d/dxc/IDxcCompiler.dart';
import '../../../graphics/direct3d/dxc/IDxcBlob.dart';
import '../../../foundation/structs.g.dart';
import '../../../graphics/direct3d/dxc/structs.g.dart';
import '../../../graphics/direct3d/dxc/IDxcIncludeHandler.dart';
import '../../../graphics/direct3d/dxc/IDxcOperationResult.dart';

/// @nodoc
const IID_IDxcCompiler2 = '{A005A9D9-B8BB-4594-B5C9-0E633BEC4D37}';

/// {@category Interface}
/// {@category com}
class IDxcCompiler2 extends IDxcCompiler {
  // vtable begins at 6, is 1 entries long.
  IDxcCompiler2(Pointer<COMObject> ptr) : super(ptr);

  int CompileWithDebug(
    Pointer<COMObject> pSource,
    Pointer<Utf16> pSourceName,
    Pointer<Utf16> pEntryPoint,
    Pointer<Utf16> pTargetProfile,
    Pointer<Pointer<Utf16>> pArguments,
    int argCount,
    Pointer<DxcDefine> pDefines,
    int defineCount,
    Pointer<COMObject> pIncludeHandler,
    Pointer<Pointer<COMObject>> ppResult,
    Pointer<Pointer<Utf16>> ppDebugBlobName,
    Pointer<Pointer<COMObject>> ppDebugBlob,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSource,
            Pointer<Utf16> pSourceName,
            Pointer<Utf16> pEntryPoint,
            Pointer<Utf16> pTargetProfile,
            Pointer<Pointer<Utf16>> pArguments,
            Uint32 argCount,
            Pointer<DxcDefine> pDefines,
            Uint32 defineCount,
            Pointer<COMObject> pIncludeHandler,
            Pointer<Pointer<COMObject>> ppResult,
            Pointer<Pointer<Utf16>> ppDebugBlobName,
            Pointer<Pointer<COMObject>> ppDebugBlob,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSource,
            Pointer<Utf16> pSourceName,
            Pointer<Utf16> pEntryPoint,
            Pointer<Utf16> pTargetProfile,
            Pointer<Pointer<Utf16>> pArguments,
            int argCount,
            Pointer<DxcDefine> pDefines,
            int defineCount,
            Pointer<COMObject> pIncludeHandler,
            Pointer<Pointer<COMObject>> ppResult,
            Pointer<Pointer<Utf16>> ppDebugBlobName,
            Pointer<Pointer<COMObject>> ppDebugBlob,
          )>()(
        ptr.ref.lpVtbl,
        pSource,
        pSourceName,
        pEntryPoint,
        pTargetProfile,
        pArguments,
        argCount,
        pDefines,
        defineCount,
        pIncludeHandler,
        ppResult,
        ppDebugBlobName,
        ppDebugBlob,
      );
}
