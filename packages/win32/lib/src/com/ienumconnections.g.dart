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
import 'ienumconnections.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IEnumConnections = Guid.fromComponents(
  0xb196b287,
  0xbab4,
  0x101a,
  Uint8List.fromList(const [0xb6, 0x9c, 0x0, 0xaa, 0x0, 0x34, 0x1d, 0x7]),
);

/// Enumerates the current connections for a connectable object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/ocidl/nn-ocidl-ienumconnections>.
///
/// {@category com}
class IEnumConnections extends IUnknown implements ComInterface {
  /// Creates a new instance of [IEnumConnections] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IEnumConnections]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IEnumConnections(super.ptr)
    : _vtable = ptr.value.cast<IEnumConnectionsVtbl>().ref;

  /// Creates a new instance of [IEnumConnections] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IEnumConnections] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IEnumConnections.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IEnumConnectionsVtbl _vtable;
  late final _NextFn =
      _vtable.Next.asFunction<
        int Function(VTablePointer, int, Pointer<CONNECTDATA>, Pointer<Uint32>)
      >();
  late final _SkipFn =
      _vtable.Skip.asFunction<int Function(VTablePointer, int)>();
  late final _ResetFn = _vtable.Reset.asFunction<int Function(VTablePointer)>();
  late final _CloneFn = _vtable
      .Clone.asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();

  /// Retrieves the specified number of items in the enumeration sequence.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/ocidl/nf-ocidl-ienumconnections-next>.
  @pragma('vm:prefer-inline')
  HRESULT next(
    int cConnections,
    Pointer<CONNECTDATA> rgcd,
    Pointer<Uint32> pcFetched,
  ) => HRESULT(_NextFn(ptr, cConnections, rgcd, pcFetched));

  /// Skips over the specified number of items in the enumeration sequence.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/ocidl/nf-ocidl-ienumconnections-skip>.
  @pragma('vm:prefer-inline')
  void skip(int cConnections) {
    final hr$ = HRESULT(_SkipFn(ptr, cConnections));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Resets the enumeration sequence to the beginning.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/ocidl/nf-ocidl-ienumconnections-reset>.
  @pragma('vm:prefer-inline')
  void reset() {
    final hr$ = HRESULT(_ResetFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Creates a new enumerator that contains the same enumeration state as the
  /// current one.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/ocidl/nf-ocidl-ienumconnections-clone>.
  IEnumConnections? clone() {
    final ppEnum = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_CloneFn(ptr, ppEnum));
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
  String toString() => 'IEnumConnections(ptr: $ptr)';
}

/// @nodoc
base class IEnumConnectionsVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 cConnections,
        Pointer<CONNECTDATA> rgcd,
        Pointer<Uint32> pcFetched,
      )
    >
  >
  Next;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Uint32 cConnections)>
  >
  Skip;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>> Reset;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> ppEnum)
    >
  >
  Clone;
}

@internal
final class IEnumConnectionsCompanion extends ComCompanion<IEnumConnections> {
  const IEnumConnectionsCompanion();

  @pragma('vm:prefer-inline')
  @override
  IEnumConnections Function(VTablePointer) get fromPointer =>
      IEnumConnections.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IEnumConnections;
}
