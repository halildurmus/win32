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
import 'id3d11functionreflection.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11LibraryReflection = GUID.fromComponents(
  0x54384f1b,
  0x5b3e,
  0x4bb7,
  Uint8List.fromList(const [0xae, 0x1, 0x60, 0xba, 0x30, 0x97, 0xcb, 0xb6]),
);

/// A library-reflection interface accesses library info.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nn-d3d11shader-id3d11libraryreflection>.
///
/// {@category com}
class ID3D11LibraryReflection extends IUnknown implements ComInterface {
  /// Creates a new instance of [ID3D11LibraryReflection] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11LibraryReflection]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ID3D11LibraryReflection(super.ptr)
    : _vtable = ptr.value.cast<ID3D11LibraryReflectionVtbl>().ref;

  /// Creates a new instance of [ID3D11LibraryReflection] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11LibraryReflection] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11LibraryReflection.from(IUnknown interface) =>
      interface.queryInterface();

  final ID3D11LibraryReflectionVtbl _vtable;
  late final _GetDescFn =
      _vtable.GetDesc.asFunction<
        int Function(VTablePointer, Pointer<D3D11_LIBRARY_DESC>)
      >();
  late final _GetFunctionByIndexFn =
      _vtable.GetFunctionByIndex.asFunction<
        VTablePointer Function(VTablePointer, int)
      >();

  /// Fills the library descriptor structure for the library reflection.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11libraryreflection-getdesc>.
  Pointer<D3D11_LIBRARY_DESC> getDesc() {
    final pDesc = adaptiveCalloc<D3D11_LIBRARY_DESC>();
    final hr$ = HRESULT(_GetDescFn(ptr, pDesc));
    if (hr$.isError) {
      free(pDesc);
      throw WindowsException(hr$);
    }
    return pDesc;
  }

  /// Gets the function reflector.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11libraryreflection-getfunctionbyindex>.
  @pragma('vm:prefer-inline')
  ID3D11FunctionReflection? getFunctionByIndex(int functionIndex) {
    final result = _GetFunctionByIndexFn(ptr, functionIndex);
    if (result.isNull) return null;
    return ID3D11FunctionReflection(result);
  }

  @override
  String toString() => 'ID3D11LibraryReflection(ptr: $ptr)';
}

/// @nodoc
base class ID3D11LibraryReflectionVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<D3D11_LIBRARY_DESC> pDesc)
    >
  >
  GetDesc;
  external Pointer<
    NativeFunction<
      VTablePointer Function(VTablePointer this$, Int32 functionIndex)
    >
  >
  GetFunctionByIndex;
}

@internal
final class ID3D11LibraryReflectionCompanion
    extends ComCompanion<ID3D11LibraryReflection> {
  const ID3D11LibraryReflectionCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11LibraryReflection Function(VTablePointer) get fromPointer =>
      ID3D11LibraryReflection.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11LibraryReflection;
}
