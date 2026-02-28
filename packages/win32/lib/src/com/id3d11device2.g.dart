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
import 'id3d11device1.g.dart';
import 'id3d11devicecontext2.g.dart';
import 'id3d11resource.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11Device2 = GUID.fromComponents(
  0x9d06dffa,
  0xd1e5,
  0x4d07,
  Uint8List.fromList(const [0x83, 0xa8, 0x1b, 0xb1, 0x23, 0xf2, 0xf8, 0x41]),
);

/// Represents a virtual adapter; it is used to create resources.
///
/// ID3D11Device2 adds new methods to those in ID3D11Device1.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11_2/nn-d3d11_2-id3d11device2>.
///
/// {@category com}
class ID3D11Device2 extends ID3D11Device1 implements ComInterface {
  /// Creates a new instance of [ID3D11Device2] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11Device2]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ID3D11Device2(super.ptr) : _vtable = ptr.value.cast<ID3D11Device2Vtbl>().ref;

  /// Creates a new instance of [ID3D11Device2] from an existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11Device2] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11Device2.from(IUnknown interface) => interface.queryInterface();

  final ID3D11Device2Vtbl _vtable;
  late final _GetImmediateContext2Fn =
      _vtable.GetImmediateContext2.asFunction<
        void Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _CreateDeferredContext2Fn =
      _vtable.CreateDeferredContext2.asFunction<
        int Function(VTablePointer, int, Pointer<VTablePointer>)
      >();
  late final _GetResourceTilingFn =
      _vtable.GetResourceTiling.asFunction<
        void Function(
          VTablePointer,
          VTablePointer,
          Pointer<Uint32>,
          Pointer<D3D11_PACKED_MIP_DESC>,
          Pointer<D3D11_TILE_SHAPE>,
          Pointer<Uint32>,
          int,
          Pointer<D3D11_SUBRESOURCE_TILING>,
        )
      >();
  late final _CheckMultisampleQualityLevels1Fn =
      _vtable.CheckMultisampleQualityLevels1.asFunction<
        int Function(VTablePointer, int, int, int, Pointer<Uint32>)
      >();

  /// Gets an immediate context, which can play back command lists.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_2/nf-d3d11_2-id3d11device2-getimmediatecontext2>.
  @pragma('vm:prefer-inline')
  void getImmediateContext2(Pointer<VTablePointer> ppImmediateContext) =>
      _GetImmediateContext2Fn(ptr, ppImmediateContext);

  /// Creates a deferred context, which can record command lists.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_2/nf-d3d11_2-id3d11device2-createdeferredcontext2>.
  @pragma('vm:prefer-inline')
  void createDeferredContext2(
    int contextFlags,
    Pointer<VTablePointer>? ppDeferredContext,
  ) {
    final hr$ = HRESULT(
      _CreateDeferredContext2Fn(
        ptr,
        contextFlags,
        ppDeferredContext ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets info about how a tiled resource is broken into tiles.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_2/nf-d3d11_2-id3d11device2-getresourcetiling>.
  @pragma('vm:prefer-inline')
  void getResourceTiling(
    ID3D11Resource? pTiledResource,
    Pointer<Uint32>? pNumTilesForEntireResource,
    Pointer<D3D11_PACKED_MIP_DESC>? pPackedMipDesc,
    Pointer<D3D11_TILE_SHAPE>? pStandardTileShapeForNonPackedMips,
    Pointer<Uint32>? pNumSubresourceTilings,
    int firstSubresourceTilingToGet,
    Pointer<D3D11_SUBRESOURCE_TILING> pSubresourceTilingsForNonPackedMips,
  ) => _GetResourceTilingFn(
    ptr,
    pTiledResource?.ptr ?? nullptr,
    pNumTilesForEntireResource ?? nullptr,
    pPackedMipDesc ?? nullptr,
    pStandardTileShapeForNonPackedMips ?? nullptr,
    pNumSubresourceTilings ?? nullptr,
    firstSubresourceTilingToGet,
    pSubresourceTilingsForNonPackedMips,
  );

  /// Get the number of quality levels available during multisampling.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_2/nf-d3d11_2-id3d11device2-checkmultisamplequalitylevels1>.
  int checkMultisampleQualityLevels1(
    DXGI_FORMAT format,
    int sampleCount,
    int flags,
  ) {
    final pNumQualityLevels = adaptiveCalloc<Uint32>();
    final hr$ = HRESULT(
      _CheckMultisampleQualityLevels1Fn(
        ptr,
        format,
        sampleCount,
        flags,
        pNumQualityLevels,
      ),
    );
    if (hr$.isError) {
      free(pNumQualityLevels);
      throw WindowsException(hr$);
    }
    final result$ = pNumQualityLevels.value;
    free(pNumQualityLevels);
    return result$;
  }

  @override
  String toString() => 'ID3D11Device2(ptr: $ptr)';
}

/// @nodoc
base class ID3D11Device2Vtbl extends Struct {
  external ID3D11Device1Vtbl base$;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Pointer<VTablePointer> ppImmediateContext,
      )
    >
  >
  GetImmediateContext2;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 contextFlags,
        Pointer<VTablePointer> ppDeferredContext,
      )
    >
  >
  CreateDeferredContext2;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pTiledResource,
        Pointer<Uint32> pNumTilesForEntireResource,
        Pointer<D3D11_PACKED_MIP_DESC> pPackedMipDesc,
        Pointer<D3D11_TILE_SHAPE> pStandardTileShapeForNonPackedMips,
        Pointer<Uint32> pNumSubresourceTilings,
        Uint32 firstSubresourceTilingToGet,
        Pointer<D3D11_SUBRESOURCE_TILING> pSubresourceTilingsForNonPackedMips,
      )
    >
  >
  GetResourceTiling;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 format,
        Uint32 sampleCount,
        Uint32 flags,
        Pointer<Uint32> pNumQualityLevels,
      )
    >
  >
  CheckMultisampleQualityLevels1;
}

@internal
final class ID3D11Device2Companion extends ComCompanion<ID3D11Device2> {
  const ID3D11Device2Companion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11Device2 Function(VTablePointer) get fromPointer => ID3D11Device2.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11Device2;
}
