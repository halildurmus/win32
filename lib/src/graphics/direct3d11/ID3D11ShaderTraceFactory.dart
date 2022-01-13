// ID3D11ShaderTraceFactory.dart

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
import '../../specialTypes.dart';
import '../../graphics/direct3d11/structs.g.dart';
import '../../graphics/direct3d11/ID3D11ShaderTrace.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID3D11ShaderTraceFactory = '{1FBAD429-66AB-41CC-9617-667AC10E4459}';

/// {@category Interface}
/// {@category com}
class ID3D11ShaderTraceFactory extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ID3D11ShaderTraceFactory(Pointer<COMObject> ptr) : super(ptr);

  int CreateShaderTrace(
    Pointer<COMObject> pShader,
    Pointer<D3D11_SHADER_TRACE_DESC> pTraceDesc,
    Pointer<Pointer<COMObject>> ppShaderTrace,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pShader,
            Pointer<D3D11_SHADER_TRACE_DESC> pTraceDesc,
            Pointer<Pointer<COMObject>> ppShaderTrace,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pShader,
            Pointer<D3D11_SHADER_TRACE_DESC> pTraceDesc,
            Pointer<Pointer<COMObject>> ppShaderTrace,
          )>()(
        ptr.ref.lpVtbl,
        pShader,
        pTraceDesc,
        ppShaderTrace,
      );
}
