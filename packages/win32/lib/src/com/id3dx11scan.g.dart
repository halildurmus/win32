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
final IID_ID3DX11Scan = GUID.fromComponents(
  0x5089b68f,
  0xe71d,
  0x4d38,
  Uint8List.fromList(const [0xbe, 0x8e, 0xf3, 0x63, 0xb9, 0x5a, 0x94, 0x5]),
);

/// Scan context.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3dcsx/nn-d3dcsx-id3dx11scan>.
///
/// {@category com}
class ID3DX11Scan extends IUnknown implements ComInterface {
  /// Creates a new instance of [ID3DX11Scan] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3DX11Scan] interface.
  /// The [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  ID3DX11Scan(super.ptr) : _vtable = ptr.value.cast<ID3DX11ScanVtbl>().ref;

  /// Creates a new instance of [ID3DX11Scan] from an existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3DX11Scan] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3DX11Scan.from(IUnknown interface) => interface.queryInterface();

  final ID3DX11ScanVtbl _vtable;
  late final _SetScanDirectionFn =
      _vtable.SetScanDirection.asFunction<int Function(VTablePointer, int)>();
  late final _ScanFn =
      _vtable.Scan.asFunction<
        int Function(VTablePointer, int, int, int, VTablePointer, VTablePointer)
      >();
  late final _MultiscanFn =
      _vtable.Multiscan.asFunction<
        int Function(
          VTablePointer,
          int,
          int,
          int,
          int,
          int,
          VTablePointer,
          VTablePointer,
        )
      >();

  /// Sets which direction to perform scans in.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3dcsx/nf-d3dcsx-id3dx11scan-setscandirection>.
  @pragma('vm:prefer-inline')
  void setScanDirection(D3DX11_SCAN_DIRECTION direction) {
    final hr$ = HRESULT(_SetScanDirectionFn(ptr, direction));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Performs an unsegmented scan of a sequence.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3dcsx/nf-d3dcsx-id3dx11scan-scan>.
  @pragma('vm:prefer-inline')
  void scan(
    D3DX11_SCAN_DATA_TYPE elementType,
    D3DX11_SCAN_OPCODE opCode,
    int elementScanSize,
    ID3D11UnorderedAccessView? pSrc,
    ID3D11UnorderedAccessView? pDst,
  ) {
    final hr$ = HRESULT(
      _ScanFn(
        ptr,
        elementType,
        opCode,
        elementScanSize,
        pSrc?.ptr ?? nullptr,
        pDst?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Performs a multiscan of a sequence.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3dcsx/nf-d3dcsx-id3dx11scan-multiscan>.
  @pragma('vm:prefer-inline')
  void multiscan(
    D3DX11_SCAN_DATA_TYPE elementType,
    D3DX11_SCAN_OPCODE opCode,
    int elementScanSize,
    int elementScanPitch,
    int scanCount,
    ID3D11UnorderedAccessView? pSrc,
    ID3D11UnorderedAccessView? pDst,
  ) {
    final hr$ = HRESULT(
      _MultiscanFn(
        ptr,
        elementType,
        opCode,
        elementScanSize,
        elementScanPitch,
        scanCount,
        pSrc?.ptr ?? nullptr,
        pDst?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'ID3DX11Scan(ptr: $ptr)';
}

/// @nodoc
base class ID3DX11ScanVtbl extends Struct {
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
        VTablePointer pDst,
      )
    >
  >
  Scan;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 elementType,
        Int32 opCode,
        Uint32 elementScanSize,
        Uint32 elementScanPitch,
        Uint32 scanCount,
        VTablePointer pSrc,
        VTablePointer pDst,
      )
    >
  >
  Multiscan;
}

@internal
final class ID3DX11ScanCompanion extends ComCompanion<ID3DX11Scan> {
  const ID3DX11ScanCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3DX11Scan Function(VTablePointer) get fromPointer => ID3DX11Scan.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3DX11Scan;
}
