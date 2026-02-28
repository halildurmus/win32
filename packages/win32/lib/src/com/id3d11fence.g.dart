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
final IID_ID3D11Fence = GUID.fromComponents(
  0xaffde9d1,
  0x1df7,
  0x4bb7,
  Uint8List.fromList(const [0x8a, 0x34, 0xf, 0x46, 0x25, 0x1d, 0xab, 0x80]),
);

/// Represents a fence, an object used for synchronization of the CPU and one or
/// more GPUs.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11_3/nn-d3d11_3-id3d11fence>.
///
/// {@category com}
class ID3D11Fence extends ID3D11DeviceChild implements ComInterface {
  /// Creates a new instance of [ID3D11Fence] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11Fence] interface.
  /// The [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  ID3D11Fence(super.ptr) : _vtable = ptr.value.cast<ID3D11FenceVtbl>().ref;

  /// Creates a new instance of [ID3D11Fence] from an existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11Fence] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11Fence.from(IUnknown interface) => interface.queryInterface();

  final ID3D11FenceVtbl _vtable;
  late final _CreateSharedHandleFn =
      _vtable.CreateSharedHandle.asFunction<
        int Function(
          VTablePointer,
          Pointer<SECURITY_ATTRIBUTES>,
          int,
          Pointer<Utf16>,
          Pointer<Pointer>,
        )
      >();
  late final _GetCompletedValueFn =
      _vtable.GetCompletedValue.asFunction<int Function(VTablePointer)>();
  late final _SetEventOnCompletionFn =
      _vtable.SetEventOnCompletion.asFunction<
        int Function(VTablePointer, int, Pointer)
      >();

  /// Creates a shared handle to a fence object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_3/nf-d3d11_3-id3d11fence-createsharedhandle>.
  HANDLE createSharedHandle(
    Pointer<SECURITY_ATTRIBUTES>? pAttributes,
    int dwAccess,
    PCWSTR? lpName,
  ) {
    final pHandle = adaptiveCalloc<Pointer>();
    final hr$ = HRESULT(
      _CreateSharedHandleFn(
        ptr,
        pAttributes ?? nullptr,
        dwAccess,
        lpName ?? nullptr,
        pHandle,
      ),
    );
    if (hr$.isError) {
      free(pHandle);
      throw WindowsException(hr$);
    }
    final result$ = pHandle.value;
    free(pHandle);
    return HANDLE(result$);
  }

  /// Gets the current value of the fence.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_3/nf-d3d11_3-id3d11fence-getcompletedvalue>.
  @pragma('vm:prefer-inline')
  int getCompletedValue() => _GetCompletedValueFn(ptr);

  /// Specifies an event that should be fired when the fence reaches a certain
  /// value.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_3/nf-d3d11_3-id3d11fence-seteventoncompletion>.
  @pragma('vm:prefer-inline')
  void setEventOnCompletion(int value, HANDLE hEvent) {
    final hr$ = HRESULT(_SetEventOnCompletionFn(ptr, value, hEvent));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'ID3D11Fence(ptr: $ptr)';
}

/// @nodoc
base class ID3D11FenceVtbl extends Struct {
  external ID3D11DeviceChildVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<SECURITY_ATTRIBUTES> pAttributes,
        Uint32 dwAccess,
        Pointer<Utf16> lpName,
        Pointer<Pointer> pHandle,
      )
    >
  >
  CreateSharedHandle;
  external Pointer<NativeFunction<Uint64 Function(VTablePointer this$)>>
  GetCompletedValue;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Uint64 value, Pointer hEvent)
    >
  >
  SetEventOnCompletion;
}

@internal
final class ID3D11FenceCompanion extends ComCompanion<ID3D11Fence> {
  const ID3D11FenceCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11Fence Function(VTablePointer) get fromPointer => ID3D11Fence.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11Fence;
}
