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
import 'id3d11devicecontext.g.dart';
import 'idxgiswapchain.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11Debug = GUID.fromComponents(
  0x79cf2233,
  0x7536,
  0x4948,
  Uint8List.fromList(const [0x9d, 0x36, 0x1e, 0x46, 0x92, 0xdc, 0x57, 0x60]),
);

/// Controls debug settings, validates pipeline state and can only be used if
/// the debug layer is turned on.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nn-d3d11sdklayers-id3d11debug>.
///
/// {@category com}
class ID3D11Debug extends IUnknown implements ComInterface {
  /// Creates a new instance of [ID3D11Debug] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11Debug] interface.
  /// The [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  ID3D11Debug(super.ptr) : _vtable = ptr.value.cast<ID3D11DebugVtbl>().ref;

  /// Creates a new instance of [ID3D11Debug] from an existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11Debug] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11Debug.from(IUnknown interface) => interface.queryInterface();

  final ID3D11DebugVtbl _vtable;
  late final _SetFeatureMaskFn =
      _vtable.SetFeatureMask.asFunction<int Function(VTablePointer, int)>();
  late final _GetFeatureMaskFn =
      _vtable.GetFeatureMask.asFunction<int Function(VTablePointer)>();
  late final _SetPresentPerRenderOpDelayFn =
      _vtable.SetPresentPerRenderOpDelay.asFunction<
        int Function(VTablePointer, int)
      >();
  late final _GetPresentPerRenderOpDelayFn = _vtable
      .GetPresentPerRenderOpDelay.asFunction<int Function(VTablePointer)>();
  late final _SetSwapChainFn = _vtable
      .SetSwapChain.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _GetSwapChainFn =
      _vtable.GetSwapChain.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _ValidateContextFn = _vtable
      .ValidateContext.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _ReportLiveDeviceObjectsFn = _vtable
      .ReportLiveDeviceObjects.asFunction<int Function(VTablePointer, int)>();
  late final _ValidateContextForDispatchFn =
      _vtable.ValidateContextForDispatch.asFunction<
        int Function(VTablePointer, VTablePointer)
      >();

  /// Set a bit field of flags that will turn debug features on and off.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11debug-setfeaturemask>.
  @pragma('vm:prefer-inline')
  void setFeatureMask(int mask) {
    final hr$ = HRESULT(_SetFeatureMaskFn(ptr, mask));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Get a bitfield of flags that indicates which debug features are on or off.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11debug-getfeaturemask>.
  @pragma('vm:prefer-inline')
  int getFeatureMask() => _GetFeatureMaskFn(ptr);

  /// Set the number of milliseconds to sleep after `IDXGISwapChain.present` is
  /// called.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11debug-setpresentperrenderopdelay>.
  @pragma('vm:prefer-inline')
  void setPresentPerRenderOpDelay(int milliseconds) {
    final hr$ = HRESULT(_SetPresentPerRenderOpDelayFn(ptr, milliseconds));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Get the number of milliseconds to sleep after `IDXGISwapChain.present` is
  /// called.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11debug-getpresentperrenderopdelay>.
  @pragma('vm:prefer-inline')
  int getPresentPerRenderOpDelay() => _GetPresentPerRenderOpDelayFn(ptr);

  /// Sets a swap chain that the runtime will use for automatically calling
  /// `IDXGISwapChain.present`.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11debug-setswapchain>.
  @pragma('vm:prefer-inline')
  void setSwapChain(IDXGISwapChain? pSwapChain) {
    final hr$ = HRESULT(_SetSwapChainFn(ptr, pSwapChain?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Get the swap chain that the runtime will use for automatically calling
  /// `IDXGISwapChain.present`.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11debug-getswapchain>.
  IDXGISwapChain? getSwapChain() {
    final ppSwapChain = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetSwapChainFn(ptr, ppSwapChain));
    if (hr$.isError) {
      free(ppSwapChain);
      throw WindowsException(hr$);
    }
    final result$ = ppSwapChain.value;
    free(ppSwapChain);
    if (result$.isNull) return null;
    return IDXGISwapChain(result$);
  }

  /// Check to see if the draw pipeline state is valid.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11debug-validatecontext>.
  @pragma('vm:prefer-inline')
  void validateContext(ID3D11DeviceContext? pContext) {
    final hr$ = HRESULT(_ValidateContextFn(ptr, pContext?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Report information about a device object's lifetime.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11debug-reportlivedeviceobjects>.
  @pragma('vm:prefer-inline')
  void reportLiveDeviceObjects(D3D11_RLDO_FLAGS flags) {
    final hr$ = HRESULT(_ReportLiveDeviceObjectsFn(ptr, flags));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Verifies whether the dispatch pipeline state is valid.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11debug-validatecontextfordispatch>.
  @pragma('vm:prefer-inline')
  void validateContextForDispatch(ID3D11DeviceContext? pContext) {
    final hr$ = HRESULT(
      _ValidateContextForDispatchFn(ptr, pContext?.ptr ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'ID3D11Debug(ptr: $ptr)';
}

/// @nodoc
base class ID3D11DebugVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Uint32 mask)>
  >
  SetFeatureMask;
  external Pointer<NativeFunction<Uint32 Function(VTablePointer this$)>>
  GetFeatureMask;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Uint32 milliseconds)>
  >
  SetPresentPerRenderOpDelay;
  external Pointer<NativeFunction<Uint32 Function(VTablePointer this$)>>
  GetPresentPerRenderOpDelay;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, VTablePointer pSwapChain)
    >
  >
  SetSwapChain;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> ppSwapChain)
    >
  >
  GetSwapChain;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer pContext)>
  >
  ValidateContext;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 flags)>
  >
  ReportLiveDeviceObjects;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer pContext)>
  >
  ValidateContextForDispatch;
}

@internal
final class ID3D11DebugCompanion extends ComCompanion<ID3D11Debug> {
  const ID3D11DebugCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11Debug Function(VTablePointer) get fromPointer => ID3D11Debug.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11Debug;
}
