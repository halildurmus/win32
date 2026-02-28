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
import 'id3d11unorderedaccessview.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3DX11SegmentedScan = GUID.fromComponents(
  0xa915128c,
  0xd954,
  0x4c79,
  Uint8List.fromList(const [0xbf, 0xe1, 0x64, 0xdb, 0x92, 0x31, 0x94, 0xd6]),
);

/// Segmented scan context.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3dcsx/nn-d3dcsx-id3dx11segmentedscan>.
///
/// {@category com}
class ID3DX11SegmentedScan extends IUnknown implements ComInterface {
  /// Creates a new instance of [ID3DX11SegmentedScan] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3DX11SegmentedScan]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ID3DX11SegmentedScan(super.ptr)
    : _vtable = ptr.value.cast<ID3DX11SegmentedScanVtbl>().ref;

  /// Creates a new instance of [ID3DX11SegmentedScan] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3DX11SegmentedScan] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3DX11SegmentedScan.from(IUnknown interface) =>
      interface.queryInterface();

  final ID3DX11SegmentedScanVtbl _vtable;
  late final _SetScanDirectionFn =
      _vtable.SetScanDirection.asFunction<int Function(VTablePointer, int)>();
  late final _SegScanFn =
      _vtable.SegScan.asFunction<
        int Function(
          VTablePointer,
          int,
          int,
          int,
          VTablePointer,
          VTablePointer,
          VTablePointer,
        )
      >();

  /// Sets which direction to perform scans in.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3dcsx/nf-d3dcsx-id3dx11segmentedscan-setscandirection>.
  @pragma('vm:prefer-inline')
  void setScanDirection(D3DX11_SCAN_DIRECTION direction) {
    final hr$ = HRESULT(_SetScanDirectionFn(ptr, direction));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Performs a segmented scan of a sequence.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3dcsx/nf-d3dcsx-id3dx11segmentedscan-segscan>.
  @pragma('vm:prefer-inline')
  void segScan(
    D3DX11_SCAN_DATA_TYPE elementType,
    D3DX11_SCAN_OPCODE opCode,
    int elementScanSize,
    ID3D11UnorderedAccessView? pSrc,
    ID3D11UnorderedAccessView? pSrcElementFlags,
    ID3D11UnorderedAccessView? pDst,
  ) {
    final hr$ = HRESULT(
      _SegScanFn(
        ptr,
        elementType,
        opCode,
        elementScanSize,
        pSrc?.ptr ?? nullptr,
        pSrcElementFlags?.ptr ?? nullptr,
        pDst?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'ID3DX11SegmentedScan(ptr: $ptr)';
}

/// @nodoc
base class ID3DX11SegmentedScanVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 direction)>
  >
  SetScanDirection;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 elementType,
        Int32 opCode,
        Uint32 elementScanSize,
        VTablePointer pSrc,
        VTablePointer pSrcElementFlags,
        VTablePointer pDst,
      )
    >
  >
  SegScan;
}

@internal
final class ID3DX11SegmentedScanCompanion
    extends ComCompanion<ID3DX11SegmentedScan> {
  const ID3DX11SegmentedScanCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3DX11SegmentedScan Function(VTablePointer) get fromPointer =>
      ID3DX11SegmentedScan.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3DX11SegmentedScan;
}
