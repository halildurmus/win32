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
import 'idcompositiondevice4.g.dart';
import 'idcompositiondynamictexture.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IDCompositionDevice5 = GUID.fromComponents(
  0x2c6bebfe,
  0xa603,
  0x472f,
  Uint8List.fromList(const [0xaf, 0x34, 0xd2, 0x44, 0x33, 0x56, 0xe6, 0x1b]),
);

/// {@category com}
class IDCompositionDevice5 extends IDCompositionDevice4
    implements ComInterface {
  /// Creates a new instance of [IDCompositionDevice5] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IDCompositionDevice5]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  IDCompositionDevice5(super.ptr)
    : _vtable = ptr.value.cast<IDCompositionDevice5Vtbl>().ref;

  /// Creates a new instance of [IDCompositionDevice5] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionDevice5] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionDevice5.from(IUnknown interface) =>
      interface.queryInterface();

  final IDCompositionDevice5Vtbl _vtable;
  late final _CreateDynamicTextureFn =
      _vtable.CreateDynamicTexture.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();

  /// Throws a [WindowsException] on failure.
  IDCompositionDynamicTexture? createDynamicTexture() {
    final compositionDynamicTexture = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _CreateDynamicTextureFn(ptr, compositionDynamicTexture),
    );
    if (hr$.isError) {
      free(compositionDynamicTexture);
      throw WindowsException(hr$);
    }
    final result$ = compositionDynamicTexture.value;
    free(compositionDynamicTexture);
    if (result$.isNull) return null;
    return IDCompositionDynamicTexture(result$);
  }

  @override
  String toString() => 'IDCompositionDevice5(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionDevice5Vtbl extends Struct {
  external IDCompositionDevice4Vtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> compositionDynamicTexture,
      )
    >
  >
  CreateDynamicTexture;
}

@internal
final class IDCompositionDevice5Companion
    extends ComCompanion<IDCompositionDevice5> {
  const IDCompositionDevice5Companion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionDevice5 Function(VTablePointer) get fromPointer =>
      IDCompositionDevice5.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionDevice5;
}
