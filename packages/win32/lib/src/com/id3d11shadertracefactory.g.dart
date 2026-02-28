// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Dart representation of a COM interface.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:meta/meta.dart';

import '../bstr.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../guid.dart';
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
import 'id3d11shadertrace.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11ShaderTraceFactory = GUID.fromComponents(
  0x1fbad429,
  0x66ab,
  0x41cc,
  Uint8List.fromList(const [0x96, 0x17, 0x66, 0x7a, 0xc1, 0xe, 0x44, 0x59]),
);

/// Implements a method for generating shader trace information objects.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11shadertracing/nn-d3d11shadertracing-id3d11shadertracefactory>.
///
/// {@category com}
class ID3D11ShaderTraceFactory extends IUnknown implements ComInterface {
  /// Creates a new instance of [ID3D11ShaderTraceFactory] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [ID3D11ShaderTraceFactory] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  ID3D11ShaderTraceFactory(super.ptr)
    : _vtable = ptr.value.cast<ID3D11ShaderTraceFactoryVtbl>().ref;

  /// Creates a new instance of [ID3D11ShaderTraceFactory] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11ShaderTraceFactory] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11ShaderTraceFactory.from(IUnknown interface) =>
      interface.queryInterface();

  final ID3D11ShaderTraceFactoryVtbl _vtable;
  late final _CreateShaderTraceFn =
      _vtable.CreateShaderTrace.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          Pointer<D3D11_SHADER_TRACE_DESC>,
          Pointer<VTablePointer>,
        )
      >();

  /// Creates a shader-trace interface for a shader-trace information object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shadertracing/nf-d3d11shadertracing-id3d11shadertracefactory-createshadertrace>.
  ID3D11ShaderTrace? createShaderTrace(
    IUnknown? pShader,
    Pointer<D3D11_SHADER_TRACE_DESC> pTraceDesc,
  ) {
    final ppShaderTrace = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _CreateShaderTraceFn(
        ptr,
        pShader?.ptr ?? nullptr,
        pTraceDesc,
        ppShaderTrace,
      ),
    );
    if (hr$.isError) {
      free(ppShaderTrace);
      throw WindowsException(hr$);
    }
    final result$ = ppShaderTrace.value;
    free(ppShaderTrace);
    if (result$.isNull) return null;
    return ID3D11ShaderTrace(result$);
  }

  @override
  String toString() => 'ID3D11ShaderTraceFactory(ptr: $ptr)';
}

/// @nodoc
base class ID3D11ShaderTraceFactoryVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pShader,
        Pointer<D3D11_SHADER_TRACE_DESC> pTraceDesc,
        Pointer<VTablePointer> ppShaderTrace,
      )
    >
  >
  CreateShaderTrace;
}

@internal
final class ID3D11ShaderTraceFactoryCompanion
    extends ComCompanion<ID3D11ShaderTraceFactory> {
  const ID3D11ShaderTraceFactoryCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11ShaderTraceFactory Function(VTablePointer) get fromPointer =>
      ID3D11ShaderTraceFactory.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11ShaderTraceFactory;
}
