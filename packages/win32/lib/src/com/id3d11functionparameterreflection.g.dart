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
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11FunctionParameterReflection = GUID.fromComponents(
  0x42757488,
  0x334f,
  0x47fe,
  Uint8List.fromList(const [0x98, 0x2e, 0x1a, 0x65, 0xd0, 0x8c, 0xc4, 0x62]),
);

/// A function-parameter-reflection interface accesses function-parameter info.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nn-d3d11shader-id3d11functionparameterreflection>.
///
/// {@category com}
class ID3D11FunctionParameterReflection implements ComInterface {
  /// Creates a new instance of [ID3D11FunctionParameterReflection] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [ID3D11FunctionParameterReflection] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  ID3D11FunctionParameterReflection(this.ptr)
    : assert(ptr != nullptr, "Pointer must not be 'nullptr'."),
      _vtable = ptr.value.cast<ID3D11FunctionParameterReflectionVtbl>().ref;

  final VTablePointer ptr;
  final ID3D11FunctionParameterReflectionVtbl _vtable;
  late final _GetDescFn =
      _vtable.GetDesc.asFunction<
        int Function(VTablePointer, Pointer<D3D11_PARAMETER_DESC>)
      >();

  /// Fills the parameter descriptor structure for the function's parameter.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11functionparameterreflection-getdesc>.
  Pointer<D3D11_PARAMETER_DESC> getDesc() {
    final pDesc = adaptiveCalloc<D3D11_PARAMETER_DESC>();
    final hr$ = HRESULT(_GetDescFn(ptr, pDesc));
    if (hr$.isError) {
      free(pDesc);
      throw WindowsException(hr$);
    }
    return pDesc;
  }

  @override
  String toString() => 'ID3D11FunctionParameterReflection(ptr: $ptr)';
}

/// @nodoc
base class ID3D11FunctionParameterReflectionVtbl extends Struct {
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<D3D11_PARAMETER_DESC> pDesc)
    >
  >
  GetDesc;
}

@internal
final class ID3D11FunctionParameterReflectionCompanion
    extends ComCompanion<ID3D11FunctionParameterReflection> {
  const ID3D11FunctionParameterReflectionCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11FunctionParameterReflection Function(VTablePointer) get fromPointer =>
      ID3D11FunctionParameterReflection.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11FunctionParameterReflection;
}
