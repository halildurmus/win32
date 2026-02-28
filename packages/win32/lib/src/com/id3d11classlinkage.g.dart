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
import 'id3d11classinstance.g.dart';
import 'id3d11devicechild.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11ClassLinkage = GUID.fromComponents(
  0xddf57cba,
  0x9543,
  0x46e4,
  Uint8List.fromList(const [0xa1, 0x2b, 0xf2, 0x7, 0xa0, 0xfe, 0x7f, 0xed]),
);

/// This interface encapsulates an HLSL dynamic linkage.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11/nn-d3d11-id3d11classlinkage>.
///
/// {@category com}
class ID3D11ClassLinkage extends ID3D11DeviceChild implements ComInterface {
  /// Creates a new instance of [ID3D11ClassLinkage] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11ClassLinkage]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ID3D11ClassLinkage(super.ptr)
    : _vtable = ptr.value.cast<ID3D11ClassLinkageVtbl>().ref;

  /// Creates a new instance of [ID3D11ClassLinkage] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11ClassLinkage] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11ClassLinkage.from(IUnknown interface) =>
      interface.queryInterface();

  final ID3D11ClassLinkageVtbl _vtable;
  late final _GetClassInstanceFn =
      _vtable.GetClassInstance.asFunction<
        int Function(VTablePointer, Pointer<Utf8>, int, Pointer<VTablePointer>)
      >();
  late final _CreateClassInstanceFn =
      _vtable.CreateClassInstance.asFunction<
        int Function(
          VTablePointer,
          Pointer<Utf8>,
          int,
          int,
          int,
          int,
          Pointer<VTablePointer>,
        )
      >();

  /// Gets the class-instance object that represents the specified HLSL class.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11classlinkage-getclassinstance>.
  ID3D11ClassInstance? getClassInstance(
    PCSTR pClassInstanceName,
    int instanceIndex,
  ) {
    final ppInstance = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _GetClassInstanceFn(ptr, pClassInstanceName, instanceIndex, ppInstance),
    );
    if (hr$.isError) {
      free(ppInstance);
      throw WindowsException(hr$);
    }
    final result$ = ppInstance.value;
    free(ppInstance);
    if (result$.isNull) return null;
    return ID3D11ClassInstance(result$);
  }

  /// Initializes a class-instance object that represents an HLSL class
  /// instance.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11classlinkage-createclassinstance>.
  ID3D11ClassInstance? createClassInstance(
    PCSTR pClassTypeName,
    int constantBufferOffset,
    int constantVectorOffset,
    int textureOffset,
    int samplerOffset,
  ) {
    final ppInstance = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _CreateClassInstanceFn(
        ptr,
        pClassTypeName,
        constantBufferOffset,
        constantVectorOffset,
        textureOffset,
        samplerOffset,
        ppInstance,
      ),
    );
    if (hr$.isError) {
      free(ppInstance);
      throw WindowsException(hr$);
    }
    final result$ = ppInstance.value;
    free(ppInstance);
    if (result$.isNull) return null;
    return ID3D11ClassInstance(result$);
  }

  @override
  String toString() => 'ID3D11ClassLinkage(ptr: $ptr)';
}

/// @nodoc
base class ID3D11ClassLinkageVtbl extends Struct {
  external ID3D11DeviceChildVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Utf8> pClassInstanceName,
        Uint32 instanceIndex,
        Pointer<VTablePointer> ppInstance,
      )
    >
  >
  GetClassInstance;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Utf8> pClassTypeName,
        Uint32 constantBufferOffset,
        Uint32 constantVectorOffset,
        Uint32 textureOffset,
        Uint32 samplerOffset,
        Pointer<VTablePointer> ppInstance,
      )
    >
  >
  CreateClassInstance;
}

@internal
final class ID3D11ClassLinkageCompanion
    extends ComCompanion<ID3D11ClassLinkage> {
  const ID3D11ClassLinkageCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11ClassLinkage Function(VTablePointer) get fromPointer =>
      ID3D11ClassLinkage.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11ClassLinkage;
}
