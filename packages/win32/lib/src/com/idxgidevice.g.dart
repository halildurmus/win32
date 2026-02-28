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
import 'idxgiadapter.g.dart';
import 'idxgiobject.g.dart';
import 'idxgisurface.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IDXGIDevice = GUID.fromComponents(
  0x54ec77fa,
  0x1377,
  0x44e6,
  Uint8List.fromList(const [0x8c, 0x32, 0x88, 0xfd, 0x5f, 0x44, 0xc8, 0x4c]),
);

/// Implements a derived class for DXGI objects that produce image data.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dxgi/nn-dxgi-idxgidevice>.
///
/// {@category com}
class IDXGIDevice extends IDXGIObject implements ComInterface {
  /// Creates a new instance of [IDXGIDevice] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IDXGIDevice] interface.
  /// The [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  IDXGIDevice(super.ptr) : _vtable = ptr.value.cast<IDXGIDeviceVtbl>().ref;

  /// Creates a new instance of [IDXGIDevice] from an existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDXGIDevice] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDXGIDevice.from(IUnknown interface) => interface.queryInterface();

  final IDXGIDeviceVtbl _vtable;
  late final _GetAdapterFn =
      _vtable.GetAdapter.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _CreateSurfaceFn =
      _vtable.CreateSurface.asFunction<
        int Function(
          VTablePointer,
          Pointer<DXGI_SURFACE_DESC>,
          int,
          int,
          Pointer<DXGI_SHARED_RESOURCE>,
          Pointer<VTablePointer>,
        )
      >();
  late final _QueryResourceResidencyFn =
      _vtable.QueryResourceResidency.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>, Pointer<Int32>, int)
      >();
  late final _SetGPUThreadPriorityFn = _vtable
      .SetGPUThreadPriority.asFunction<int Function(VTablePointer, int)>();
  late final _GetGPUThreadPriorityFn =
      _vtable.GetGPUThreadPriority.asFunction<
        int Function(VTablePointer, Pointer<Int32>)
      >();

  /// Returns the adapter for the specified device.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dxgi/nf-dxgi-idxgidevice-getadapter>.
  IDXGIAdapter? getAdapter() {
    final pAdapter = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetAdapterFn(ptr, pAdapter));
    if (hr$.isError) {
      free(pAdapter);
      throw WindowsException(hr$);
    }
    final result$ = pAdapter.value;
    free(pAdapter);
    if (result$.isNull) return null;
    return IDXGIAdapter(result$);
  }

  /// Returns a surface.
  ///
  /// This method is used internally and you should not call it directly in your
  /// application.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dxgi/nf-dxgi-idxgidevice-createsurface>.
  @pragma('vm:prefer-inline')
  void createSurface(
    Pointer<DXGI_SURFACE_DESC> pDesc,
    int numSurfaces,
    DXGI_USAGE usage,
    Pointer<DXGI_SHARED_RESOURCE>? pSharedResource,
    Pointer<VTablePointer> ppSurface,
  ) {
    final hr$ = HRESULT(
      _CreateSurfaceFn(
        ptr,
        pDesc,
        numSurfaces,
        usage,
        pSharedResource ?? nullptr,
        ppSurface,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the residency status of an array of resources.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dxgi/nf-dxgi-idxgidevice-queryresourceresidency>.
  @pragma('vm:prefer-inline')
  void queryResourceResidency(
    Pointer<VTablePointer> ppResources,
    Pointer<Int32> pResidencyStatus,
    int numResources,
  ) {
    final hr$ = HRESULT(
      _QueryResourceResidencyFn(
        ptr,
        ppResources,
        pResidencyStatus,
        numResources,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the GPU thread priority.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dxgi/nf-dxgi-idxgidevice-setgputhreadpriority>.
  @pragma('vm:prefer-inline')
  void setGPUThreadPriority(int priority) {
    final hr$ = HRESULT(_SetGPUThreadPriorityFn(ptr, priority));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the GPU thread priority.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dxgi/nf-dxgi-idxgidevice-getgputhreadpriority>.
  int getGPUThreadPriority() {
    final pPriority = adaptiveCalloc<Int32>();
    final hr$ = HRESULT(_GetGPUThreadPriorityFn(ptr, pPriority));
    if (hr$.isError) {
      free(pPriority);
      throw WindowsException(hr$);
    }
    final result$ = pPriority.value;
    free(pPriority);
    return result$;
  }

  @override
  String toString() => 'IDXGIDevice(ptr: $ptr)';
}

/// @nodoc
base class IDXGIDeviceVtbl extends Struct {
  external IDXGIObjectVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> pAdapter)
    >
  >
  GetAdapter;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<DXGI_SURFACE_DESC> pDesc,
        Uint32 numSurfaces,
        Uint32 usage,
        Pointer<DXGI_SHARED_RESOURCE> pSharedResource,
        Pointer<VTablePointer> ppSurface,
      )
    >
  >
  CreateSurface;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> ppResources,
        Pointer<Int32> pResidencyStatus,
        Uint32 numResources,
      )
    >
  >
  QueryResourceResidency;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 priority)>
  >
  SetGPUThreadPriority;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Int32> pPriority)
    >
  >
  GetGPUThreadPriority;
}

@internal
final class IDXGIDeviceCompanion extends ComCompanion<IDXGIDevice> {
  const IDXGIDeviceCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDXGIDevice Function(VTablePointer) get fromPointer => IDXGIDevice.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDXGIDevice;
}
