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
final IID_IDCompositionDeviceDebug = GUID.fromComponents(
  0xa1a3c64a,
  0x224f,
  0x4a81,
  Uint8List.fromList(const [0x97, 0x73, 0x4f, 0x3, 0xa8, 0x9d, 0x3c, 0x6c]),
);

/// Provides access to rendering features that help with application debugging
/// and performance tuning.
///
/// This interface can be queried from the DirectComposition device interface.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nn-dcomp-idcompositiondevicedebug>.
///
/// {@category com}
class IDCompositionDeviceDebug extends IUnknown implements ComInterface {
  /// Creates a new instance of [IDCompositionDeviceDebug] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IDCompositionDeviceDebug] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  IDCompositionDeviceDebug(super.ptr)
    : _vtable = ptr.value.cast<IDCompositionDeviceDebugVtbl>().ref;

  /// Creates a new instance of [IDCompositionDeviceDebug] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionDeviceDebug] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionDeviceDebug.from(IUnknown interface) =>
      interface.queryInterface();

  final IDCompositionDeviceDebugVtbl _vtable;
  late final _EnableDebugCountersFn =
      _vtable.EnableDebugCounters.asFunction<int Function(VTablePointer)>();
  late final _DisableDebugCountersFn =
      _vtable.DisableDebugCounters.asFunction<int Function(VTablePointer)>();

  /// Enables display of performance debugging counters.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiondevicedebug-enabledebugcounters>.
  @pragma('vm:prefer-inline')
  void enableDebugCounters() {
    final hr$ = HRESULT(_EnableDebugCountersFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Disables display of performance debugging counters.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiondevicedebug-disabledebugcounters>.
  @pragma('vm:prefer-inline')
  void disableDebugCounters() {
    final hr$ = HRESULT(_DisableDebugCountersFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IDCompositionDeviceDebug(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionDeviceDebugVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  EnableDebugCounters;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  DisableDebugCounters;
}

@internal
final class IDCompositionDeviceDebugCompanion
    extends ComCompanion<IDCompositionDeviceDebug> {
  const IDCompositionDeviceDebugCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionDeviceDebug Function(VTablePointer) get fromPointer =>
      IDCompositionDeviceDebug.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionDeviceDebug;
}
