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
import 'ienumshellitems.g.dart';
import 'interface.g.dart';
import 'ishellitem.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IEnumShellItems = Guid.fromComponents(
  0x70629033,
  0xe363,
  0x4a28,
  Uint8List.fromList(const [0xa5, 0x67, 0xd, 0xb7, 0x80, 0x6, 0xe6, 0xd7]),
);

/// Exposes enumeration of IShellItem interfaces.
///
/// This interface is typically obtained by calling the IEnumShellItems method.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-ienumshellitems>.
///
/// {@category com}
class IEnumShellItems extends IUnknown implements ComInterface {
  /// Creates a new instance of [IEnumShellItems] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IEnumShellItems]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IEnumShellItems(super.ptr)
    : _vtable = ptr.value.cast<IEnumShellItemsVtbl>().ref;

  /// Creates a new instance of [IEnumShellItems] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IEnumShellItems] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IEnumShellItems.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IEnumShellItemsVtbl _vtable;
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

  /// Gets an array of one or more IShellItem interfaces from the enumeration.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ienumshellitems-next>.
  @pragma('vm:prefer-inline')
  void next(
    int celt,
    Pointer<VTablePointer> rgelt,
    Pointer<Uint32>? pceltFetched,
  ) {
    final hr$ = HRESULT(_NextFn(ptr, celt, rgelt, pceltFetched ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Skips a given number of IShellItem interfaces in the enumeration.
  ///
  /// Used when retrieving interfaces.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ienumshellitems-skip>.
  @pragma('vm:prefer-inline')
  void skip(int celt) {
    final hr$ = HRESULT(_SkipFn(ptr, celt));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Resets the internal count of retrieved IShellItem interfaces in the
  /// enumeration.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ienumshellitems-reset>.
  @pragma('vm:prefer-inline')
  void reset() {
    final hr$ = HRESULT(_ResetFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets a copy of the current enumeration.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ienumshellitems-clone>.
  IEnumShellItems? clone() {
    final ppenum = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_CloneFn(ptr, ppenum));
    if (hr$.isError) {
      free(ppenum);
      throw WindowsException(hr$);
    }
    final result$ = ppenum.value;
    free(ppenum);
    if (result$.isNull) return null;
    return IEnumShellItems(result$);
  }

  @override
  String toString() => 'IEnumShellItems(ptr: $ptr)';
}

/// @nodoc
base class IEnumShellItemsVtbl extends Struct {
  external IUnknownVtbl base$;
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
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> ppenum)
    >
  >
  Clone;
}

@internal
final class IEnumShellItemsCompanion extends ComCompanion<IEnumShellItems> {
  const IEnumShellItemsCompanion();

  @pragma('vm:prefer-inline')
  @override
  IEnumShellItems Function(VTablePointer) get fromPointer =>
      IEnumShellItems.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IEnumShellItems;
}
