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
import 'idxgidevicesubobject.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IDXGISurface = GUID.fromComponents(
  0xcafcb56c,
  0x6ac3,
  0x4889,
  Uint8List.fromList(const [0xbf, 0x47, 0x9e, 0x23, 0xbb, 0xd2, 0x60, 0xec]),
);

/// Implements methods for image-data objects.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dxgi/nn-dxgi-idxgisurface>.
///
/// {@category com}
class IDXGISurface extends IDXGIDeviceSubObject implements ComInterface {
  /// Creates a new instance of [IDXGISurface] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IDXGISurface] interface.
  /// The [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  IDXGISurface(super.ptr) : _vtable = ptr.value.cast<IDXGISurfaceVtbl>().ref;

  /// Creates a new instance of [IDXGISurface] from an existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDXGISurface] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDXGISurface.from(IUnknown interface) => interface.queryInterface();

  final IDXGISurfaceVtbl _vtable;
  late final _GetDescFn =
      _vtable.GetDesc.asFunction<
        int Function(VTablePointer, Pointer<DXGI_SURFACE_DESC>)
      >();
  late final _MapFn =
      _vtable.Map.asFunction<
        int Function(VTablePointer, Pointer<DXGI_MAPPED_RECT>, int)
      >();
  late final _UnmapFn = _vtable.Unmap.asFunction<int Function(VTablePointer)>();

  /// Get a description of the surface.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dxgi/nf-dxgi-idxgisurface-getdesc>.
  Pointer<DXGI_SURFACE_DESC> getDesc() {
    final pDesc = adaptiveCalloc<DXGI_SURFACE_DESC>();
    final hr$ = HRESULT(_GetDescFn(ptr, pDesc));
    if (hr$.isError) {
      free(pDesc);
      throw WindowsException(hr$);
    }
    return pDesc;
  }

  /// Get a pointer to the data contained in the surface, and deny GPU access to
  /// the surface.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dxgi/nf-dxgi-idxgisurface-map>.
  @pragma('vm:prefer-inline')
  void map(Pointer<DXGI_MAPPED_RECT> pLockedRect, DXGI_MAP_FLAGS mapFlags) {
    final hr$ = HRESULT(_MapFn(ptr, pLockedRect, mapFlags));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Invalidate the pointer to the surface retrieved by `IDXGISurface.map` and
  /// re-enable GPU access to the resource.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dxgi/nf-dxgi-idxgisurface-unmap>.
  @pragma('vm:prefer-inline')
  void unmap() {
    final hr$ = HRESULT(_UnmapFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IDXGISurface(ptr: $ptr)';
}

/// @nodoc
base class IDXGISurfaceVtbl extends Struct {
  external IDXGIDeviceSubObjectVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<DXGI_SURFACE_DESC> pDesc)
    >
  >
  GetDesc;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<DXGI_MAPPED_RECT> pLockedRect,
        Uint32 mapFlags,
      )
    >
  >
  Map;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>> Unmap;
}

@internal
final class IDXGISurfaceCompanion extends ComCompanion<IDXGISurface> {
  const IDXGISurfaceCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDXGISurface Function(VTablePointer) get fromPointer => IDXGISurface.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDXGISurface;
}
