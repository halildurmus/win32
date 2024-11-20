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
import 'ienumresources.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IEnumResources = Guid.fromComponents(
  0x2dd81fe3,
  0xa83c,
  0x4da9,
  Uint8List.fromList(const [0xa3, 0x30, 0x47, 0x24, 0x9d, 0x34, 0x5b, 0xa1]),
);

/// Exposes resource enumeration methods.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-ienumresources>.
///
/// {@category com}
class IEnumResources extends IUnknown implements ComInterface {
  /// Creates a new instance of [IEnumResources] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IEnumResources]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IEnumResources(super.ptr)
    : _vtable = ptr.value.cast<IEnumResourcesVtbl>().ref;

  /// Creates a new instance of [IEnumResources] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IEnumResources] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IEnumResources.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IEnumResourcesVtbl _vtable;
  late final _NextFn =
      _vtable.Next.asFunction<
        int Function(
          VTablePointer,
          int,
          Pointer<SHELL_ITEM_RESOURCE>,
          Pointer<Uint32>,
        )
      >();
  late final _SkipFn =
      _vtable.Skip.asFunction<int Function(VTablePointer, int)>();
  late final _ResetFn = _vtable.Reset.asFunction<int Function(VTablePointer)>();
  late final _CloneFn = _vtable
      .Clone.asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();

  /// Gets the next SHELL_ITEM_RESOURCE structure.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ienumresources-next>.
  @pragma('vm:prefer-inline')
  void next(
    int celt,
    Pointer<SHELL_ITEM_RESOURCE> psir,
    Pointer<Uint32> pceltFetched,
  ) {
    final hr$ = HRESULT(_NextFn(ptr, celt, psir, pceltFetched));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Skips a specified number of resources.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ienumresources-skip>.
  @pragma('vm:prefer-inline')
  void skip(int celt) {
    final hr$ = HRESULT(_SkipFn(ptr, celt));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Resets the enumeration index to 0.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ienumresources-reset>.
  @pragma('vm:prefer-inline')
  void reset() {
    final hr$ = HRESULT(_ResetFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Clones a resource enumerator.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ienumresources-clone>.
  IEnumResources? clone() {
    final ppenumr = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_CloneFn(ptr, ppenumr));
    if (hr$.isError) {
      free(ppenumr);
      throw WindowsException(hr$);
    }
    final result$ = ppenumr.value;
    free(ppenumr);
    if (result$.isNull) return null;
    return IEnumResources(result$);
  }

  @override
  String toString() => 'IEnumResources(ptr: $ptr)';
}

/// @nodoc
base class IEnumResourcesVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 celt,
        Pointer<SHELL_ITEM_RESOURCE> psir,
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
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> ppenumr)
    >
  >
  Clone;
}

@internal
final class IEnumResourcesCompanion extends ComCompanion<IEnumResources> {
  const IEnumResourcesCompanion();

  @pragma('vm:prefer-inline')
  @override
  IEnumResources Function(VTablePointer) get fromPointer => IEnumResources.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IEnumResources;
}
