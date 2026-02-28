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
import 'id3d11moduleinstance.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11Module = GUID.fromComponents(
  0xcac701ee,
  0x80fc,
  0x4122,
  Uint8List.fromList(const [0x82, 0x42, 0x10, 0xb3, 0x9c, 0x8c, 0xec, 0x34]),
);

/// Creates an instance of a module that is used for resource rebinding.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nn-d3d11shader-id3d11module>.
///
/// {@category com}
class ID3D11Module extends IUnknown implements ComInterface {
  /// Creates a new instance of [ID3D11Module] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11Module] interface.
  /// The [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  ID3D11Module(super.ptr) : _vtable = ptr.value.cast<ID3D11ModuleVtbl>().ref;

  /// Creates a new instance of [ID3D11Module] from an existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11Module] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11Module.from(IUnknown interface) => interface.queryInterface();

  final ID3D11ModuleVtbl _vtable;
  late final _CreateInstanceFn =
      _vtable.CreateInstance.asFunction<
        int Function(VTablePointer, Pointer<Utf8>, Pointer<VTablePointer>)
      >();

  /// Initializes an instance of a shader module that is used for resource
  /// rebinding.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11module-createinstance>.
  ID3D11ModuleInstance? createInstance(PCSTR? pNamespace) {
    final ppModuleInstance = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _CreateInstanceFn(ptr, pNamespace ?? nullptr, ppModuleInstance),
    );
    if (hr$.isError) {
      free(ppModuleInstance);
      throw WindowsException(hr$);
    }
    final result$ = ppModuleInstance.value;
    free(ppModuleInstance);
    if (result$.isNull) return null;
    return ID3D11ModuleInstance(result$);
  }

  @override
  String toString() => 'ID3D11Module(ptr: $ptr)';
}

/// @nodoc
base class ID3D11ModuleVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Utf8> pNamespace,
        Pointer<VTablePointer> ppModuleInstance,
      )
    >
  >
  CreateInstance;
}

@internal
final class ID3D11ModuleCompanion extends ComCompanion<ID3D11Module> {
  const ID3D11ModuleCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11Module Function(VTablePointer) get fromPointer => ID3D11Module.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11Module;
}
