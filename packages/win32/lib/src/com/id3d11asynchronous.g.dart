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
import 'id3d11devicechild.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11Asynchronous = GUID.fromComponents(
  0x4b35d0cd,
  0x1e15,
  0x4258,
  Uint8List.fromList(const [0x9c, 0x98, 0x1b, 0x13, 0x33, 0xf6, 0xdd, 0x3b]),
);

/// This interface encapsulates methods for retrieving data from the GPU
/// asynchronously.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11/nn-d3d11-id3d11asynchronous>.
///
/// {@category com}
class ID3D11Asynchronous extends ID3D11DeviceChild implements ComInterface {
  /// Creates a new instance of [ID3D11Asynchronous] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11Asynchronous]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ID3D11Asynchronous(super.ptr)
    : _vtable = ptr.value.cast<ID3D11AsynchronousVtbl>().ref;

  /// Creates a new instance of [ID3D11Asynchronous] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11Asynchronous] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11Asynchronous.from(IUnknown interface) =>
      interface.queryInterface();

  final ID3D11AsynchronousVtbl _vtable;
  late final _GetDataSizeFn =
      _vtable.GetDataSize.asFunction<int Function(VTablePointer)>();

  /// Get the size of the data (in bytes) that is output when calling
  /// `ID3D11DeviceContext.getData`.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11asynchronous-getdatasize>.
  @pragma('vm:prefer-inline')
  int getDataSize() => _GetDataSizeFn(ptr);

  @override
  String toString() => 'ID3D11Asynchronous(ptr: $ptr)';
}

/// @nodoc
base class ID3D11AsynchronousVtbl extends Struct {
  external ID3D11DeviceChildVtbl base$;
  external Pointer<NativeFunction<Uint32 Function(VTablePointer this$)>>
  GetDataSize;
}

@internal
final class ID3D11AsynchronousCompanion
    extends ComCompanion<ID3D11Asynchronous> {
  const ID3D11AsynchronousCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11Asynchronous Function(VTablePointer) get fromPointer =>
      ID3D11Asynchronous.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11Asynchronous;
}
