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
import 'iconnectionpointcontainer.g.dart';
import 'ienumconnections.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IConnectionPoint = Guid.fromComponents(
  0xb196b286,
  0xbab4,
  0x101a,
  Uint8List.fromList(const [0xb6, 0x9c, 0x0, 0xaa, 0x0, 0x34, 0x1d, 0x7]),
);

/// Supports connection points for connectable objects.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/ocidl/nn-ocidl-iconnectionpoint>.
///
/// {@category com}
class IConnectionPoint extends IUnknown implements ComInterface {
  /// Creates a new instance of [IConnectionPoint] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IConnectionPoint]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IConnectionPoint(super.ptr)
    : _vtable = ptr.value.cast<IConnectionPointVtbl>().ref;

  /// Creates a new instance of [IConnectionPoint] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IConnectionPoint] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IConnectionPoint.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IConnectionPointVtbl _vtable;
  late final _GetConnectionInterfaceFn =
      _vtable.GetConnectionInterface.asFunction<
        int Function(VTablePointer, Pointer<GUID>)
      >();
  late final _GetConnectionPointContainerFn =
      _vtable.GetConnectionPointContainer.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _AdviseFn =
      _vtable.Advise.asFunction<
        int Function(VTablePointer, VTablePointer, Pointer<Uint32>)
      >();
  late final _UnadviseFn =
      _vtable.Unadvise.asFunction<int Function(VTablePointer, int)>();
  late final _EnumConnectionsFn =
      _vtable.EnumConnections.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();

  /// Retrieves the IID of the outgoing interface managed by this connection
  /// point.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/ocidl/nf-ocidl-iconnectionpoint-getconnectioninterface>.
  Pointer<GUID> getConnectionInterface() {
    final pIID = loggingCalloc<GUID>();
    final hr$ = HRESULT(_GetConnectionInterfaceFn(ptr, pIID));
    if (hr$.isError) {
      free(pIID);
      throw WindowsException(hr$);
    }
    return pIID;
  }

  /// Retrieves the IConnectionPointContainer interface pointer for the parent
  /// connectable object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/ocidl/nf-ocidl-iconnectionpoint-getconnectionpointcontainer>.
  IConnectionPointContainer? getConnectionPointContainer() {
    final ppCPC = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetConnectionPointContainerFn(ptr, ppCPC));
    if (hr$.isError) {
      free(ppCPC);
      throw WindowsException(hr$);
    }
    final result$ = ppCPC.value;
    free(ppCPC);
    if (result$.isNull) return null;
    return IConnectionPointContainer(result$);
  }

  /// Establishes a connection between a connection point object and the
  /// client's sink.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/ocidl/nf-ocidl-iconnectionpoint-advise>.
  int advise(IUnknown? pUnkSink) {
    final pdwCookie = loggingCalloc<Uint32>();
    final hr$ = HRESULT(_AdviseFn(ptr, pUnkSink?.ptr ?? nullptr, pdwCookie));
    if (hr$.isError) {
      free(pdwCookie);
      throw WindowsException(hr$);
    }
    final result$ = pdwCookie.value;
    free(pdwCookie);
    return result$;
  }

  /// Terminates an advisory connection previously established between a
  /// connection point object and a client's sink.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/ocidl/nf-ocidl-iconnectionpoint-unadvise>.
  @pragma('vm:prefer-inline')
  void unadvise(int dwCookie) {
    final hr$ = HRESULT(_UnadviseFn(ptr, dwCookie));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Creates an enumerator object to iterate through the current connections
  /// for this connection point.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/ocidl/nf-ocidl-iconnectionpoint-enumconnections>.
  IEnumConnections? enumConnections() {
    final ppEnum = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_EnumConnectionsFn(ptr, ppEnum));
    if (hr$.isError) {
      free(ppEnum);
      throw WindowsException(hr$);
    }
    final result$ = ppEnum.value;
    free(ppEnum);
    if (result$.isNull) return null;
    return IEnumConnections(result$);
  }

  @override
  String toString() => 'IConnectionPoint(ptr: $ptr)';
}

/// @nodoc
base class IConnectionPointVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<GUID> pIID)>
  >
  GetConnectionInterface;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> ppCPC)
    >
  >
  GetConnectionPointContainer;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pUnkSink,
        Pointer<Uint32> pdwCookie,
      )
    >
  >
  Advise;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Uint32 dwCookie)>
  >
  Unadvise;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> ppEnum)
    >
  >
  EnumConnections;
}

@internal
final class IConnectionPointCompanion extends ComCompanion<IConnectionPoint> {
  const IConnectionPointCompanion();

  @pragma('vm:prefer-inline')
  @override
  IConnectionPoint Function(VTablePointer) get fromPointer =>
      IConnectionPoint.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IConnectionPoint;
}
