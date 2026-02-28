// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import '../bstr.dart';
import '../com/id3d11shadertrace.g.dart';
import '../com/id3dblob.g.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import '../win32_error.dart';
import '../win32_result.dart';

/// Disassembles a section of compiled Microsoft High Level Shader Language
/// (HLSL) code that is specified by shader trace steps.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11shadertracing/nf-d3d11shadertracing-d3ddisassemble11trace>.
///
/// {@category d3dcompiler_47}
ID3DBlob? D3DDisassemble11Trace(
  Pointer pSrcData,
  int srcDataSize,
  ID3D11ShaderTrace? pTrace,
  int startStep,
  int numSteps,
  int flags,
) {
  final ppDisassembly = adaptiveCalloc<VTablePointer>();
  final hr$ = HRESULT(
    _D3DDisassemble11Trace(
      pSrcData,
      srcDataSize,
      pTrace?.ptr ?? nullptr,
      startStep,
      numSteps,
      flags,
      ppDisassembly,
    ),
  );
  if (hr$.isError) {
    free(ppDisassembly);
    throw WindowsException(hr$);
  }
  final result$ = ppDisassembly.value;
  free(ppDisassembly);
  if (result$.isNull) return null;
  return ID3DBlob(result$);
}

@Native<
  Int32 Function(
    Pointer,
    IntPtr,
    VTablePointer,
    Uint32,
    Uint32,
    Uint32,
    Pointer<VTablePointer>,
  )
>(symbol: 'D3DDisassemble11Trace')
external int _D3DDisassemble11Trace(
  Pointer pSrcData,
  int srcDataSize,
  VTablePointer pTrace,
  int startStep,
  int numSteps,
  int flags,
  Pointer<VTablePointer> ppDisassembly,
);
