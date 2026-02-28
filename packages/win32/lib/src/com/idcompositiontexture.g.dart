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
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IDCompositionTexture = GUID.fromComponents(
  0x929bb1aa,
  0x725f,
  0x433b,
  Uint8List.fromList(const [0xab, 0xd7, 0x27, 0x30, 0x75, 0xa8, 0x35, 0xf2]),
);

/// {@category com}
class IDCompositionTexture extends IUnknown implements ComInterface {
  /// Creates a new instance of [IDCompositionTexture] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IDCompositionTexture]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  IDCompositionTexture(super.ptr)
    : _vtable = ptr.value.cast<IDCompositionTextureVtbl>().ref;

  /// Creates a new instance of [IDCompositionTexture] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionTexture] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionTexture.from(IUnknown interface) =>
      interface.queryInterface();

  final IDCompositionTextureVtbl _vtable;
  late final _SetSourceRectFn =
      _vtable.SetSourceRect.asFunction<
        int Function(VTablePointer, Pointer<D2D_RECT_U>)
      >();
  late final _SetColorSpaceFn =
      _vtable.SetColorSpace.asFunction<int Function(VTablePointer, int)>();
  late final _SetAlphaModeFn =
      _vtable.SetAlphaMode.asFunction<int Function(VTablePointer, int)>();
  late final _GetAvailableFenceFn =
      _vtable.GetAvailableFence.asFunction<
        int Function(
          VTablePointer,
          Pointer<Uint64>,
          Pointer<GUID>,
          Pointer<Pointer>,
        )
      >();

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void setSourceRect(Pointer<D2D_RECT_U> sourceRect) {
    final hr$ = HRESULT(_SetSourceRectFn(ptr, sourceRect));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void setColorSpace(DXGI_COLOR_SPACE_TYPE colorSpace) {
    final hr$ = HRESULT(_SetColorSpaceFn(ptr, colorSpace));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void setAlphaMode(DXGI_ALPHA_MODE alphaMode) {
    final hr$ = HRESULT(_SetAlphaModeFn(ptr, alphaMode));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// This method uses the [ComInterface.type] method to retrieve metadata about
  /// the target interface defined by [T], including its IID (Interface ID) and
  /// instantiation logic.
  ///
  /// All COM interfaces provided by this package are pre-registered. Custom COM
  /// interfaces must be registered manually using the [ComInterface.register]
  /// method before calling this method.
  ///
  /// Throws a [WindowsException] on failure.
  T getAvailableFence<T extends IUnknown>(Pointer<Uint64> fenceValue) {
    final companion = ComInterface.type<T>();
    final iid = companion.iid.toNative();
    final availableFence = adaptiveCalloc<Pointer>();
    final hr$ = HRESULT(
      _GetAvailableFenceFn(ptr, fenceValue, iid, availableFence),
    );
    free(iid);
    if (hr$.isError) {
      free(availableFence);
      throw WindowsException(hr$);
    }
    final result = companion.fromPointer(availableFence.value.cast());
    free(availableFence);
    return result;
  }

  @override
  String toString() => 'IDCompositionTexture(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionTextureVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<D2D_RECT_U> sourceRect)
    >
  >
  SetSourceRect;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 colorSpace)>
  >
  SetColorSpace;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 alphaMode)>
  >
  SetAlphaMode;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Uint64> fenceValue,
        Pointer<GUID> iid,
        Pointer<Pointer> availableFence,
      )
    >
  >
  GetAvailableFence;
}

@internal
final class IDCompositionTextureCompanion
    extends ComCompanion<IDCompositionTexture> {
  const IDCompositionTextureCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionTexture Function(VTablePointer) get fromPointer =>
      IDCompositionTexture.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionTexture;
}
