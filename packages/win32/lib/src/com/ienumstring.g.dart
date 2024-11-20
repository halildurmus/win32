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
import 'ienumstring.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IEnumString = Guid.fromComponents(
  0x101,
  0x0,
  0x0,
  Uint8List.fromList(const [0xc0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x46]),
);

/// Enumerates strings.
///
/// LPWSTR is the type that indicates a pointer to a zero-terminated string of
/// wide, or Unicode, characters.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/objidlbase/nn-objidlbase-ienumstring>.
///
/// {@category com}
class IEnumString extends IUnknown implements ComInterface {
  /// Creates a new instance of [IEnumString] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IEnumString] interface.
  /// The [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IEnumString(super.ptr) : _vtable = ptr.value.cast<IEnumStringVtbl>().ref;

  /// Creates a new instance of [IEnumString] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IEnumString] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IEnumString.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IEnumStringVtbl _vtable;
  late final _NextFn =
      _vtable.Next.asFunction<
        int Function(VTablePointer, int, Pointer<PWSTR>, Pointer<Uint32>)
      >();
  late final _SkipFn =
      _vtable.Skip.asFunction<int Function(VTablePointer, int)>();
  late final _ResetFn = _vtable.Reset.asFunction<int Function(VTablePointer)>();
  late final _CloneFn = _vtable
      .Clone.asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();

  /// Retrieves the specified number of items in the enumeration sequence.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidlbase/nf-objidlbase-ienumstring-next>.
  @pragma('vm:prefer-inline')
  HRESULT next(int celt, Pointer<PWSTR> rgelt, Pointer<Uint32>? pceltFetched) =>
      HRESULT(_NextFn(ptr, celt, rgelt, pceltFetched ?? nullptr));

  /// Skips over the specified number of items in the enumeration sequence.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidlbase/nf-objidlbase-ienumstring-skip>.
  @pragma('vm:prefer-inline')
  HRESULT skip(int celt) => HRESULT(_SkipFn(ptr, celt));

  /// Resets the enumeration sequence to the beginning.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidlbase/nf-objidlbase-ienumstring-reset>.
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
  /// <https://learn.microsoft.com/windows/win32/api/objidlbase/nf-objidlbase-ienumstring-clone>.
  IEnumString? clone() {
    final ppenum = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_CloneFn(ptr, ppenum));
    if (hr$.isError) {
      free(ppenum);
      throw WindowsException(hr$);
    }
    final result$ = ppenum.value;
    free(ppenum);
    if (result$.isNull) return null;
    return IEnumString(result$);
  }

  @override
  String toString() => 'IEnumString(ptr: $ptr)';
}

/// @nodoc
base class IEnumStringVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 celt,
        Pointer<PWSTR> rgelt,
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
final class IEnumStringCompanion extends ComCompanion<IEnumString> {
  const IEnumStringCompanion();

  @pragma('vm:prefer-inline')
  @override
  IEnumString Function(VTablePointer) get fromPointer => IEnumString.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IEnumString;
}
