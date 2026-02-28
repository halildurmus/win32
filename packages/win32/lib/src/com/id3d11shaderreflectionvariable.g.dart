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
import 'id3d11shaderreflectionconstantbuffer.g.dart';
import 'id3d11shaderreflectiontype.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11ShaderReflectionVariable = GUID.fromComponents(
  0x51f23923,
  0xf3e5,
  0x4bd1,
  Uint8List.fromList(const [0x91, 0xcb, 0x60, 0x61, 0x77, 0xd8, 0xdb, 0x4c]),
);

/// This shader-reflection interface provides access to a variable.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nn-d3d11shader-id3d11shaderreflectionvariable>.
///
/// {@category com}
class ID3D11ShaderReflectionVariable implements ComInterface {
  /// Creates a new instance of [ID3D11ShaderReflectionVariable] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [ID3D11ShaderReflectionVariable] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  ID3D11ShaderReflectionVariable(this.ptr)
    : assert(ptr != nullptr, "Pointer must not be 'nullptr'."),
      _vtable = ptr.value.cast<ID3D11ShaderReflectionVariableVtbl>().ref;

  final VTablePointer ptr;
  final ID3D11ShaderReflectionVariableVtbl _vtable;
  late final _GetDescFn =
      _vtable.GetDesc.asFunction<
        int Function(VTablePointer, Pointer<D3D11_SHADER_VARIABLE_DESC>)
      >();
  late final _GetTypeFn =
      _vtable.GetType.asFunction<VTablePointer Function(VTablePointer)>();
  late final _GetBufferFn =
      _vtable.GetBuffer.asFunction<VTablePointer Function(VTablePointer)>();
  late final _GetInterfaceSlotFn =
      _vtable.GetInterfaceSlot.asFunction<int Function(VTablePointer, int)>();

  /// Get a shader-variable description.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11shaderreflectionvariable-getdesc>.
  Pointer<D3D11_SHADER_VARIABLE_DESC> getDesc() {
    final pDesc = adaptiveCalloc<D3D11_SHADER_VARIABLE_DESC>();
    final hr$ = HRESULT(_GetDescFn(ptr, pDesc));
    if (hr$.isError) {
      free(pDesc);
      throw WindowsException(hr$);
    }
    return pDesc;
  }

  /// Get a shader-variable type.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11shaderreflectionvariable-gettype>.
  @pragma('vm:prefer-inline')
  ID3D11ShaderReflectionType? getType() {
    final result = _GetTypeFn(ptr);
    if (result.isNull) return null;
    return ID3D11ShaderReflectionType(result);
  }

  /// This method returns the buffer of the current
  /// ID3D11ShaderReflectionVariable.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11shaderreflectionvariable-getbuffer>.
  @pragma('vm:prefer-inline')
  ID3D11ShaderReflectionConstantBuffer? getBuffer() {
    final result = _GetBufferFn(ptr);
    if (result.isNull) return null;
    return ID3D11ShaderReflectionConstantBuffer(result);
  }

  /// Gets the corresponding interface slot for a variable that represents an
  /// interface pointer.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11shaderreflectionvariable-getinterfaceslot>.
  @pragma('vm:prefer-inline')
  int getInterfaceSlot(int uArrayIndex) =>
      _GetInterfaceSlotFn(ptr, uArrayIndex);

  @override
  String toString() => 'ID3D11ShaderReflectionVariable(ptr: $ptr)';
}

/// @nodoc
base class ID3D11ShaderReflectionVariableVtbl extends Struct {
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<D3D11_SHADER_VARIABLE_DESC> pDesc,
      )
    >
  >
  GetDesc;
  external Pointer<NativeFunction<VTablePointer Function(VTablePointer this$)>>
  GetType;
  external Pointer<NativeFunction<VTablePointer Function(VTablePointer this$)>>
  GetBuffer;
  external Pointer<
    NativeFunction<Uint32 Function(VTablePointer this$, Uint32 uArrayIndex)>
  >
  GetInterfaceSlot;
}

@internal
final class ID3D11ShaderReflectionVariableCompanion
    extends ComCompanion<ID3D11ShaderReflectionVariable> {
  const ID3D11ShaderReflectionVariableCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11ShaderReflectionVariable Function(VTablePointer) get fromPointer =>
      ID3D11ShaderReflectionVariable.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11ShaderReflectionVariable;
}
