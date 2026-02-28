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
import 'id3d11buffer.g.dart';
import 'id3d11devicechild.g.dart';
import 'id3d11devicecontext1.g.dart';
import 'id3d11resource.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11DeviceContext2 = GUID.fromComponents(
  0x420d5b32,
  0xb90c,
  0x4da4,
  Uint8List.fromList(const [0xbe, 0xf0, 0x35, 0x9f, 0x6a, 0x24, 0xa8, 0x3a]),
);

/// The device context interface represents a device context; it is used to
/// render commands.
///
/// ID3D11DeviceContext2 adds new methods to those in ID3D11DeviceContext1.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11_2/nn-d3d11_2-id3d11devicecontext2>.
///
/// {@category com}
class ID3D11DeviceContext2 extends ID3D11DeviceContext1
    implements ComInterface {
  /// Creates a new instance of [ID3D11DeviceContext2] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11DeviceContext2]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ID3D11DeviceContext2(super.ptr)
    : _vtable = ptr.value.cast<ID3D11DeviceContext2Vtbl>().ref;

  /// Creates a new instance of [ID3D11DeviceContext2] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11DeviceContext2] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11DeviceContext2.from(IUnknown interface) =>
      interface.queryInterface();

  final ID3D11DeviceContext2Vtbl _vtable;
  late final _UpdateTileMappingsFn =
      _vtable.UpdateTileMappings.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          int,
          Pointer<D3D11_TILED_RESOURCE_COORDINATE>,
          Pointer<D3D11_TILE_REGION_SIZE>,
          VTablePointer,
          int,
          Pointer<Uint32>,
          Pointer<Uint32>,
          Pointer<Uint32>,
          int,
        )
      >();
  late final _CopyTileMappingsFn =
      _vtable.CopyTileMappings.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          Pointer<D3D11_TILED_RESOURCE_COORDINATE>,
          VTablePointer,
          Pointer<D3D11_TILED_RESOURCE_COORDINATE>,
          Pointer<D3D11_TILE_REGION_SIZE>,
          int,
        )
      >();
  late final _CopyTilesFn =
      _vtable.CopyTiles.asFunction<
        void Function(
          VTablePointer,
          VTablePointer,
          Pointer<D3D11_TILED_RESOURCE_COORDINATE>,
          Pointer<D3D11_TILE_REGION_SIZE>,
          VTablePointer,
          int,
          int,
        )
      >();
  late final _UpdateTilesFn =
      _vtable.UpdateTiles.asFunction<
        void Function(
          VTablePointer,
          VTablePointer,
          Pointer<D3D11_TILED_RESOURCE_COORDINATE>,
          Pointer<D3D11_TILE_REGION_SIZE>,
          Pointer,
          int,
        )
      >();
  late final _ResizeTilePoolFn =
      _vtable.ResizeTilePool.asFunction<
        int Function(VTablePointer, VTablePointer, int)
      >();
  late final _TiledResourceBarrierFn =
      _vtable.TiledResourceBarrier.asFunction<
        void Function(VTablePointer, VTablePointer, VTablePointer)
      >();
  late final _IsAnnotationEnabledFn =
      _vtable.IsAnnotationEnabled.asFunction<int Function(VTablePointer)>();
  late final _SetMarkerIntFn =
      _vtable.SetMarkerInt.asFunction<
        void Function(VTablePointer, Pointer<Utf16>, int)
      >();
  late final _BeginEventIntFn =
      _vtable.BeginEventInt.asFunction<
        void Function(VTablePointer, Pointer<Utf16>, int)
      >();
  late final _EndEventFn =
      _vtable.EndEvent.asFunction<void Function(VTablePointer)>();

  /// Updates mappings of tile locations in tiled resources to memory locations
  /// in a tile pool.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_2/nf-d3d11_2-id3d11devicecontext2-updatetilemappings>.
  @pragma('vm:prefer-inline')
  void updateTileMappings(
    ID3D11Resource? pTiledResource,
    int numTiledResourceRegions,
    Pointer<D3D11_TILED_RESOURCE_COORDINATE>?
    pTiledResourceRegionStartCoordinates,
    Pointer<D3D11_TILE_REGION_SIZE>? pTiledResourceRegionSizes,
    ID3D11Buffer? pTilePool,
    int numRanges,
    Pointer<Uint32>? pRangeFlags,
    Pointer<Uint32>? pTilePoolStartOffsets,
    Pointer<Uint32>? pRangeTileCounts,
    int flags,
  ) {
    final hr$ = HRESULT(
      _UpdateTileMappingsFn(
        ptr,
        pTiledResource?.ptr ?? nullptr,
        numTiledResourceRegions,
        pTiledResourceRegionStartCoordinates ?? nullptr,
        pTiledResourceRegionSizes ?? nullptr,
        pTilePool?.ptr ?? nullptr,
        numRanges,
        pRangeFlags ?? nullptr,
        pTilePoolStartOffsets ?? nullptr,
        pRangeTileCounts ?? nullptr,
        flags,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Copies mappings from a source tiled resource to a destination tiled
  /// resource.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_2/nf-d3d11_2-id3d11devicecontext2-copytilemappings>.
  @pragma('vm:prefer-inline')
  void copyTileMappings(
    ID3D11Resource? pDestTiledResource,
    Pointer<D3D11_TILED_RESOURCE_COORDINATE> pDestRegionStartCoordinate,
    ID3D11Resource? pSourceTiledResource,
    Pointer<D3D11_TILED_RESOURCE_COORDINATE> pSourceRegionStartCoordinate,
    Pointer<D3D11_TILE_REGION_SIZE> pTileRegionSize,
    int flags,
  ) {
    final hr$ = HRESULT(
      _CopyTileMappingsFn(
        ptr,
        pDestTiledResource?.ptr ?? nullptr,
        pDestRegionStartCoordinate,
        pSourceTiledResource?.ptr ?? nullptr,
        pSourceRegionStartCoordinate,
        pTileRegionSize,
        flags,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Copies tiles from buffer to tiled resource or vice versa.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_2/nf-d3d11_2-id3d11devicecontext2-copytiles>.
  @pragma('vm:prefer-inline')
  void copyTiles(
    ID3D11Resource? pTiledResource,
    Pointer<D3D11_TILED_RESOURCE_COORDINATE> pTileRegionStartCoordinate,
    Pointer<D3D11_TILE_REGION_SIZE> pTileRegionSize,
    ID3D11Buffer? pBuffer,
    int bufferStartOffsetInBytes,
    int flags,
  ) => _CopyTilesFn(
    ptr,
    pTiledResource?.ptr ?? nullptr,
    pTileRegionStartCoordinate,
    pTileRegionSize,
    pBuffer?.ptr ?? nullptr,
    bufferStartOffsetInBytes,
    flags,
  );

  /// Updates tiles by copying from app memory to the tiled resource.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_2/nf-d3d11_2-id3d11devicecontext2-updatetiles>.
  @pragma('vm:prefer-inline')
  void updateTiles(
    ID3D11Resource? pDestTiledResource,
    Pointer<D3D11_TILED_RESOURCE_COORDINATE> pDestTileRegionStartCoordinate,
    Pointer<D3D11_TILE_REGION_SIZE> pDestTileRegionSize,
    Pointer pSourceTileData,
    int flags,
  ) => _UpdateTilesFn(
    ptr,
    pDestTiledResource?.ptr ?? nullptr,
    pDestTileRegionStartCoordinate,
    pDestTileRegionSize,
    pSourceTileData,
    flags,
  );

  /// Resizes a tile pool.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_2/nf-d3d11_2-id3d11devicecontext2-resizetilepool>.
  @pragma('vm:prefer-inline')
  void resizeTilePool(ID3D11Buffer? pTilePool, int newSizeInBytes) {
    final hr$ = HRESULT(
      _ResizeTilePoolFn(ptr, pTilePool?.ptr ?? nullptr, newSizeInBytes),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Specifies a data access ordering constraint between multiple tiled
  /// resources.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_2/nf-d3d11_2-id3d11devicecontext2-tiledresourcebarrier>.
  @pragma('vm:prefer-inline')
  void tiledResourceBarrier(
    ID3D11DeviceChild? pTiledResourceOrViewAccessBeforeBarrier,
    ID3D11DeviceChild? pTiledResourceOrViewAccessAfterBarrier,
  ) => _TiledResourceBarrierFn(
    ptr,
    pTiledResourceOrViewAccessBeforeBarrier?.ptr ?? nullptr,
    pTiledResourceOrViewAccessAfterBarrier?.ptr ?? nullptr,
  );

  /// Allows apps to determine when either a capture or profiling request is
  /// enabled.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_2/nf-d3d11_2-id3d11devicecontext2-isannotationenabled>.
  @pragma('vm:prefer-inline')
  bool isAnnotationEnabled() => _IsAnnotationEnabledFn(ptr) != FALSE;

  /// Allows applications to annotate graphics commands.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_2/nf-d3d11_2-id3d11devicecontext2-setmarkerint>.
  @pragma('vm:prefer-inline')
  void setMarkerInt(PCWSTR pLabel, int data) =>
      _SetMarkerIntFn(ptr, pLabel, data);

  /// Allows applications to annotate the beginning of a range of graphics
  /// commands.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_2/nf-d3d11_2-id3d11devicecontext2-begineventint>.
  @pragma('vm:prefer-inline')
  void beginEventInt(PCWSTR pLabel, int data) =>
      _BeginEventIntFn(ptr, pLabel, data);

  /// Allows applications to annotate the end of a range of graphics commands.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_2/nf-d3d11_2-id3d11devicecontext2-endevent>.
  @pragma('vm:prefer-inline')
  void endEvent() => _EndEventFn(ptr);

  @override
  String toString() => 'ID3D11DeviceContext2(ptr: $ptr)';
}

/// @nodoc
base class ID3D11DeviceContext2Vtbl extends Struct {
  external ID3D11DeviceContext1Vtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pTiledResource,
        Uint32 numTiledResourceRegions,
        Pointer<D3D11_TILED_RESOURCE_COORDINATE>
        pTiledResourceRegionStartCoordinates,
        Pointer<D3D11_TILE_REGION_SIZE> pTiledResourceRegionSizes,
        VTablePointer pTilePool,
        Uint32 numRanges,
        Pointer<Uint32> pRangeFlags,
        Pointer<Uint32> pTilePoolStartOffsets,
        Pointer<Uint32> pRangeTileCounts,
        Uint32 flags,
      )
    >
  >
  UpdateTileMappings;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pDestTiledResource,
        Pointer<D3D11_TILED_RESOURCE_COORDINATE> pDestRegionStartCoordinate,
        VTablePointer pSourceTiledResource,
        Pointer<D3D11_TILED_RESOURCE_COORDINATE> pSourceRegionStartCoordinate,
        Pointer<D3D11_TILE_REGION_SIZE> pTileRegionSize,
        Uint32 flags,
      )
    >
  >
  CopyTileMappings;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pTiledResource,
        Pointer<D3D11_TILED_RESOURCE_COORDINATE> pTileRegionStartCoordinate,
        Pointer<D3D11_TILE_REGION_SIZE> pTileRegionSize,
        VTablePointer pBuffer,
        Uint64 bufferStartOffsetInBytes,
        Uint32 flags,
      )
    >
  >
  CopyTiles;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pDestTiledResource,
        Pointer<D3D11_TILED_RESOURCE_COORDINATE> pDestTileRegionStartCoordinate,
        Pointer<D3D11_TILE_REGION_SIZE> pDestTileRegionSize,
        Pointer pSourceTileData,
        Uint32 flags,
      )
    >
  >
  UpdateTiles;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pTilePool,
        Uint64 newSizeInBytes,
      )
    >
  >
  ResizeTilePool;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pTiledResourceOrViewAccessBeforeBarrier,
        VTablePointer pTiledResourceOrViewAccessAfterBarrier,
      )
    >
  >
  TiledResourceBarrier;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  IsAnnotationEnabled;
  external Pointer<
    NativeFunction<
      Void Function(VTablePointer this$, Pointer<Utf16> pLabel, Int32 data)
    >
  >
  SetMarkerInt;
  external Pointer<
    NativeFunction<
      Void Function(VTablePointer this$, Pointer<Utf16> pLabel, Int32 data)
    >
  >
  BeginEventInt;
  external Pointer<NativeFunction<Void Function(VTablePointer this$)>> EndEvent;
}

@internal
final class ID3D11DeviceContext2Companion
    extends ComCompanion<ID3D11DeviceContext2> {
  const ID3D11DeviceContext2Companion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11DeviceContext2 Function(VTablePointer) get fromPointer =>
      ID3D11DeviceContext2.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11DeviceContext2;
}
