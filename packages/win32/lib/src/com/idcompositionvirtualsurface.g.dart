// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Dart representation of a COM interface.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:meta/meta.dart';

import '../bstr.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../exception.dart';
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
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'idcompositionsurface.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IDCompositionVirtualSurface = GUID.fromComponents(
  0xae471c51,
  0x5f53,
  0x4a24,
  Uint8List.fromList(const [0x8d, 0x3e, 0xd0, 0xc3, 0x9c, 0x30, 0xb3, 0xf0]),
);

/// Represents a sparsely allocated bitmap that can be associated with a visual
/// for composition in a visual tree.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nn-dcomp-idcompositionvirtualsurface>.
///
/// {@category com}
class IDCompositionVirtualSurface extends IDCompositionSurface
    implements ComInterface {
  /// Creates a new instance of [IDCompositionVirtualSurface] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IDCompositionVirtualSurface] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  IDCompositionVirtualSurface(super.ptr)
    : _vtable = ptr.value.cast<IDCompositionVirtualSurfaceVtbl>().ref;

  /// Creates a new instance of [IDCompositionVirtualSurface] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionVirtualSurface] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionVirtualSurface.from(IUnknown interface) =>
      interface.queryInterface();

  final IDCompositionVirtualSurfaceVtbl _vtable;
  late final _ResizeFn =
      _vtable.Resize.asFunction<int Function(VTablePointer, int, int)>();
  late final _TrimFn = _vtable
      .Trim.asFunction<int Function(VTablePointer, Pointer<RECT>, int)>();

  /// Changes the logical size of this virtual surface object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionvirtualsurface-resize>.
  @pragma('vm:prefer-inline')
  void resize(int width, int height) {
    final hr$ = HRESULT(_ResizeFn(ptr, width, height));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Discards pixels that fall outside of the specified trim rectangles.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionvirtualsurface-trim>.
  @pragma('vm:prefer-inline')
  void trim(Pointer<RECT>? rectangles, int count) {
    final hr$ = HRESULT(_TrimFn(ptr, rectangles ?? nullptr, count));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IDCompositionVirtualSurface(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionVirtualSurfaceVtbl extends Struct {
  external IDCompositionSurfaceVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Uint32 width, Uint32 height)
    >
  >
  Resize;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<RECT> rectangles,
        Uint32 count,
      )
    >
  >
  Trim;
}

@internal
final class IDCompositionVirtualSurfaceCompanion
    extends ComCompanion<IDCompositionVirtualSurface> {
  const IDCompositionVirtualSurfaceCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionVirtualSurface Function(VTablePointer) get fromPointer =>
      IDCompositionVirtualSurface.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionVirtualSurface;
}
