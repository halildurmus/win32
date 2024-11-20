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
import 'ienumidlist.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IEnumIDList = Guid.fromComponents(
  0x214f2,
  0x0,
  0x0,
  Uint8List.fromList(const [0xc0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x46]),
);

/// Exposes a standard set of methods used to enumerate the pointers to item
/// identifier lists (PIDLs) of the items in a Shell folder.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-ienumidlist>.
///
/// {@category com}
class IEnumIDList extends IUnknown implements ComInterface {
  /// Creates a new instance of [IEnumIDList] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IEnumIDList] interface.
  /// The [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IEnumIDList(super.ptr) : _vtable = ptr.value.cast<IEnumIDListVtbl>().ref;

  /// Creates a new instance of [IEnumIDList] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IEnumIDList] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IEnumIDList.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IEnumIDListVtbl _vtable;
  late final _NextFn =
      _vtable.Next.asFunction<
        int Function(
          VTablePointer,
          int,
          Pointer<Pointer<ITEMIDLIST>>,
          Pointer<Uint32>,
        )
      >();
  late final _SkipFn =
      _vtable.Skip.asFunction<int Function(VTablePointer, int)>();
  late final _ResetFn = _vtable.Reset.asFunction<int Function(VTablePointer)>();
  late final _CloneFn = _vtable
      .Clone.asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();

  /// Retrieves the specified number of item identifiers in the enumeration
  /// sequence and advances the current position by the number of items
  /// retrieved.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ienumidlist-next>.
  @pragma('vm:prefer-inline')
  HRESULT next(
    int celt,
    Pointer<Pointer<ITEMIDLIST>> rgelt,
    Pointer<Uint32>? pceltFetched,
  ) => HRESULT(_NextFn(ptr, celt, rgelt, pceltFetched ?? nullptr));

  /// Skips the specified number of elements in the enumeration sequence.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ienumidlist-skip>.
  @pragma('vm:prefer-inline')
  HRESULT skip(int celt) => HRESULT(_SkipFn(ptr, celt));

  /// Returns to the beginning of the enumeration sequence.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ienumidlist-reset>.
  @pragma('vm:prefer-inline')
  HRESULT reset() => HRESULT(_ResetFn(ptr));

  /// Creates a new item enumeration object with the same contents and state as
  /// the current one.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ienumidlist-clone>.
  @pragma('vm:prefer-inline')
  HRESULT clone(Pointer<VTablePointer> ppenum) =>
      HRESULT(_CloneFn(ptr, ppenum));

  @override
  String toString() => 'IEnumIDList(ptr: $ptr)';
}

/// @nodoc
base class IEnumIDListVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 celt,
        Pointer<Pointer<ITEMIDLIST>> rgelt,
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
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> ppenum)
    >
  >
  Clone;
}

@internal
final class IEnumIDListCompanion extends ComCompanion<IEnumIDList> {
  const IEnumIDListCompanion();

  @pragma('vm:prefer-inline')
  @override
  IEnumIDList Function(VTablePointer) get fromPointer => IEnumIDList.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IEnumIDList;
}
