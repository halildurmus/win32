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
import '../enums.g.dart';
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
final IID_INetworkListManagerEvents = GUID.fromComponents(
  0xdcb00001,
  0x570f,
  0x4a9b,
  Uint8List.fromList(const [0x8d, 0x69, 0x19, 0x9f, 0xdb, 0xa5, 0x72, 0x3b]),
);

/// INetworkListManagerEvents is a message sink interface that a client
/// implements to get overall machine state related events.
///
/// Applications that are interested on higher-level events, for example
/// internet connectivity, implement this interface.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nn-netlistmgr-inetworklistmanagerevents>.
///
/// {@category com}
class INetworkListManagerEvents extends IUnknown implements ComInterface {
  /// Creates a new instance of [INetworkListManagerEvents] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [INetworkListManagerEvents] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  INetworkListManagerEvents(super.ptr)
    : _vtable = ptr.value.cast<INetworkListManagerEventsVtbl>().ref;

  /// Creates a new instance of [INetworkListManagerEvents] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [INetworkListManagerEvents] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory INetworkListManagerEvents.from(IUnknown interface) =>
      interface.queryInterface();

  final INetworkListManagerEventsVtbl _vtable;
  late final _ConnectivityChangedFn = _vtable
      .ConnectivityChanged.asFunction<int Function(VTablePointer, int)>();

  /// Called when network connectivity related changes occur.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nf-netlistmgr-inetworklistmanagerevents-connectivitychanged>.
  @pragma('vm:prefer-inline')
  void connectivityChanged(NLM_CONNECTIVITY newConnectivity) {
    final hr$ = HRESULT(_ConnectivityChangedFn(ptr, newConnectivity));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'INetworkListManagerEvents(ptr: $ptr)';
}

/// @nodoc
base class INetworkListManagerEventsVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 newConnectivity)>
  >
  ConnectivityChanged;
}

@internal
final class INetworkListManagerEventsCompanion
    extends ComCompanion<INetworkListManagerEvents> {
  const INetworkListManagerEventsCompanion();

  @pragma('vm:prefer-inline')
  @override
  INetworkListManagerEvents Function(VTablePointer) get fromPointer =>
      INetworkListManagerEvents.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_INetworkListManagerEvents;
}
