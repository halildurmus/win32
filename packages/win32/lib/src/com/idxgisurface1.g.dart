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
import 'idxgisurface.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IDXGISurface1 = GUID.fromComponents(
  0x4ae63092,
  0x6327,
  0x4c1b,
  Uint8List.fromList(const [0x80, 0xae, 0xbf, 0xe1, 0x2e, 0xa3, 0x2b, 0x86]),
);

/// Extends the IDXGISurface by adding support for using Windows Graphics Device
/// Interface (GDI) to render to a Microsoft DirectX Graphics Infrastructure
/// (DXGI) surface.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dxgi/nn-dxgi-idxgisurface1>.
///
/// {@category com}
class IDXGISurface1 extends IDXGISurface implements ComInterface {
  /// Creates a new instance of [IDXGISurface1] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IDXGISurface1]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  IDXGISurface1(super.ptr) : _vtable = ptr.value.cast<IDXGISurface1Vtbl>().ref;

  /// Creates a new instance of [IDXGISurface1] from an existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDXGISurface1] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDXGISurface1.from(IUnknown interface) => interface.queryInterface();

  final IDXGISurface1Vtbl _vtable;
  late final _GetDCFn = _vtable
      .GetDC.asFunction<int Function(VTablePointer, int, Pointer<Pointer>)>();
  late final _ReleaseDCFn = _vtable
      .ReleaseDC.asFunction<int Function(VTablePointer, Pointer<RECT>)>();

  /// Returns a device context (DC) that allows you to render to a Microsoft
  /// DirectX Graphics Infrastructure (DXGI) surface using Windows Graphics
  /// Device Interface (GDI).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dxgi/nf-dxgi-idxgisurface1-getdc>.
  HDC getDC(bool discard) {
    final phdc = adaptiveCalloc<Pointer>();
    final hr$ = HRESULT(_GetDCFn(ptr, discard ? TRUE : FALSE, phdc));
    if (hr$.isError) {
      free(phdc);
      throw WindowsException(hr$);
    }
    final result$ = phdc.value;
    free(phdc);
    return HDC(result$);
  }

  /// Releases the GDI device context (DC) that is associated with the current
  /// surface and allows you to use Direct3D to render.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dxgi/nf-dxgi-idxgisurface1-releasedc>.
  @pragma('vm:prefer-inline')
  void releaseDC(Pointer<RECT>? pDirtyRect) {
    final hr$ = HRESULT(_ReleaseDCFn(ptr, pDirtyRect ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IDXGISurface1(ptr: $ptr)';
}

/// @nodoc
base class IDXGISurface1Vtbl extends Struct {
  external IDXGISurfaceVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Int32 discard, Pointer<Pointer> phdc)
    >
  >
  GetDC;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<RECT> pDirtyRect)
    >
  >
  ReleaseDC;
}

@internal
final class IDXGISurface1Companion extends ComCompanion<IDXGISurface1> {
  const IDXGISurface1Companion();

  @pragma('vm:prefer-inline')
  @override
  IDXGISurface1 Function(VTablePointer) get fromPointer => IDXGISurface1.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDXGISurface1;
}
