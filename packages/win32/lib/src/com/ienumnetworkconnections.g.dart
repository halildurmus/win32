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
import 'idispatch.g.dart';
import 'ienumnetworkconnections.g.dart';
import 'ienumvariant.g.dart';
import 'inetworkconnection.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IEnumNetworkConnections = Guid.fromComponents(
  0xdcb00006,
  0x570f,
  0x4a9b,
  Uint8List.fromList(const [0x8d, 0x69, 0x19, 0x9f, 0xdb, 0xa5, 0x72, 0x3b]),
);

/// Provides a standard enumerator for network connections.
///
/// It enumerates active, disconnected, or all network connections within a
/// network. This interface can be obtained from the INetwork interface.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nn-netlistmgr-ienumnetworkconnections>.
///
/// {@category com}
class IEnumNetworkConnections extends IDispatch implements ComInterface {
  /// Creates a new instance of [IEnumNetworkConnections] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IEnumNetworkConnections]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IEnumNetworkConnections(super.ptr)
    : _vtable = ptr.value.cast<IEnumNetworkConnectionsVtbl>().ref;

  /// Creates a new instance of [IEnumNetworkConnections] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IEnumNetworkConnections] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IEnumNetworkConnections.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IEnumNetworkConnectionsVtbl _vtable;
  late final _get__NewEnumFn = _vtable.get__NewEnum
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _NextFn =
      _vtable.Next.asFunction<
        int Function(
          VTablePointer,
          int,
          Pointer<VTablePointer>,
          Pointer<Uint32>,
        )
      >();
  late final _SkipFn =
      _vtable.Skip.asFunction<int Function(VTablePointer, int)>();
  late final _ResetFn = _vtable.Reset.asFunction<int Function(VTablePointer)>();
  late final _CloneFn = _vtable
      .Clone.asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();

  /// Returns an automation enumerator object that you can use to iterate
  /// through the IEnumNetworkConnections collection.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nf-netlistmgr-ienumnetworkconnections-get__newenum>.
  IEnumVARIANT? get newEnum {
    final ppEnumVar = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_get__NewEnumFn(ptr, ppEnumVar));
    if (hr$.isError) {
      free(ppEnumVar);
      throw WindowsException(hr$);
    }
    final result$ = ppEnumVar.value;
    free(ppEnumVar);
    if (result$.isNull) return null;
    return IEnumVARIANT(result$);
  }

  /// Gets the next specified number of elements in the enumeration sequence.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nf-netlistmgr-ienumnetworkconnections-next>.
  @pragma('vm:prefer-inline')
  void next(
    int celt,
    Pointer<VTablePointer> rgelt,
    Pointer<Uint32>? pceltFetched,
  ) {
    final hr$ = HRESULT(_NextFn(ptr, celt, rgelt, pceltFetched ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Skips over the next specified number of elements in the enumeration
  /// sequence.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nf-netlistmgr-ienumnetworkconnections-skip>.
  @pragma('vm:prefer-inline')
  void skip(int celt) {
    final hr$ = HRESULT(_SkipFn(ptr, celt));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Resets the enumeration sequence to the beginning.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nf-netlistmgr-ienumnetworkconnections-reset>.
  @pragma('vm:prefer-inline')
  void reset() {
    final hr$ = HRESULT(_ResetFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Creates an enumerator that contains the same enumeration state as the
  /// enumerator currently in use.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nf-netlistmgr-ienumnetworkconnections-clone>.
  IEnumNetworkConnections? clone() {
    final ppEnumNetwork = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_CloneFn(ptr, ppEnumNetwork));
    if (hr$.isError) {
      free(ppEnumNetwork);
      throw WindowsException(hr$);
    }
    final result$ = ppEnumNetwork.value;
    free(ppEnumNetwork);
    if (result$.isNull) return null;
    return IEnumNetworkConnections(result$);
  }

  @override
  String toString() => 'IEnumNetworkConnections(ptr: $ptr)';
}

/// @nodoc
base class IEnumNetworkConnectionsVtbl extends Struct {
  external IDispatchVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> ppEnumVar)
    >
  >
  get__NewEnum;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 celt,
        Pointer<VTablePointer> rgelt,
        Pointer<Uint32> pceltFetched,
      )
    >
  >
  Next;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Uint32 celt)>
  >
  Skip;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>> Reset;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> ppEnumNetwork)
    >
  >
  Clone;
}

@internal
final class IEnumNetworkConnectionsCompanion
    extends ComCompanion<IEnumNetworkConnections> {
  const IEnumNetworkConnectionsCompanion();

  @pragma('vm:prefer-inline')
  @override
  IEnumNetworkConnections Function(VTablePointer) get fromPointer =>
      IEnumNetworkConnections.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IEnumNetworkConnections;
}
