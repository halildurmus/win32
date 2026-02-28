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
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11ModuleInstance = GUID.fromComponents(
  0x469e07f7,
  0x45a,
  0x48d5,
  Uint8List.fromList(const [0xaa, 0x12, 0x68, 0xa4, 0x78, 0xcd, 0xf7, 0x5d]),
);

/// A module-instance interface is used for resource rebinding.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nn-d3d11shader-id3d11moduleinstance>.
///
/// {@category com}
class ID3D11ModuleInstance extends IUnknown implements ComInterface {
  /// Creates a new instance of [ID3D11ModuleInstance] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11ModuleInstance]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ID3D11ModuleInstance(super.ptr)
    : _vtable = ptr.value.cast<ID3D11ModuleInstanceVtbl>().ref;

  /// Creates a new instance of [ID3D11ModuleInstance] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11ModuleInstance] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11ModuleInstance.from(IUnknown interface) =>
      interface.queryInterface();

  final ID3D11ModuleInstanceVtbl _vtable;
  late final _BindConstantBufferFn =
      _vtable.BindConstantBuffer.asFunction<
        int Function(VTablePointer, int, int, int)
      >();
  late final _BindConstantBufferByNameFn =
      _vtable.BindConstantBufferByName.asFunction<
        int Function(VTablePointer, Pointer<Utf8>, int, int)
      >();
  late final _BindResourceFn = _vtable
      .BindResource.asFunction<int Function(VTablePointer, int, int, int)>();
  late final _BindResourceByNameFn =
      _vtable.BindResourceByName.asFunction<
        int Function(VTablePointer, Pointer<Utf8>, int, int)
      >();
  late final _BindSamplerFn = _vtable
      .BindSampler.asFunction<int Function(VTablePointer, int, int, int)>();
  late final _BindSamplerByNameFn =
      _vtable.BindSamplerByName.asFunction<
        int Function(VTablePointer, Pointer<Utf8>, int, int)
      >();
  late final _BindUnorderedAccessViewFn =
      _vtable.BindUnorderedAccessView.asFunction<
        int Function(VTablePointer, int, int, int)
      >();
  late final _BindUnorderedAccessViewByNameFn =
      _vtable.BindUnorderedAccessViewByName.asFunction<
        int Function(VTablePointer, Pointer<Utf8>, int, int)
      >();
  late final _BindResourceAsUnorderedAccessViewFn =
      _vtable.BindResourceAsUnorderedAccessView.asFunction<
        int Function(VTablePointer, int, int, int)
      >();
  late final _BindResourceAsUnorderedAccessViewByNameFn =
      _vtable.BindResourceAsUnorderedAccessViewByName.asFunction<
        int Function(VTablePointer, Pointer<Utf8>, int, int)
      >();

  /// Rebinds a constant buffer from a source slot to a destination slot.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11moduleinstance-bindconstantbuffer>.
  @pragma('vm:prefer-inline')
  void bindConstantBuffer(int uSrcSlot, int uDstSlot, int cbDstOffset) {
    final hr$ = HRESULT(
      _BindConstantBufferFn(ptr, uSrcSlot, uDstSlot, cbDstOffset),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Rebinds a constant buffer by name to a destination slot.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11moduleinstance-bindconstantbufferbyname>.
  @pragma('vm:prefer-inline')
  void bindConstantBufferByName(PCSTR pName, int uDstSlot, int cbDstOffset) {
    final hr$ = HRESULT(
      _BindConstantBufferByNameFn(ptr, pName, uDstSlot, cbDstOffset),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Rebinds a texture or buffer from source slot to destination slot.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11moduleinstance-bindresource>.
  @pragma('vm:prefer-inline')
  void bindResource(int uSrcSlot, int uDstSlot, int uCount) {
    final hr$ = HRESULT(_BindResourceFn(ptr, uSrcSlot, uDstSlot, uCount));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Rebinds a texture or buffer by name to destination slots.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11moduleinstance-bindresourcebyname>.
  @pragma('vm:prefer-inline')
  void bindResourceByName(PCSTR pName, int uDstSlot, int uCount) {
    final hr$ = HRESULT(_BindResourceByNameFn(ptr, pName, uDstSlot, uCount));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Rebinds a sampler from source slot to destination slot.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11moduleinstance-bindsampler>.
  @pragma('vm:prefer-inline')
  void bindSampler(int uSrcSlot, int uDstSlot, int uCount) {
    final hr$ = HRESULT(_BindSamplerFn(ptr, uSrcSlot, uDstSlot, uCount));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Rebinds a sampler by name to destination slots.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11moduleinstance-bindsamplerbyname>.
  @pragma('vm:prefer-inline')
  void bindSamplerByName(PCSTR pName, int uDstSlot, int uCount) {
    final hr$ = HRESULT(_BindSamplerByNameFn(ptr, pName, uDstSlot, uCount));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Rebinds an unordered access view (UAV) from source slot to destination
  /// slot.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11moduleinstance-bindunorderedaccessview>.
  @pragma('vm:prefer-inline')
  void bindUnorderedAccessView(int uSrcSlot, int uDstSlot, int uCount) {
    final hr$ = HRESULT(
      _BindUnorderedAccessViewFn(ptr, uSrcSlot, uDstSlot, uCount),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Rebinds an unordered access view (UAV) by name to destination slots.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11moduleinstance-bindunorderedaccessviewbyname>.
  @pragma('vm:prefer-inline')
  void bindUnorderedAccessViewByName(PCSTR pName, int uDstSlot, int uCount) {
    final hr$ = HRESULT(
      _BindUnorderedAccessViewByNameFn(ptr, pName, uDstSlot, uCount),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Rebinds a resource as an unordered access view (UAV) from source slot to
  /// destination slot.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11moduleinstance-bindresourceasunorderedaccessview>.
  @pragma('vm:prefer-inline')
  void bindResourceAsUnorderedAccessView(
    int uSrcSrvSlot,
    int uDstUavSlot,
    int uCount,
  ) {
    final hr$ = HRESULT(
      _BindResourceAsUnorderedAccessViewFn(
        ptr,
        uSrcSrvSlot,
        uDstUavSlot,
        uCount,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Rebinds a resource by name as an unordered access view (UAV) to
  /// destination slots.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11moduleinstance-bindresourceasunorderedaccessviewbyname>.
  @pragma('vm:prefer-inline')
  void bindResourceAsUnorderedAccessViewByName(
    PCSTR pSrvName,
    int uDstUavSlot,
    int uCount,
  ) {
    final hr$ = HRESULT(
      _BindResourceAsUnorderedAccessViewByNameFn(
        ptr,
        pSrvName,
        uDstUavSlot,
        uCount,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'ID3D11ModuleInstance(ptr: $ptr)';
}

/// @nodoc
base class ID3D11ModuleInstanceVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 uSrcSlot,
        Uint32 uDstSlot,
        Uint32 cbDstOffset,
      )
    >
  >
  BindConstantBuffer;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Utf8> pName,
        Uint32 uDstSlot,
        Uint32 cbDstOffset,
      )
    >
  >
  BindConstantBufferByName;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 uSrcSlot,
        Uint32 uDstSlot,
        Uint32 uCount,
      )
    >
  >
  BindResource;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Utf8> pName,
        Uint32 uDstSlot,
        Uint32 uCount,
      )
    >
  >
  BindResourceByName;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 uSrcSlot,
        Uint32 uDstSlot,
        Uint32 uCount,
      )
    >
  >
  BindSampler;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Utf8> pName,
        Uint32 uDstSlot,
        Uint32 uCount,
      )
    >
  >
  BindSamplerByName;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 uSrcSlot,
        Uint32 uDstSlot,
        Uint32 uCount,
      )
    >
  >
  BindUnorderedAccessView;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Utf8> pName,
        Uint32 uDstSlot,
        Uint32 uCount,
      )
    >
  >
  BindUnorderedAccessViewByName;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 uSrcSrvSlot,
        Uint32 uDstUavSlot,
        Uint32 uCount,
      )
    >
  >
  BindResourceAsUnorderedAccessView;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Utf8> pSrvName,
        Uint32 uDstUavSlot,
        Uint32 uCount,
      )
    >
  >
  BindResourceAsUnorderedAccessViewByName;
}

@internal
final class ID3D11ModuleInstanceCompanion
    extends ComCompanion<ID3D11ModuleInstance> {
  const ID3D11ModuleInstanceCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11ModuleInstance Function(VTablePointer) get fromPointer =>
      ID3D11ModuleInstance.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11ModuleInstance;
}
