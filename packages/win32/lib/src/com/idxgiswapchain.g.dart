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
import 'idxgioutput.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IDXGISwapChain = GUID.fromComponents(
  0x310d36a0,
  0xd2e7,
  0x4c0a,
  Uint8List.fromList(const [0xaa, 0x4, 0x6a, 0x9d, 0x23, 0xb8, 0x88, 0x6a]),
);

/// Implements one or more surfaces for storing rendered data before presenting
/// it to an output.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dxgi/nn-dxgi-idxgiswapchain>.
///
/// {@category com}
class IDXGISwapChain extends IDXGIDeviceSubObject implements ComInterface {
  /// Creates a new instance of [IDXGISwapChain] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IDXGISwapChain]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  IDXGISwapChain(super.ptr)
    : _vtable = ptr.value.cast<IDXGISwapChainVtbl>().ref;

  /// Creates a new instance of [IDXGISwapChain] from an existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDXGISwapChain] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDXGISwapChain.from(IUnknown interface) => interface.queryInterface();

  final IDXGISwapChainVtbl _vtable;
  late final _PresentFn =
      _vtable.Present.asFunction<int Function(VTablePointer, int, int)>();
  late final _GetBufferFn =
      _vtable.GetBuffer.asFunction<
        int Function(VTablePointer, int, Pointer<GUID>, Pointer<Pointer>)
      >();
  late final _SetFullscreenStateFn =
      _vtable.SetFullscreenState.asFunction<
        int Function(VTablePointer, int, VTablePointer)
      >();
  late final _GetFullscreenStateFn =
      _vtable.GetFullscreenState.asFunction<
        int Function(VTablePointer, Pointer<Int32>, Pointer<VTablePointer>)
      >();
  late final _GetDescFn =
      _vtable.GetDesc.asFunction<
        int Function(VTablePointer, Pointer<DXGI_SWAP_CHAIN_DESC>)
      >();
  late final _ResizeBuffersFn =
      _vtable.ResizeBuffers.asFunction<
        int Function(VTablePointer, int, int, int, int, int)
      >();
  late final _ResizeTargetFn =
      _vtable.ResizeTarget.asFunction<
        int Function(VTablePointer, Pointer<DXGI_MODE_DESC>)
      >();
  late final _GetContainingOutputFn =
      _vtable.GetContainingOutput.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetFrameStatisticsFn =
      _vtable.GetFrameStatistics.asFunction<
        int Function(VTablePointer, Pointer<DXGI_FRAME_STATISTICS>)
      >();
  late final _GetLastPresentCountFn =
      _vtable.GetLastPresentCount.asFunction<
        int Function(VTablePointer, Pointer<Uint32>)
      >();

  /// Presents a rendered image to the user.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dxgi/nf-dxgi-idxgiswapchain-present>.
  @pragma('vm:prefer-inline')
  HRESULT present(int syncInterval, DXGI_PRESENT flags) =>
      HRESULT(_PresentFn(ptr, syncInterval, flags));

  /// Accesses one of the swap-chain's back buffers.
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
  /// <https://learn.microsoft.com/windows/win32/api/dxgi/nf-dxgi-idxgiswapchain-getbuffer>.
  T getBuffer<T extends IUnknown>(int buffer) {
    final companion = ComInterface.type<T>();
    final riid = companion.iid.toNative();
    final ppSurface = adaptiveCalloc<Pointer>();
    final hr$ = HRESULT(_GetBufferFn(ptr, buffer, riid, ppSurface));
    free(riid);
    if (hr$.isError) {
      free(ppSurface);
      throw WindowsException(hr$);
    }
    final result = companion.fromPointer(ppSurface.value.cast());
    free(ppSurface);
    return result;
  }

  /// Sets the display state to windowed or full screen.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dxgi/nf-dxgi-idxgiswapchain-setfullscreenstate>.
  @pragma('vm:prefer-inline')
  void setFullscreenState(bool fullscreen, IDXGIOutput? pTarget) {
    final hr$ = HRESULT(
      _SetFullscreenStateFn(
        ptr,
        fullscreen ? TRUE : FALSE,
        pTarget?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Get the state associated with full-screen mode.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dxgi/nf-dxgi-idxgiswapchain-getfullscreenstate>.
  @pragma('vm:prefer-inline')
  void getFullscreenState(
    Pointer<Int32>? pFullscreen,
    Pointer<VTablePointer>? ppTarget,
  ) {
    final hr$ = HRESULT(
      _GetFullscreenStateFn(ptr, pFullscreen ?? nullptr, ppTarget ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Get a description of the swap chain.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dxgi/nf-dxgi-idxgiswapchain-getdesc>.
  Pointer<DXGI_SWAP_CHAIN_DESC> getDesc() {
    final pDesc = adaptiveCalloc<DXGI_SWAP_CHAIN_DESC>();
    final hr$ = HRESULT(_GetDescFn(ptr, pDesc));
    if (hr$.isError) {
      free(pDesc);
      throw WindowsException(hr$);
    }
    return pDesc;
  }

  /// Changes the swap chain's back buffer size, format, and number of buffers.
  ///
  /// This should be called when the application window is resized.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dxgi/nf-dxgi-idxgiswapchain-resizebuffers>.
  @pragma('vm:prefer-inline')
  void resizeBuffers(
    int bufferCount,
    int width,
    int height,
    DXGI_FORMAT newFormat,
    DXGI_SWAP_CHAIN_FLAG swapChainFlags,
  ) {
    final hr$ = HRESULT(
      _ResizeBuffersFn(
        ptr,
        bufferCount,
        width,
        height,
        newFormat,
        swapChainFlags,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Resizes the output target.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dxgi/nf-dxgi-idxgiswapchain-resizetarget>.
  @pragma('vm:prefer-inline')
  void resizeTarget(Pointer<DXGI_MODE_DESC> pNewTargetParameters) {
    final hr$ = HRESULT(_ResizeTargetFn(ptr, pNewTargetParameters));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Get the output (the display monitor) that contains the majority of the
  /// client area of the target window.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dxgi/nf-dxgi-idxgiswapchain-getcontainingoutput>.
  IDXGIOutput? getContainingOutput() {
    final ppOutput = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetContainingOutputFn(ptr, ppOutput));
    if (hr$.isError) {
      free(ppOutput);
      throw WindowsException(hr$);
    }
    final result$ = ppOutput.value;
    free(ppOutput);
    if (result$.isNull) return null;
    return IDXGIOutput(result$);
  }

  /// Gets performance statistics about the last render frame.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dxgi/nf-dxgi-idxgiswapchain-getframestatistics>.
  Pointer<DXGI_FRAME_STATISTICS> getFrameStatistics() {
    final pStats = adaptiveCalloc<DXGI_FRAME_STATISTICS>();
    final hr$ = HRESULT(_GetFrameStatisticsFn(ptr, pStats));
    if (hr$.isError) {
      free(pStats);
      throw WindowsException(hr$);
    }
    return pStats;
  }

  /// Gets the number of times that `IDXGISwapChain.present` or
  /// `IDXGISwapChain1.present1` has been called.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dxgi/nf-dxgi-idxgiswapchain-getlastpresentcount>.
  int getLastPresentCount() {
    final pLastPresentCount = adaptiveCalloc<Uint32>();
    final hr$ = HRESULT(_GetLastPresentCountFn(ptr, pLastPresentCount));
    if (hr$.isError) {
      free(pLastPresentCount);
      throw WindowsException(hr$);
    }
    final result$ = pLastPresentCount.value;
    free(pLastPresentCount);
    return result$;
  }

  @override
  String toString() => 'IDXGISwapChain(ptr: $ptr)';
}

/// @nodoc
base class IDXGISwapChainVtbl extends Struct {
  external IDXGIDeviceSubObjectVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Uint32 syncInterval, Uint32 flags)
    >
  >
  Present;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 buffer,
        Pointer<GUID> riid,
        Pointer<Pointer> ppSurface,
      )
    >
  >
  GetBuffer;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 fullscreen,
        VTablePointer pTarget,
      )
    >
  >
  SetFullscreenState;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Int32> pFullscreen,
        Pointer<VTablePointer> ppTarget,
      )
    >
  >
  GetFullscreenState;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<DXGI_SWAP_CHAIN_DESC> pDesc)
    >
  >
  GetDesc;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 bufferCount,
        Uint32 width,
        Uint32 height,
        Int32 newFormat,
        Uint32 swapChainFlags,
      )
    >
  >
  ResizeBuffers;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<DXGI_MODE_DESC> pNewTargetParameters,
      )
    >
  >
  ResizeTarget;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> ppOutput)
    >
  >
  GetContainingOutput;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<DXGI_FRAME_STATISTICS> pStats)
    >
  >
  GetFrameStatistics;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Uint32> pLastPresentCount)
    >
  >
  GetLastPresentCount;
}

@internal
final class IDXGISwapChainCompanion extends ComCompanion<IDXGISwapChain> {
  const IDXGISwapChainCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDXGISwapChain Function(VTablePointer) get fromPointer => IDXGISwapChain.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDXGISwapChain;
}
