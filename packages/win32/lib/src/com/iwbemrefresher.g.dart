// Dart representation of a COM interface.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';

import '../allocator.dart';
import '../bstr.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../exception.dart';
import '../extensions/iunknown.dart';
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
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IWbemRefresher = Guid.fromComponents(
  0x49353c99,
  0x516b,
  0x11d1,
  Uint8List.fromList(const [0xae, 0xa6, 0x0, 0xc0, 0x4f, 0xb6, 0x88, 0x20]),
);

/// Provides an entry point through which refreshable objects such as
/// enumerators or refresher objects, can be refreshed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wbemcli/nn-wbemcli-iwbemrefresher>.
///
/// {@category com}
class IWbemRefresher extends IUnknown implements ComInterface {
  /// Creates a new instance of [IWbemRefresher] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IWbemRefresher]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IWbemRefresher(super.ptr)
    : _vtable = ptr.value.cast<IWbemRefresherVtbl>().ref;

  /// Creates a new instance of [IWbemRefresher] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IWbemRefresher] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IWbemRefresher.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IWbemRefresherVtbl _vtable;
  late final _RefreshFn =
      _vtable.Refresh.asFunction<int Function(VTablePointer, int)>();

  /// Updates all refreshable objects, enumerators, and nested refreshers.
  ///
  /// The WMI Refresher calls this function in response to a client request to
  /// Refresh.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemrefresher-refresh>.
  @pragma('vm:prefer-inline')
  void refresh(int lFlags) {
    final hr$ = HRESULT(_RefreshFn(ptr, lFlags));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IWbemRefresher(ptr: $ptr)';
}

/// @nodoc
base class IWbemRefresherVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 lFlags)>
  >
  Refresh;
}

@internal
final class IWbemRefresherCompanion extends ComCompanion<IWbemRefresher> {
  const IWbemRefresherCompanion();

  @pragma('vm:prefer-inline')
  @override
  IWbemRefresher Function(VTablePointer) get fromPointer => IWbemRefresher.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IWbemRefresher;
}
