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
import 'ishellitem.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IShellItemFilter = Guid.fromComponents(
  0x2659b475,
  0xeeb8,
  0x48b7,
  Uint8List.fromList(const [0x8f, 0x7, 0xb3, 0x78, 0x81, 0xf, 0x48, 0xcf]),
);

/// Exposed by a client to specify how to filter the enumeration of a Shell item
/// by a server application.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-ishellitemfilter>.
///
/// {@category com}
class IShellItemFilter extends IUnknown implements ComInterface {
  /// Creates a new instance of [IShellItemFilter] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IShellItemFilter]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IShellItemFilter(super.ptr)
    : _vtable = ptr.value.cast<IShellItemFilterVtbl>().ref;

  /// Creates a new instance of [IShellItemFilter] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IShellItemFilter] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IShellItemFilter.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IShellItemFilterVtbl _vtable;
  late final _IncludeItemFn = _vtable
      .IncludeItem.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _GetEnumFlagsForItemFn =
      _vtable.GetEnumFlagsForItem.asFunction<
        int Function(VTablePointer, VTablePointer, Pointer<Uint32>)
      >();

  /// Sets a given Shell item status to inclusion in the view.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitemfilter-includeitem>.
  @pragma('vm:prefer-inline')
  void includeItem(IShellItem? psi) {
    final hr$ = HRESULT(_IncludeItemFn(ptr, psi?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Allows a client to specify which classes of objects in a Shell item should
  /// be enumerated for inclusion in the view.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitemfilter-getenumflagsforitem>.
  int getEnumFlagsForItem(IShellItem? psi) {
    final pgrfFlags = loggingCalloc<Uint32>();
    final hr$ = HRESULT(
      _GetEnumFlagsForItemFn(ptr, psi?.ptr ?? nullptr, pgrfFlags),
    );
    if (hr$.isError) {
      free(pgrfFlags);
      throw WindowsException(hr$);
    }
    final result$ = pgrfFlags.value;
    free(pgrfFlags);
    return result$;
  }

  @override
  String toString() => 'IShellItemFilter(ptr: $ptr)';
}

/// @nodoc
base class IShellItemFilterVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer psi)>
  >
  IncludeItem;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer psi,
        Pointer<Uint32> pgrfFlags,
      )
    >
  >
  GetEnumFlagsForItem;
}

@internal
final class IShellItemFilterCompanion extends ComCompanion<IShellItemFilter> {
  const IShellItemFilterCompanion();

  @pragma('vm:prefer-inline')
  @override
  IShellItemFilter Function(VTablePointer) get fromPointer =>
      IShellItemFilter.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IShellItemFilter;
}
