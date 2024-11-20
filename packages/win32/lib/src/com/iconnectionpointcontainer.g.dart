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
import 'iconnectionpoint.g.dart';
import 'ienumconnectionpoints.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IConnectionPointContainer = Guid.fromComponents(
  0xb196b284,
  0xbab4,
  0x101a,
  Uint8List.fromList(const [0xb6, 0x9c, 0x0, 0xaa, 0x0, 0x34, 0x1d, 0x7]),
);

/// Supports connection points for connectable objects.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/ocidl/nn-ocidl-iconnectionpointcontainer>.
///
/// {@category com}
class IConnectionPointContainer extends IUnknown implements ComInterface {
  /// Creates a new instance of [IConnectionPointContainer] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IConnectionPointContainer] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IConnectionPointContainer(super.ptr)
    : _vtable = ptr.value.cast<IConnectionPointContainerVtbl>().ref;

  /// Creates a new instance of [IConnectionPointContainer] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IConnectionPointContainer] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IConnectionPointContainer.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IConnectionPointContainerVtbl _vtable;
  late final _EnumConnectionPointsFn =
      _vtable.EnumConnectionPoints.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _FindConnectionPointFn =
      _vtable.FindConnectionPoint.asFunction<
        int Function(VTablePointer, Pointer<GUID>, Pointer<VTablePointer>)
      >();

  /// Creates an enumerator object to iterate through all the connection points
  /// supported in the connectable object, one connection point per outgoing
  /// IID.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/ocidl/nf-ocidl-iconnectionpointcontainer-enumconnectionpoints>.
  IEnumConnectionPoints? enumConnectionPoints() {
    final ppEnum = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_EnumConnectionPointsFn(ptr, ppEnum));
    if (hr$.isError) {
      free(ppEnum);
      throw WindowsException(hr$);
    }
    final result$ = ppEnum.value;
    free(ppEnum);
    if (result$.isNull) return null;
    return IEnumConnectionPoints(result$);
  }

  /// Returns a pointer to the IConnectionPoint interface of a connection point
  /// for a specified IID, if that IID describes a supported outgoing interface.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/ocidl/nf-ocidl-iconnectionpointcontainer-findconnectionpoint>.
  IConnectionPoint? findConnectionPoint(Pointer<GUID> riid) {
    final ppCP = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_FindConnectionPointFn(ptr, riid, ppCP));
    if (hr$.isError) {
      free(ppCP);
      throw WindowsException(hr$);
    }
    final result$ = ppCP.value;
    free(ppCP);
    if (result$.isNull) return null;
    return IConnectionPoint(result$);
  }

  @override
  String toString() => 'IConnectionPointContainer(ptr: $ptr)';
}

/// @nodoc
base class IConnectionPointContainerVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> ppEnum)
    >
  >
  EnumConnectionPoints;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<GUID> riid,
        Pointer<VTablePointer> ppCP,
      )
    >
  >
  FindConnectionPoint;
}

@internal
final class IConnectionPointContainerCompanion
    extends ComCompanion<IConnectionPointContainer> {
  const IConnectionPointContainerCompanion();

  @pragma('vm:prefer-inline')
  @override
  IConnectionPointContainer Function(VTablePointer) get fromPointer =>
      IConnectionPointContainer.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IConnectionPointContainer;
}
