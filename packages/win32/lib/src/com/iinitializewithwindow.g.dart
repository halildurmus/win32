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
import 'iunknown.g.dart';

/// @nodoc
final IID_IInitializeWithWindow = Guid.fromComponents(
  0x3e68d4bd,
  0x7135,
  0x4d10,
  Uint8List.fromList(const [0x80, 0x18, 0x9f, 0xb6, 0xd9, 0xf3, 0x3f, 0xa1]),
);

/// Exposes a method through which a client can provide an owner window to a
/// Windows Runtime object used in a desktop application.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-iinitializewithwindow>.
///
/// {@category com}
class IInitializeWithWindow extends IUnknown implements ComInterface {
  /// Creates a new instance of [IInitializeWithWindow] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IInitializeWithWindow]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IInitializeWithWindow(super.ptr)
    : _vtable = ptr.value.cast<IInitializeWithWindowVtbl>().ref;

  /// Creates a new instance of [IInitializeWithWindow] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IInitializeWithWindow] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IInitializeWithWindow.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IInitializeWithWindowVtbl _vtable;
  late final _InitializeFn =
      _vtable.Initialize.asFunction<int Function(VTablePointer, int)>();

  /// Specifies an owner window to be used by a Windows Runtime object that is
  /// used in a desktop app.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-iinitializewithwindow-initialize>.
  @pragma('vm:prefer-inline')
  void initialize(int hwnd) {
    final hr$ = HRESULT(_InitializeFn(ptr, hwnd));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IInitializeWithWindow(ptr: $ptr)';
}

/// @nodoc
base class IInitializeWithWindowVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, HWND hwnd)>
  >
  Initialize;
}

@internal
final class IInitializeWithWindowCompanion
    extends ComCompanion<IInitializeWithWindow> {
  const IInitializeWithWindowCompanion();

  @pragma('vm:prefer-inline')
  @override
  IInitializeWithWindow Function(VTablePointer) get fromPointer =>
      IInitializeWithWindow.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IInitializeWithWindow;
}
