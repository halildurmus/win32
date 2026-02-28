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
import 'id3d11device4.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11Device5 = GUID.fromComponents(
  0x8ffde202,
  0xa0e7,
  0x45df,
  Uint8List.fromList(const [0x9e, 0x1, 0xe8, 0x37, 0x80, 0x1b, 0x5e, 0xa0]),
);

/// Represents a virtual adapter; it is used to create resources.
///
/// ID3D11Device5 adds new methods to those in ID3D11Device4.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11_4/nn-d3d11_4-id3d11device5>.
///
/// {@category com}
class ID3D11Device5 extends ID3D11Device4 implements ComInterface {
  /// Creates a new instance of [ID3D11Device5] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11Device5]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ID3D11Device5(super.ptr) : _vtable = ptr.value.cast<ID3D11Device5Vtbl>().ref;

  /// Creates a new instance of [ID3D11Device5] from an existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11Device5] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11Device5.from(IUnknown interface) => interface.queryInterface();

  final ID3D11Device5Vtbl _vtable;
  late final _OpenSharedFenceFn =
      _vtable.OpenSharedFence.asFunction<
        int Function(VTablePointer, Pointer, Pointer<GUID>, Pointer<Pointer>)
      >();
  late final _CreateFenceFn =
      _vtable.CreateFence.asFunction<
        int Function(VTablePointer, int, int, Pointer<GUID>, Pointer<Pointer>)
      >();

  /// Opens a handle for a shared fence by using HANDLE and REFIID.
  ///
  /// This method uses the [ComInterface.type] method to retrieve metadata about
  /// the target interface defined by [T], including its IID (Interface ID) and
  /// instantiation logic.
  ///
  /// All COM interfaces provided by this package are pre-registered. Custom COM
  /// interfaces must be registered manually using the [ComInterface.register]
  /// method before calling this method.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_4/nf-d3d11_4-id3d11device5-opensharedfence>.
  void openSharedFence<T extends IUnknown>(
    HANDLE hFence,
    Pointer<VTablePointer>? ppFence,
  ) {
    final companion = ComInterface.type<T>();
    final returnedInterface = companion.iid.toNative();
    final hr$ = HRESULT(
      _OpenSharedFenceFn(ptr, hFence, returnedInterface, ppFence ?? nullptr),
    );
    free(returnedInterface);
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Creates a fence object.
  ///
  /// This method uses the [ComInterface.type] method to retrieve metadata about
  /// the target interface defined by [T], including its IID (Interface ID) and
  /// instantiation logic.
  ///
  /// All COM interfaces provided by this package are pre-registered. Custom COM
  /// interfaces must be registered manually using the [ComInterface.register]
  /// method before calling this method.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_4/nf-d3d11_4-id3d11device5-createfence>.
  void createFence<T extends IUnknown>(
    int initialValue,
    D3D11_FENCE_FLAG flags,
    Pointer<VTablePointer>? ppFence,
  ) {
    final companion = ComInterface.type<T>();
    final returnedInterface = companion.iid.toNative();
    final hr$ = HRESULT(
      _CreateFenceFn(
        ptr,
        initialValue,
        flags,
        returnedInterface,
        ppFence ?? nullptr,
      ),
    );
    free(returnedInterface);
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'ID3D11Device5(ptr: $ptr)';
}

/// @nodoc
base class ID3D11Device5Vtbl extends Struct {
  external ID3D11Device4Vtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer hFence,
        Pointer<GUID> returnedInterface,
        Pointer<Pointer> ppFence,
      )
    >
  >
  OpenSharedFence;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint64 initialValue,
        Int32 flags,
        Pointer<GUID> returnedInterface,
        Pointer<Pointer> ppFence,
      )
    >
  >
  CreateFence;
}

@internal
final class ID3D11Device5Companion extends ComCompanion<ID3D11Device5> {
  const ID3D11Device5Companion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11Device5 Function(VTablePointer) get fromPointer => ID3D11Device5.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11Device5;
}
