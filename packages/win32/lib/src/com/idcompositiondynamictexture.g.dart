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
import 'idcompositiontexture.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IDCompositionDynamicTexture = GUID.fromComponents(
  0xa1de1d3f,
  0x6405,
  0x447f,
  Uint8List.fromList(const [0x8e, 0x95, 0x13, 0x83, 0xa3, 0x4b, 0x2, 0x77]),
);

/// {@category com}
class IDCompositionDynamicTexture extends IUnknown implements ComInterface {
  /// Creates a new instance of [IDCompositionDynamicTexture] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IDCompositionDynamicTexture] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  IDCompositionDynamicTexture(super.ptr)
    : _vtable = ptr.value.cast<IDCompositionDynamicTextureVtbl>().ref;

  /// Creates a new instance of [IDCompositionDynamicTexture] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionDynamicTexture] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionDynamicTexture.from(IUnknown interface) =>
      interface.queryInterface();

  final IDCompositionDynamicTextureVtbl _vtable;
  late final _SetTextureFn =
      _vtable.SetTexture.asFunction<
        int Function(VTablePointer, VTablePointer, Pointer<RECT>, int)
      >();
  late final _SetTexture2Fn = _vtable
      .SetTexture2.asFunction<int Function(VTablePointer, VTablePointer)>();

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void setTexture(
    IDCompositionTexture? pTexture,
    Pointer<RECT> pRects,
    int rectCount,
  ) {
    final hr$ = HRESULT(
      _SetTextureFn(ptr, pTexture?.ptr ?? nullptr, pRects, rectCount),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void setTexture2(IDCompositionTexture? pTexture) {
    final hr$ = HRESULT(_SetTexture2Fn(ptr, pTexture?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IDCompositionDynamicTexture(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionDynamicTextureVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pTexture,
        Pointer<RECT> pRects,
        IntPtr rectCount,
      )
    >
  >
  SetTexture;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer pTexture)>
  >
  SetTexture2;
}

@internal
final class IDCompositionDynamicTextureCompanion
    extends ComCompanion<IDCompositionDynamicTexture> {
  const IDCompositionDynamicTextureCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionDynamicTexture Function(VTablePointer) get fromPointer =>
      IDCompositionDynamicTexture.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionDynamicTexture;
}
