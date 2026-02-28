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
final IID_ID3DBlob = GUID.fromComponents(
  0x8ba5fb08,
  0x5195,
  0x40e2,
  Uint8List.fromList(const [0xac, 0x58, 0xd, 0x98, 0x9c, 0x3a, 0x1, 0x2]),
);

/// {@category com}
class ID3DBlob extends IUnknown implements ComInterface {
  /// Creates a new instance of [ID3DBlob] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3DBlob] interface. The
  /// [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  ID3DBlob(super.ptr) : _vtable = ptr.value.cast<ID3DBlobVtbl>().ref;

  /// Creates a new instance of [ID3DBlob] from an existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3DBlob] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3DBlob.from(IUnknown interface) => interface.queryInterface();

  final ID3DBlobVtbl _vtable;
  late final _GetBufferPointerFn =
      _vtable.GetBufferPointer.asFunction<Pointer Function(VTablePointer)>();
  late final _GetBufferSizeFn =
      _vtable.GetBufferSize.asFunction<int Function(VTablePointer)>();

  @pragma('vm:prefer-inline')
  Pointer getBufferPointer() => _GetBufferPointerFn(ptr);

  @pragma('vm:prefer-inline')
  int getBufferSize() => _GetBufferSizeFn(ptr);

  @override
  String toString() => 'ID3DBlob(ptr: $ptr)';
}

/// @nodoc
base class ID3DBlobVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<NativeFunction<Pointer Function(VTablePointer this$)>>
  GetBufferPointer;
  external Pointer<NativeFunction<IntPtr Function(VTablePointer this$)>>
  GetBufferSize;
}

@internal
final class ID3DBlobCompanion extends ComCompanion<ID3DBlob> {
  const ID3DBlobCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3DBlob Function(VTablePointer) get fromPointer => ID3DBlob.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3DBlob;
}
