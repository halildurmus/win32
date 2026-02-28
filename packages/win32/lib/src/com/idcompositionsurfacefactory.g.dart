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
import '../enums.g.dart';
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
import 'idcompositionvirtualsurface.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IDCompositionSurfaceFactory = GUID.fromComponents(
  0xe334bc12,
  0x3937,
  0x4e02,
  Uint8List.fromList(const [0x85, 0xeb, 0xfc, 0xf4, 0xeb, 0x30, 0xd2, 0xc8]),
);

/// Creates surface and virtual surface objects associated with an
/// application-provided rendering device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nn-dcomp-idcompositionsurfacefactory>.
///
/// {@category com}
class IDCompositionSurfaceFactory extends IUnknown implements ComInterface {
  /// Creates a new instance of [IDCompositionSurfaceFactory] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IDCompositionSurfaceFactory] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  IDCompositionSurfaceFactory(super.ptr)
    : _vtable = ptr.value.cast<IDCompositionSurfaceFactoryVtbl>().ref;

  /// Creates a new instance of [IDCompositionSurfaceFactory] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionSurfaceFactory] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionSurfaceFactory.from(IUnknown interface) =>
      interface.queryInterface();

  final IDCompositionSurfaceFactoryVtbl _vtable;
  late final _CreateSurfaceFn =
      _vtable.CreateSurface.asFunction<
        int Function(VTablePointer, int, int, int, int, Pointer<VTablePointer>)
      >();
  late final _CreateVirtualSurfaceFn =
      _vtable.CreateVirtualSurface.asFunction<
        int Function(VTablePointer, int, int, int, int, Pointer<VTablePointer>)
      >();

  /// Creates a surface object that can be associated with one or more visuals
  /// for composition.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionsurfacefactory-createsurface>.
  IDCompositionSurface? createSurface(
    int width,
    int height,
    DXGI_FORMAT pixelFormat,
    DXGI_ALPHA_MODE alphaMode,
  ) {
    final surface = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _CreateSurfaceFn(ptr, width, height, pixelFormat, alphaMode, surface),
    );
    if (hr$.isError) {
      free(surface);
      throw WindowsException(hr$);
    }
    final result$ = surface.value;
    free(surface);
    if (result$.isNull) return null;
    return IDCompositionSurface(result$);
  }

  /// Creates a sparsely populated surface that can be associated with one or
  /// more visuals for composition.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionsurfacefactory-createvirtualsurface>.
  IDCompositionVirtualSurface? createVirtualSurface(
    int initialWidth,
    int initialHeight,
    DXGI_FORMAT pixelFormat,
    DXGI_ALPHA_MODE alphaMode,
  ) {
    final virtualSurface = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _CreateVirtualSurfaceFn(
        ptr,
        initialWidth,
        initialHeight,
        pixelFormat,
        alphaMode,
        virtualSurface,
      ),
    );
    if (hr$.isError) {
      free(virtualSurface);
      throw WindowsException(hr$);
    }
    final result$ = virtualSurface.value;
    free(virtualSurface);
    if (result$.isNull) return null;
    return IDCompositionVirtualSurface(result$);
  }

  @override
  String toString() => 'IDCompositionSurfaceFactory(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionSurfaceFactoryVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 width,
        Uint32 height,
        Int32 pixelFormat,
        Int32 alphaMode,
        Pointer<VTablePointer> surface,
      )
    >
  >
  CreateSurface;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 initialWidth,
        Uint32 initialHeight,
        Int32 pixelFormat,
        Int32 alphaMode,
        Pointer<VTablePointer> virtualSurface,
      )
    >
  >
  CreateVirtualSurface;
}

@internal
final class IDCompositionSurfaceFactoryCompanion
    extends ComCompanion<IDCompositionSurfaceFactory> {
  const IDCompositionSurfaceFactoryCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionSurfaceFactory Function(VTablePointer) get fromPointer =>
      IDCompositionSurfaceFactory.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionSurfaceFactory;
}
