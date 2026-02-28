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
import 'id3d11shaderreflectiontype.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11ShaderReflectionType = GUID.fromComponents(
  0x6e6ffa6a,
  0x9bae,
  0x4613,
  Uint8List.fromList(const [0xa5, 0x1e, 0x91, 0x65, 0x2d, 0x50, 0x8c, 0x21]),
);

/// This shader-reflection interface provides access to variable type.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nn-d3d11shader-id3d11shaderreflectiontype>.
///
/// {@category com}
class ID3D11ShaderReflectionType implements ComInterface {
  /// Creates a new instance of [ID3D11ShaderReflectionType] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [ID3D11ShaderReflectionType] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  ID3D11ShaderReflectionType(this.ptr)
    : assert(ptr != nullptr, "Pointer must not be 'nullptr'."),
      _vtable = ptr.value.cast<ID3D11ShaderReflectionTypeVtbl>().ref;

  final VTablePointer ptr;
  final ID3D11ShaderReflectionTypeVtbl _vtable;
  late final _GetDescFn =
      _vtable.GetDesc.asFunction<
        int Function(VTablePointer, Pointer<D3D11_SHADER_TYPE_DESC>)
      >();
  late final _GetMemberTypeByIndexFn =
      _vtable.GetMemberTypeByIndex.asFunction<
        VTablePointer Function(VTablePointer, int)
      >();
  late final _GetMemberTypeByNameFn =
      _vtable.GetMemberTypeByName.asFunction<
        VTablePointer Function(VTablePointer, Pointer<Utf8>)
      >();
  late final _GetMemberTypeNameFn =
      _vtable.GetMemberTypeName.asFunction<
        Pointer<Utf8> Function(VTablePointer, int)
      >();
  late final _IsEqualFn =
      _vtable.IsEqual.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _GetSubTypeFn =
      _vtable.GetSubType.asFunction<VTablePointer Function(VTablePointer)>();
  late final _GetBaseClassFn =
      _vtable.GetBaseClass.asFunction<VTablePointer Function(VTablePointer)>();
  late final _GetNumInterfacesFn =
      _vtable.GetNumInterfaces.asFunction<int Function(VTablePointer)>();
  late final _GetInterfaceByIndexFn =
      _vtable.GetInterfaceByIndex.asFunction<
        VTablePointer Function(VTablePointer, int)
      >();
  late final _IsOfTypeFn =
      _vtable.IsOfType.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _ImplementsInterfaceFn =
      _vtable.ImplementsInterface.asFunction<
        int Function(VTablePointer, VTablePointer)
      >();

  /// Get the description of a shader-reflection-variable type.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11shaderreflectiontype-getdesc>.
  Pointer<D3D11_SHADER_TYPE_DESC> getDesc() {
    final pDesc = adaptiveCalloc<D3D11_SHADER_TYPE_DESC>();
    final hr$ = HRESULT(_GetDescFn(ptr, pDesc));
    if (hr$.isError) {
      free(pDesc);
      throw WindowsException(hr$);
    }
    return pDesc;
  }

  /// Gets a shader-reflection-variable type by index.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11shaderreflectiontype-getmembertypebyindex>.
  @pragma('vm:prefer-inline')
  ID3D11ShaderReflectionType? getMemberTypeByIndex(int index) {
    final result = _GetMemberTypeByIndexFn(ptr, index);
    if (result.isNull) return null;
    return ID3D11ShaderReflectionType(result);
  }

  /// Get a shader-reflection-variable type by name.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11shaderreflectiontype-getmembertypebyname>.
  @pragma('vm:prefer-inline')
  ID3D11ShaderReflectionType? getMemberTypeByName(PCSTR name) {
    final result = _GetMemberTypeByNameFn(ptr, name);
    if (result.isNull) return null;
    return ID3D11ShaderReflectionType(result);
  }

  /// Get a shader-reflection-variable type.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11shaderreflectiontype-getmembertypename>.
  @pragma('vm:prefer-inline')
  PCSTR getMemberTypeName(int index) => PCSTR(_GetMemberTypeNameFn(ptr, index));

  /// Indicates whether two ID3D11ShaderReflectionType Interface pointers have
  /// the same underlying type.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11shaderreflectiontype-isequal>.
  @pragma('vm:prefer-inline')
  void isEqual(ID3D11ShaderReflectionType? pType) {
    final hr$ = HRESULT(_IsEqualFn(ptr, pType?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the base class of a class.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11shaderreflectiontype-getsubtype>.
  @pragma('vm:prefer-inline')
  ID3D11ShaderReflectionType? getSubType() {
    final result = _GetSubTypeFn(ptr);
    if (result.isNull) return null;
    return ID3D11ShaderReflectionType(result);
  }

  /// Gets an ID3D11ShaderReflectionType Interface interface containing the
  /// variable base class type.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11shaderreflectiontype-getbaseclass>.
  @pragma('vm:prefer-inline')
  ID3D11ShaderReflectionType? getBaseClass() {
    final result = _GetBaseClassFn(ptr);
    if (result.isNull) return null;
    return ID3D11ShaderReflectionType(result);
  }

  /// Gets the number of interfaces.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11shaderreflectiontype-getnuminterfaces>.
  @pragma('vm:prefer-inline')
  int getNumInterfaces() => _GetNumInterfacesFn(ptr);

  /// Get an interface by index.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11shaderreflectiontype-getinterfacebyindex>.
  @pragma('vm:prefer-inline')
  ID3D11ShaderReflectionType? getInterfaceByIndex(int uIndex) {
    final result = _GetInterfaceByIndexFn(ptr, uIndex);
    if (result.isNull) return null;
    return ID3D11ShaderReflectionType(result);
  }

  /// Indicates whether a variable is of the specified type.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11shaderreflectiontype-isoftype>.
  @pragma('vm:prefer-inline')
  void isOfType(ID3D11ShaderReflectionType? pType) {
    final hr$ = HRESULT(_IsOfTypeFn(ptr, pType?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Indicates whether a class type implements an interface.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11shaderreflectiontype-implementsinterface>.
  @pragma('vm:prefer-inline')
  void implementsInterface(ID3D11ShaderReflectionType? pBase) {
    final hr$ = HRESULT(_ImplementsInterfaceFn(ptr, pBase?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'ID3D11ShaderReflectionType(ptr: $ptr)';
}

/// @nodoc
base class ID3D11ShaderReflectionTypeVtbl extends Struct {
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<D3D11_SHADER_TYPE_DESC> pDesc)
    >
  >
  GetDesc;
  external Pointer<
    NativeFunction<VTablePointer Function(VTablePointer this$, Uint32 index)>
  >
  GetMemberTypeByIndex;
  external Pointer<
    NativeFunction<
      VTablePointer Function(VTablePointer this$, Pointer<Utf8> name)
    >
  >
  GetMemberTypeByName;
  external Pointer<
    NativeFunction<Pointer<Utf8> Function(VTablePointer this$, Uint32 index)>
  >
  GetMemberTypeName;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer pType)>
  >
  IsEqual;
  external Pointer<NativeFunction<VTablePointer Function(VTablePointer this$)>>
  GetSubType;
  external Pointer<NativeFunction<VTablePointer Function(VTablePointer this$)>>
  GetBaseClass;
  external Pointer<NativeFunction<Uint32 Function(VTablePointer this$)>>
  GetNumInterfaces;
  external Pointer<
    NativeFunction<VTablePointer Function(VTablePointer this$, Uint32 uIndex)>
  >
  GetInterfaceByIndex;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer pType)>
  >
  IsOfType;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer pBase)>
  >
  ImplementsInterface;
}

@internal
final class ID3D11ShaderReflectionTypeCompanion
    extends ComCompanion<ID3D11ShaderReflectionType> {
  const ID3D11ShaderReflectionTypeCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11ShaderReflectionType Function(VTablePointer) get fromPointer =>
      ID3D11ShaderReflectionType.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11ShaderReflectionType;
}
