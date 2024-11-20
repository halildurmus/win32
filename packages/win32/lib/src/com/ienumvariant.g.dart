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
import '../variant.dart';
import 'ienumvariant.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IEnumVARIANT = Guid.fromComponents(
  0x20404,
  0x0,
  0x0,
  Uint8List.fromList(const [0xc0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x46]),
);

/// Provides a method for enumerating a collection of variants, including
/// heterogeneous collections of objects and intrinsic types.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/nn-oaidl-ienumvariant>.
///
/// {@category com}
class IEnumVARIANT extends IUnknown implements ComInterface {
  /// Creates a new instance of [IEnumVARIANT] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IEnumVARIANT] interface.
  /// The [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IEnumVARIANT(super.ptr) : _vtable = ptr.value.cast<IEnumVARIANTVtbl>().ref;

  /// Creates a new instance of [IEnumVARIANT] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IEnumVARIANT] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IEnumVARIANT.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IEnumVARIANTVtbl _vtable;
  late final _NextFn =
      _vtable.Next.asFunction<
        int Function(VTablePointer, int, Pointer<VARIANT>, Pointer<Uint32>)
      >();
  late final _SkipFn =
      _vtable.Skip.asFunction<int Function(VTablePointer, int)>();
  late final _ResetFn = _vtable.Reset.asFunction<int Function(VTablePointer)>();
  late final _CloneFn = _vtable
      .Clone.asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();

  /// Retrieves the specified items in the enumeration sequence.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-ienumvariant-next>.
  @pragma('vm:prefer-inline')
  HRESULT next(
    int celt,
    Pointer<VARIANT> rgVar,
    Pointer<Uint32> pCeltFetched,
  ) => HRESULT(_NextFn(ptr, celt, rgVar, pCeltFetched));

  /// Attempts to skip over the next celt elements in the enumeration sequence.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-ienumvariant-skip>.
  @pragma('vm:prefer-inline')
  HRESULT skip(int celt) => HRESULT(_SkipFn(ptr, celt));

  /// Resets the enumeration sequence to the beginning.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-ienumvariant-reset>.
  @pragma('vm:prefer-inline')
  void reset() {
    final hr$ = HRESULT(_ResetFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Creates a copy of the current state of enumeration.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-ienumvariant-clone>.
  IEnumVARIANT? clone() {
    final ppEnum = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_CloneFn(ptr, ppEnum));
    if (hr$.isError) {
      free(ppEnum);
      throw WindowsException(hr$);
    }
    final result$ = ppEnum.value;
    free(ppEnum);
    if (result$.isNull) return null;
    return IEnumVARIANT(result$);
  }

  @override
  String toString() => 'IEnumVARIANT(ptr: $ptr)';
}

/// @nodoc
base class IEnumVARIANTVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 celt,
        Pointer<VARIANT> rgVar,
        Pointer<Uint32> pCeltFetched,
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
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> ppEnum)
    >
  >
  Clone;
}

@internal
final class IEnumVARIANTCompanion extends ComCompanion<IEnumVARIANT> {
  const IEnumVARIANTCompanion();

  @pragma('vm:prefer-inline')
  @override
  IEnumVARIANT Function(VTablePointer) get fromPointer => IEnumVARIANT.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IEnumVARIANT;
}
