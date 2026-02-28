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
import 'id3d11classlinkage.g.dart';
import 'id3d11devicechild.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11ClassInstance = GUID.fromComponents(
  0xa6cd7faa,
  0xb0b7,
  0x4a2f,
  Uint8List.fromList(const [0x94, 0x36, 0x86, 0x62, 0xa6, 0x57, 0x97, 0xcb]),
);

/// This interface encapsulates an HLSL class.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11/nn-d3d11-id3d11classinstance>.
///
/// {@category com}
class ID3D11ClassInstance extends ID3D11DeviceChild implements ComInterface {
  /// Creates a new instance of [ID3D11ClassInstance] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11ClassInstance]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ID3D11ClassInstance(super.ptr)
    : _vtable = ptr.value.cast<ID3D11ClassInstanceVtbl>().ref;

  /// Creates a new instance of [ID3D11ClassInstance] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11ClassInstance] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11ClassInstance.from(IUnknown interface) =>
      interface.queryInterface();

  final ID3D11ClassInstanceVtbl _vtable;
  late final _GetClassLinkageFn =
      _vtable.GetClassLinkage.asFunction<
        void Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetDescFn =
      _vtable.GetDesc.asFunction<
        void Function(VTablePointer, Pointer<D3D11_CLASS_INSTANCE_DESC>)
      >();
  late final _GetInstanceNameFn =
      _vtable.GetInstanceName.asFunction<
        void Function(VTablePointer, Pointer<Utf8>, Pointer<IntPtr>)
      >();
  late final _GetTypeNameFn =
      _vtable.GetTypeName.asFunction<
        void Function(VTablePointer, Pointer<Utf8>, Pointer<IntPtr>)
      >();

  /// Gets the ID3D11ClassLinkage object associated with the current HLSL class.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11classinstance-getclasslinkage>.
  @pragma('vm:prefer-inline')
  void getClassLinkage(Pointer<VTablePointer> ppLinkage) =>
      _GetClassLinkageFn(ptr, ppLinkage);

  /// Gets a description of the current HLSL class.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11classinstance-getdesc>.
  @pragma('vm:prefer-inline')
  void getDesc(Pointer<D3D11_CLASS_INSTANCE_DESC> pDesc) =>
      _GetDescFn(ptr, pDesc);

  /// Gets the instance name of the current HLSL class.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11classinstance-getinstancename>.
  @pragma('vm:prefer-inline')
  void getInstanceName(PSTR? pInstanceName, Pointer<IntPtr> pBufferLength) =>
      _GetInstanceNameFn(ptr, pInstanceName ?? nullptr, pBufferLength);

  /// Gets the type of the current HLSL class.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11classinstance-gettypename>.
  @pragma('vm:prefer-inline')
  void getTypeName(PSTR? pTypeName, Pointer<IntPtr> pBufferLength) =>
      _GetTypeNameFn(ptr, pTypeName ?? nullptr, pBufferLength);

  @override
  String toString() => 'ID3D11ClassInstance(ptr: $ptr)';
}

/// @nodoc
base class ID3D11ClassInstanceVtbl extends Struct {
  external ID3D11DeviceChildVtbl base$;
  external Pointer<
    NativeFunction<
      Void Function(VTablePointer this$, Pointer<VTablePointer> ppLinkage)
    >
  >
  GetClassLinkage;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Pointer<D3D11_CLASS_INSTANCE_DESC> pDesc,
      )
    >
  >
  GetDesc;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Pointer<Utf8> pInstanceName,
        Pointer<IntPtr> pBufferLength,
      )
    >
  >
  GetInstanceName;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Pointer<Utf8> pTypeName,
        Pointer<IntPtr> pBufferLength,
      )
    >
  >
  GetTypeName;
}

@internal
final class ID3D11ClassInstanceCompanion
    extends ComCompanion<ID3D11ClassInstance> {
  const ID3D11ClassInstanceCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11ClassInstance Function(VTablePointer) get fromPointer =>
      ID3D11ClassInstance.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11ClassInstance;
}
