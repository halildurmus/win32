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
import 'id3d11device3.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11Device4 = GUID.fromComponents(
  0x8992ab71,
  0x2e6,
  0x4b8d,
  Uint8List.fromList(const [0xba, 0x48, 0xb0, 0x56, 0xdc, 0xda, 0x42, 0xc4]),
);

/// Represents a virtual adapter; it is used to create resources.
///
/// ID3D11Device4 adds new methods to those in ID3D11Device3, such as
/// RegisterDeviceRemovedEvent and UnregisterDeviceRemoved.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11_4/nn-d3d11_4-id3d11device4>.
///
/// {@category com}
class ID3D11Device4 extends ID3D11Device3 implements ComInterface {
  /// Creates a new instance of [ID3D11Device4] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11Device4]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ID3D11Device4(super.ptr) : _vtable = ptr.value.cast<ID3D11Device4Vtbl>().ref;

  /// Creates a new instance of [ID3D11Device4] from an existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11Device4] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11Device4.from(IUnknown interface) => interface.queryInterface();

  final ID3D11Device4Vtbl _vtable;
  late final _RegisterDeviceRemovedEventFn =
      _vtable.RegisterDeviceRemovedEvent.asFunction<
        int Function(VTablePointer, Pointer, Pointer<Uint32>)
      >();
  late final _UnregisterDeviceRemovedFn = _vtable
      .UnregisterDeviceRemoved.asFunction<void Function(VTablePointer, int)>();

  /// Registers the &quot;device removed&quot; event and indicates when a
  /// Direct3D device has become removed for any reason, using an asynchronous
  /// notification mechanism.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_4/nf-d3d11_4-id3d11device4-registerdeviceremovedevent>.
  int registerDeviceRemovedEvent(HANDLE hEvent) {
    final pdwCookie = adaptiveCalloc<Uint32>();
    final hr$ = HRESULT(_RegisterDeviceRemovedEventFn(ptr, hEvent, pdwCookie));
    if (hr$.isError) {
      free(pdwCookie);
      throw WindowsException(hr$);
    }
    final result$ = pdwCookie.value;
    free(pdwCookie);
    return result$;
  }

  /// Unregisters the &quot;device removed&quot; event.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_4/nf-d3d11_4-id3d11device4-unregisterdeviceremoved>.
  @pragma('vm:prefer-inline')
  void unregisterDeviceRemoved(int dwCookie) =>
      _UnregisterDeviceRemovedFn(ptr, dwCookie);

  @override
  String toString() => 'ID3D11Device4(ptr: $ptr)';
}

/// @nodoc
base class ID3D11Device4Vtbl extends Struct {
  external ID3D11Device3Vtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer hEvent,
        Pointer<Uint32> pdwCookie,
      )
    >
  >
  RegisterDeviceRemovedEvent;
  external Pointer<
    NativeFunction<Void Function(VTablePointer this$, Uint32 dwCookie)>
  >
  UnregisterDeviceRemoved;
}

@internal
final class ID3D11Device4Companion extends ComCompanion<ID3D11Device4> {
  const ID3D11Device4Companion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11Device4 Function(VTablePointer) get fromPointer => ID3D11Device4.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11Device4;
}
