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
import 'idcompositiondevice3.g.dart';
import 'idcompositiontexture.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IDCompositionDevice4 = GUID.fromComponents(
  0x85fc5cca,
  0x2da6,
  0x494c,
  Uint8List.fromList(const [0x86, 0xb6, 0x4a, 0x77, 0x5c, 0x4, 0x9b, 0x8a]),
);

/// {@category com}
class IDCompositionDevice4 extends IDCompositionDevice3
    implements ComInterface {
  /// Creates a new instance of [IDCompositionDevice4] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IDCompositionDevice4]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  IDCompositionDevice4(super.ptr)
    : _vtable = ptr.value.cast<IDCompositionDevice4Vtbl>().ref;

  /// Creates a new instance of [IDCompositionDevice4] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionDevice4] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionDevice4.from(IUnknown interface) =>
      interface.queryInterface();

  final IDCompositionDevice4Vtbl _vtable;
  late final _CheckCompositionTextureSupportFn =
      _vtable.CheckCompositionTextureSupport.asFunction<
        int Function(VTablePointer, VTablePointer, Pointer<Int32>)
      >();
  late final _CreateCompositionTextureFn =
      _vtable.CreateCompositionTexture.asFunction<
        int Function(VTablePointer, VTablePointer, Pointer<VTablePointer>)
      >();

  /// Throws a [WindowsException] on failure.
  bool checkCompositionTextureSupport(IUnknown? renderingDevice) {
    final supportsCompositionTextures = adaptiveCalloc<Int32>();
    final hr$ = HRESULT(
      _CheckCompositionTextureSupportFn(
        ptr,
        renderingDevice?.ptr ?? nullptr,
        supportsCompositionTextures,
      ),
    );
    if (hr$.isError) {
      free(supportsCompositionTextures);
      throw WindowsException(hr$);
    }
    final result$ = supportsCompositionTextures.value;
    free(supportsCompositionTextures);
    return result$ != FALSE;
  }

  /// Throws a [WindowsException] on failure.
  IDCompositionTexture? createCompositionTexture(IUnknown? d3dTexture) {
    final compositionTexture = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _CreateCompositionTextureFn(
        ptr,
        d3dTexture?.ptr ?? nullptr,
        compositionTexture,
      ),
    );
    if (hr$.isError) {
      free(compositionTexture);
      throw WindowsException(hr$);
    }
    final result$ = compositionTexture.value;
    free(compositionTexture);
    if (result$.isNull) return null;
    return IDCompositionTexture(result$);
  }

  @override
  String toString() => 'IDCompositionDevice4(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionDevice4Vtbl extends Struct {
  external IDCompositionDevice3Vtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer renderingDevice,
        Pointer<Int32> supportsCompositionTextures,
      )
    >
  >
  CheckCompositionTextureSupport;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer d3dTexture,
        Pointer<VTablePointer> compositionTexture,
      )
    >
  >
  CreateCompositionTexture;
}

@internal
final class IDCompositionDevice4Companion
    extends ComCompanion<IDCompositionDevice4> {
  const IDCompositionDevice4Companion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionDevice4 Function(VTablePointer) get fromPointer =>
      IDCompositionDevice4.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionDevice4;
}
