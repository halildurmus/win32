// IDxcCompiler3.dart

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
import '../../../graphics/direct3d/dxc/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../graphics/direct3d/dxc/IDxcIncludeHandler.dart';

/// @nodoc
const IID_IDxcCompiler3 = '{228B4687-5A6A-4730-900C-9702B2203F54}';

/// {@category Interface}
/// {@category com}
class IDxcCompiler3 extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDxcCompiler3(Pointer<COMObject> ptr) : super(ptr);

  int Compile(
    Pointer<DxcBuffer> pSource,
    Pointer<Pointer<Utf16>> pArguments,
    int argCount,
    Pointer<COMObject> pIncludeHandler,
    Pointer<GUID> riid,
    Pointer<Pointer> ppResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DxcBuffer> pSource,
            Pointer<Pointer<Utf16>> pArguments,
            Uint32 argCount,
            Pointer<COMObject> pIncludeHandler,
            Pointer<GUID> riid,
            Pointer<Pointer> ppResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DxcBuffer> pSource,
            Pointer<Pointer<Utf16>> pArguments,
            int argCount,
            Pointer<COMObject> pIncludeHandler,
            Pointer<GUID> riid,
            Pointer<Pointer> ppResult,
          )>()(
        ptr.ref.lpVtbl,
        pSource,
        pArguments,
        argCount,
        pIncludeHandler,
        riid,
        ppResult,
      );

  int Disassemble(
    Pointer<DxcBuffer> pObject,
    Pointer<GUID> riid,
    Pointer<Pointer> ppResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DxcBuffer> pObject,
            Pointer<GUID> riid,
            Pointer<Pointer> ppResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DxcBuffer> pObject,
            Pointer<GUID> riid,
            Pointer<Pointer> ppResult,
          )>()(
        ptr.ref.lpVtbl,
        pObject,
        riid,
        ppResult,
      );
}
