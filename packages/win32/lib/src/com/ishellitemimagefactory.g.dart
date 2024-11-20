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
import '../enums.g.dart';
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
import 'iunknown.g.dart';

/// @nodoc
final IID_IShellItemImageFactory = Guid.fromComponents(
  0xbcc18b79,
  0xba16,
  0x442f,
  Uint8List.fromList(const [0x80, 0xc4, 0x8a, 0x59, 0xc3, 0xc, 0x46, 0x3b]),
);

/// Exposes a method to return either icons or thumbnails for Shell items.
///
/// If no thumbnail or icon is available for the requested item, a per-class
/// icon may be provided from the Shell.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-ishellitemimagefactory>.
///
/// {@category com}
class IShellItemImageFactory extends IUnknown implements ComInterface {
  /// Creates a new instance of [IShellItemImageFactory] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IShellItemImageFactory]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IShellItemImageFactory(super.ptr)
    : _vtable = ptr.value.cast<IShellItemImageFactoryVtbl>().ref;

  /// Creates a new instance of [IShellItemImageFactory] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IShellItemImageFactory] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IShellItemImageFactory.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IShellItemImageFactoryVtbl _vtable;
  late final _GetImageFn =
      _vtable.GetImage.asFunction<
        int Function(VTablePointer, SIZE, int, Pointer<HBITMAP>)
      >();

  /// Gets an HBITMAP that represents an IShellItem.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitemimagefactory-getimage>.
  int getImage(SIZE size, SIIGBF flags) {
    final phbm = loggingCalloc<HBITMAP>();
    final hr$ = HRESULT(_GetImageFn(ptr, size, flags, phbm));
    if (hr$.isError) {
      free(phbm);
      throw WindowsException(hr$);
    }
    final result$ = phbm.value;
    free(phbm);
    return result$;
  }

  @override
  String toString() => 'IShellItemImageFactory(ptr: $ptr)';
}

/// @nodoc
base class IShellItemImageFactoryVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        SIZE size,
        Int32 flags,
        Pointer<HBITMAP> phbm,
      )
    >
  >
  GetImage;
}

@internal
final class IShellItemImageFactoryCompanion
    extends ComCompanion<IShellItemImageFactory> {
  const IShellItemImageFactoryCompanion();

  @pragma('vm:prefer-inline')
  @override
  IShellItemImageFactory Function(VTablePointer) get fromPointer =>
      IShellItemImageFactory.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IShellItemImageFactory;
}
