// IDxcCompiler.dart

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
import '../../../graphics/direct3d/dxc/IDxcIncludeHandler.dart';
import '../../../graphics/direct3d/dxc/IDxcOperationResult.dart';
import '../../../graphics/direct3d/dxc/IDxcBlobEncoding.dart';

/// @nodoc
const IID_IDxcCompiler = '{8C210BF3-011F-4422-8D70-6F9ACB8DB617}';

/// {@category Interface}
/// {@category com}
class IDxcCompiler extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IDxcCompiler(Pointer<COMObject> ptr) : super(ptr);

  int Compile(
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
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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
      );

  int Preprocess(
    Pointer<COMObject> pSource,
    Pointer<Utf16> pSourceName,
    Pointer<Pointer<Utf16>> pArguments,
    int argCount,
    Pointer<DxcDefine> pDefines,
    int defineCount,
    Pointer<COMObject> pIncludeHandler,
    Pointer<Pointer<COMObject>> ppResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSource,
            Pointer<Utf16> pSourceName,
            Pointer<Pointer<Utf16>> pArguments,
            Uint32 argCount,
            Pointer<DxcDefine> pDefines,
            Uint32 defineCount,
            Pointer<COMObject> pIncludeHandler,
            Pointer<Pointer<COMObject>> ppResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSource,
            Pointer<Utf16> pSourceName,
            Pointer<Pointer<Utf16>> pArguments,
            int argCount,
            Pointer<DxcDefine> pDefines,
            int defineCount,
            Pointer<COMObject> pIncludeHandler,
            Pointer<Pointer<COMObject>> ppResult,
          )>()(
        ptr.ref.lpVtbl,
        pSource,
        pSourceName,
        pArguments,
        argCount,
        pDefines,
        defineCount,
        pIncludeHandler,
        ppResult,
      );

  int Disassemble(
    Pointer<COMObject> pSource,
    Pointer<Pointer<COMObject>> ppDisassembly,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSource,
            Pointer<Pointer<COMObject>> ppDisassembly,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSource,
            Pointer<Pointer<COMObject>> ppDisassembly,
          )>()(
        ptr.ref.lpVtbl,
        pSource,
        ppDisassembly,
      );
}
