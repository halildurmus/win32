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
import 'id3d11devicecontext.g.dart';
import 'id3d11resource.g.dart';
import 'id3d11view.g.dart';
import 'id3ddevicecontextstate.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11DeviceContext1 = GUID.fromComponents(
  0xbb2c6faa,
  0xb5fb,
  0x4082,
  Uint8List.fromList(const [0x8e, 0x6b, 0x38, 0x8b, 0x8c, 0xfa, 0x90, 0xe1]),
);

/// The device context interface represents a device context; it is used to
/// render commands.
///
/// ID3D11DeviceContext1 adds new methods to those in ID3D11DeviceContext.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nn-d3d11_1-id3d11devicecontext1>.
///
/// {@category com}
class ID3D11DeviceContext1 extends ID3D11DeviceContext implements ComInterface {
  /// Creates a new instance of [ID3D11DeviceContext1] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11DeviceContext1]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ID3D11DeviceContext1(super.ptr)
    : _vtable = ptr.value.cast<ID3D11DeviceContext1Vtbl>().ref;

  /// Creates a new instance of [ID3D11DeviceContext1] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11DeviceContext1] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11DeviceContext1.from(IUnknown interface) =>
      interface.queryInterface();

  final ID3D11DeviceContext1Vtbl _vtable;
  late final _CopySubresourceRegion1Fn =
      _vtable.CopySubresourceRegion1.asFunction<
        void Function(
          VTablePointer,
          VTablePointer,
          int,
          int,
          int,
          int,
          VTablePointer,
          int,
          Pointer<D3D11_BOX>,
          int,
        )
      >();
  late final _UpdateSubresource1Fn =
      _vtable.UpdateSubresource1.asFunction<
        void Function(
          VTablePointer,
          VTablePointer,
          int,
          Pointer<D3D11_BOX>,
          Pointer,
          int,
          int,
          int,
        )
      >();
  late final _DiscardResourceFn =
      _vtable.DiscardResource.asFunction<
        void Function(VTablePointer, VTablePointer)
      >();
  late final _DiscardViewFn = _vtable
      .DiscardView.asFunction<void Function(VTablePointer, VTablePointer)>();
  late final _VSSetConstantBuffers1Fn =
      _vtable.VSSetConstantBuffers1.asFunction<
        void Function(
          VTablePointer,
          int,
          int,
          Pointer<VTablePointer>,
          Pointer<Uint32>,
          Pointer<Uint32>,
        )
      >();
  late final _HSSetConstantBuffers1Fn =
      _vtable.HSSetConstantBuffers1.asFunction<
        void Function(
          VTablePointer,
          int,
          int,
          Pointer<VTablePointer>,
          Pointer<Uint32>,
          Pointer<Uint32>,
        )
      >();
  late final _DSSetConstantBuffers1Fn =
      _vtable.DSSetConstantBuffers1.asFunction<
        void Function(
          VTablePointer,
          int,
          int,
          Pointer<VTablePointer>,
          Pointer<Uint32>,
          Pointer<Uint32>,
        )
      >();
  late final _GSSetConstantBuffers1Fn =
      _vtable.GSSetConstantBuffers1.asFunction<
        void Function(
          VTablePointer,
          int,
          int,
          Pointer<VTablePointer>,
          Pointer<Uint32>,
          Pointer<Uint32>,
        )
      >();
  late final _PSSetConstantBuffers1Fn =
      _vtable.PSSetConstantBuffers1.asFunction<
        void Function(
          VTablePointer,
          int,
          int,
          Pointer<VTablePointer>,
          Pointer<Uint32>,
          Pointer<Uint32>,
        )
      >();
  late final _CSSetConstantBuffers1Fn =
      _vtable.CSSetConstantBuffers1.asFunction<
        void Function(
          VTablePointer,
          int,
          int,
          Pointer<VTablePointer>,
          Pointer<Uint32>,
          Pointer<Uint32>,
        )
      >();
  late final _VSGetConstantBuffers1Fn =
      _vtable.VSGetConstantBuffers1.asFunction<
        void Function(
          VTablePointer,
          int,
          int,
          Pointer<VTablePointer>,
          Pointer<Uint32>,
          Pointer<Uint32>,
        )
      >();
  late final _HSGetConstantBuffers1Fn =
      _vtable.HSGetConstantBuffers1.asFunction<
        void Function(
          VTablePointer,
          int,
          int,
          Pointer<VTablePointer>,
          Pointer<Uint32>,
          Pointer<Uint32>,
        )
      >();
  late final _DSGetConstantBuffers1Fn =
      _vtable.DSGetConstantBuffers1.asFunction<
        void Function(
          VTablePointer,
          int,
          int,
          Pointer<VTablePointer>,
          Pointer<Uint32>,
          Pointer<Uint32>,
        )
      >();
  late final _GSGetConstantBuffers1Fn =
      _vtable.GSGetConstantBuffers1.asFunction<
        void Function(
          VTablePointer,
          int,
          int,
          Pointer<VTablePointer>,
          Pointer<Uint32>,
          Pointer<Uint32>,
        )
      >();
  late final _PSGetConstantBuffers1Fn =
      _vtable.PSGetConstantBuffers1.asFunction<
        void Function(
          VTablePointer,
          int,
          int,
          Pointer<VTablePointer>,
          Pointer<Uint32>,
          Pointer<Uint32>,
        )
      >();
  late final _CSGetConstantBuffers1Fn =
      _vtable.CSGetConstantBuffers1.asFunction<
        void Function(
          VTablePointer,
          int,
          int,
          Pointer<VTablePointer>,
          Pointer<Uint32>,
          Pointer<Uint32>,
        )
      >();
  late final _SwapDeviceContextStateFn =
      _vtable.SwapDeviceContextState.asFunction<
        void Function(VTablePointer, VTablePointer, Pointer<VTablePointer>)
      >();
  late final _ClearViewFn =
      _vtable.ClearView.asFunction<
        void Function(
          VTablePointer,
          VTablePointer,
          Pointer<Float>,
          Pointer<RECT>,
          int,
        )
      >();
  late final _DiscardView1Fn =
      _vtable.DiscardView1.asFunction<
        void Function(VTablePointer, VTablePointer, Pointer<RECT>, int)
      >();

  /// Copies a region from a source resource to a destination resource.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3d11devicecontext1-copysubresourceregion1>.
  @pragma('vm:prefer-inline')
  void copySubresourceRegion1(
    ID3D11Resource? pDstResource,
    int dstSubresource,
    int dstX,
    int dstY,
    int dstZ,
    ID3D11Resource? pSrcResource,
    int srcSubresource,
    Pointer<D3D11_BOX>? pSrcBox,
    int copyFlags,
  ) => _CopySubresourceRegion1Fn(
    ptr,
    pDstResource?.ptr ?? nullptr,
    dstSubresource,
    dstX,
    dstY,
    dstZ,
    pSrcResource?.ptr ?? nullptr,
    srcSubresource,
    pSrcBox ?? nullptr,
    copyFlags,
  );

  /// The CPU copies data from memory to a subresource created in non-mappable
  /// memory.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3d11devicecontext1-updatesubresource1>.
  @pragma('vm:prefer-inline')
  void updateSubresource1(
    ID3D11Resource? pDstResource,
    int dstSubresource,
    Pointer<D3D11_BOX>? pDstBox,
    Pointer pSrcData,
    int srcRowPitch,
    int srcDepthPitch,
    int copyFlags,
  ) => _UpdateSubresource1Fn(
    ptr,
    pDstResource?.ptr ?? nullptr,
    dstSubresource,
    pDstBox ?? nullptr,
    pSrcData,
    srcRowPitch,
    srcDepthPitch,
    copyFlags,
  );

  /// Discards a resource from the device context.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3d11devicecontext1-discardresource>.
  @pragma('vm:prefer-inline')
  void discardResource(ID3D11Resource? pResource) =>
      _DiscardResourceFn(ptr, pResource?.ptr ?? nullptr);

  /// Discards a resource view from the device context.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3d11devicecontext1-discardview>.
  @pragma('vm:prefer-inline')
  void discardView(ID3D11View? pResourceView) =>
      _DiscardViewFn(ptr, pResourceView?.ptr ?? nullptr);

  /// Sets the constant buffers that the vertex shader pipeline stage uses.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3d11devicecontext1-vssetconstantbuffers1>.
  @pragma('vm:prefer-inline')
  void vSSetConstantBuffers1(
    int startSlot,
    int numBuffers,
    Pointer<VTablePointer>? ppConstantBuffers,
    Pointer<Uint32>? pFirstConstant,
    Pointer<Uint32>? pNumConstants,
  ) => _VSSetConstantBuffers1Fn(
    ptr,
    startSlot,
    numBuffers,
    ppConstantBuffers ?? nullptr,
    pFirstConstant ?? nullptr,
    pNumConstants ?? nullptr,
  );

  /// Sets the constant buffers that the hull-shader stage of the pipeline uses.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3d11devicecontext1-hssetconstantbuffers1>.
  @pragma('vm:prefer-inline')
  void hSSetConstantBuffers1(
    int startSlot,
    int numBuffers,
    Pointer<VTablePointer>? ppConstantBuffers,
    Pointer<Uint32>? pFirstConstant,
    Pointer<Uint32>? pNumConstants,
  ) => _HSSetConstantBuffers1Fn(
    ptr,
    startSlot,
    numBuffers,
    ppConstantBuffers ?? nullptr,
    pFirstConstant ?? nullptr,
    pNumConstants ?? nullptr,
  );

  /// Sets the constant buffers that the domain-shader stage uses.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3d11devicecontext1-dssetconstantbuffers1>.
  @pragma('vm:prefer-inline')
  void dSSetConstantBuffers1(
    int startSlot,
    int numBuffers,
    Pointer<VTablePointer>? ppConstantBuffers,
    Pointer<Uint32>? pFirstConstant,
    Pointer<Uint32>? pNumConstants,
  ) => _DSSetConstantBuffers1Fn(
    ptr,
    startSlot,
    numBuffers,
    ppConstantBuffers ?? nullptr,
    pFirstConstant ?? nullptr,
    pNumConstants ?? nullptr,
  );

  /// Sets the constant buffers that the geometry shader pipeline stage uses.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3d11devicecontext1-gssetconstantbuffers1>.
  @pragma('vm:prefer-inline')
  void gSSetConstantBuffers1(
    int startSlot,
    int numBuffers,
    Pointer<VTablePointer>? ppConstantBuffers,
    Pointer<Uint32>? pFirstConstant,
    Pointer<Uint32>? pNumConstants,
  ) => _GSSetConstantBuffers1Fn(
    ptr,
    startSlot,
    numBuffers,
    ppConstantBuffers ?? nullptr,
    pFirstConstant ?? nullptr,
    pNumConstants ?? nullptr,
  );

  /// Sets the constant buffers that the pixel shader pipeline stage uses, and
  /// enables the shader to access other parts of the buffer.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3d11devicecontext1-pssetconstantbuffers1>.
  @pragma('vm:prefer-inline')
  void pSSetConstantBuffers1(
    int startSlot,
    int numBuffers,
    Pointer<VTablePointer>? ppConstantBuffers,
    Pointer<Uint32>? pFirstConstant,
    Pointer<Uint32>? pNumConstants,
  ) => _PSSetConstantBuffers1Fn(
    ptr,
    startSlot,
    numBuffers,
    ppConstantBuffers ?? nullptr,
    pFirstConstant ?? nullptr,
    pNumConstants ?? nullptr,
  );

  /// Sets the constant buffers that the compute-shader stage uses.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3d11devicecontext1-cssetconstantbuffers1>.
  @pragma('vm:prefer-inline')
  void cSSetConstantBuffers1(
    int startSlot,
    int numBuffers,
    Pointer<VTablePointer>? ppConstantBuffers,
    Pointer<Uint32>? pFirstConstant,
    Pointer<Uint32>? pNumConstants,
  ) => _CSSetConstantBuffers1Fn(
    ptr,
    startSlot,
    numBuffers,
    ppConstantBuffers ?? nullptr,
    pFirstConstant ?? nullptr,
    pNumConstants ?? nullptr,
  );

  /// Gets the constant buffers that the vertex shader pipeline stage uses.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3d11devicecontext1-vsgetconstantbuffers1>.
  @pragma('vm:prefer-inline')
  void vSGetConstantBuffers1(
    int startSlot,
    int numBuffers,
    Pointer<VTablePointer>? ppConstantBuffers,
    Pointer<Uint32>? pFirstConstant,
    Pointer<Uint32>? pNumConstants,
  ) => _VSGetConstantBuffers1Fn(
    ptr,
    startSlot,
    numBuffers,
    ppConstantBuffers ?? nullptr,
    pFirstConstant ?? nullptr,
    pNumConstants ?? nullptr,
  );

  /// Gets the constant buffers that the hull-shader stage uses.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3d11devicecontext1-hsgetconstantbuffers1>.
  @pragma('vm:prefer-inline')
  void hSGetConstantBuffers1(
    int startSlot,
    int numBuffers,
    Pointer<VTablePointer>? ppConstantBuffers,
    Pointer<Uint32>? pFirstConstant,
    Pointer<Uint32>? pNumConstants,
  ) => _HSGetConstantBuffers1Fn(
    ptr,
    startSlot,
    numBuffers,
    ppConstantBuffers ?? nullptr,
    pFirstConstant ?? nullptr,
    pNumConstants ?? nullptr,
  );

  /// Gets the constant buffers that the domain-shader stage uses.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3d11devicecontext1-dsgetconstantbuffers1>.
  @pragma('vm:prefer-inline')
  void dSGetConstantBuffers1(
    int startSlot,
    int numBuffers,
    Pointer<VTablePointer>? ppConstantBuffers,
    Pointer<Uint32>? pFirstConstant,
    Pointer<Uint32>? pNumConstants,
  ) => _DSGetConstantBuffers1Fn(
    ptr,
    startSlot,
    numBuffers,
    ppConstantBuffers ?? nullptr,
    pFirstConstant ?? nullptr,
    pNumConstants ?? nullptr,
  );

  /// Gets the constant buffers that the geometry shader pipeline stage uses.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3d11devicecontext1-gsgetconstantbuffers1>.
  @pragma('vm:prefer-inline')
  void gSGetConstantBuffers1(
    int startSlot,
    int numBuffers,
    Pointer<VTablePointer>? ppConstantBuffers,
    Pointer<Uint32>? pFirstConstant,
    Pointer<Uint32>? pNumConstants,
  ) => _GSGetConstantBuffers1Fn(
    ptr,
    startSlot,
    numBuffers,
    ppConstantBuffers ?? nullptr,
    pFirstConstant ?? nullptr,
    pNumConstants ?? nullptr,
  );

  /// Gets the constant buffers that the pixel shader pipeline stage uses.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3d11devicecontext1-psgetconstantbuffers1>.
  @pragma('vm:prefer-inline')
  void pSGetConstantBuffers1(
    int startSlot,
    int numBuffers,
    Pointer<VTablePointer>? ppConstantBuffers,
    Pointer<Uint32>? pFirstConstant,
    Pointer<Uint32>? pNumConstants,
  ) => _PSGetConstantBuffers1Fn(
    ptr,
    startSlot,
    numBuffers,
    ppConstantBuffers ?? nullptr,
    pFirstConstant ?? nullptr,
    pNumConstants ?? nullptr,
  );

  /// Gets the constant buffers that the compute-shader stage uses.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3d11devicecontext1-csgetconstantbuffers1>.
  @pragma('vm:prefer-inline')
  void cSGetConstantBuffers1(
    int startSlot,
    int numBuffers,
    Pointer<VTablePointer>? ppConstantBuffers,
    Pointer<Uint32>? pFirstConstant,
    Pointer<Uint32>? pNumConstants,
  ) => _CSGetConstantBuffers1Fn(
    ptr,
    startSlot,
    numBuffers,
    ppConstantBuffers ?? nullptr,
    pFirstConstant ?? nullptr,
    pNumConstants ?? nullptr,
  );

  /// Activates the given context state object and changes the current device
  /// behavior to Direct3D 11, Direct3D 10.1, or Direct3D 10.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3d11devicecontext1-swapdevicecontextstate>.
  @pragma('vm:prefer-inline')
  void swapDeviceContextState(
    ID3DDeviceContextState? pState,
    Pointer<VTablePointer>? ppPreviousState,
  ) => _SwapDeviceContextStateFn(
    ptr,
    pState?.ptr ?? nullptr,
    ppPreviousState ?? nullptr,
  );

  /// Sets all the elements in a resource view to one value.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3d11devicecontext1-clearview>.
  @pragma('vm:prefer-inline')
  void clearView(
    ID3D11View? pView,
    Pointer<Float> color,
    Pointer<RECT>? pRect,
    int numRects,
  ) => _ClearViewFn(
    ptr,
    pView?.ptr ?? nullptr,
    color,
    pRect ?? nullptr,
    numRects,
  );

  /// Discards the specified elements in a resource view from the device
  /// context.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3d11devicecontext1-discardview1>.
  @pragma('vm:prefer-inline')
  void discardView1(
    ID3D11View? pResourceView,
    Pointer<RECT>? pRects,
    int numRects,
  ) => _DiscardView1Fn(
    ptr,
    pResourceView?.ptr ?? nullptr,
    pRects ?? nullptr,
    numRects,
  );

  @override
  String toString() => 'ID3D11DeviceContext1(ptr: $ptr)';
}

/// @nodoc
base class ID3D11DeviceContext1Vtbl extends Struct {
  external ID3D11DeviceContextVtbl base$;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pDstResource,
        Uint32 dstSubresource,
        Uint32 dstX,
        Uint32 dstY,
        Uint32 dstZ,
        VTablePointer pSrcResource,
        Uint32 srcSubresource,
        Pointer<D3D11_BOX> pSrcBox,
        Uint32 copyFlags,
      )
    >
  >
  CopySubresourceRegion1;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pDstResource,
        Uint32 dstSubresource,
        Pointer<D3D11_BOX> pDstBox,
        Pointer pSrcData,
        Uint32 srcRowPitch,
        Uint32 srcDepthPitch,
        Uint32 copyFlags,
      )
    >
  >
  UpdateSubresource1;
  external Pointer<
    NativeFunction<Void Function(VTablePointer this$, VTablePointer pResource)>
  >
  DiscardResource;
  external Pointer<
    NativeFunction<
      Void Function(VTablePointer this$, VTablePointer pResourceView)
    >
  >
  DiscardView;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numBuffers,
        Pointer<VTablePointer> ppConstantBuffers,
        Pointer<Uint32> pFirstConstant,
        Pointer<Uint32> pNumConstants,
      )
    >
  >
  VSSetConstantBuffers1;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numBuffers,
        Pointer<VTablePointer> ppConstantBuffers,
        Pointer<Uint32> pFirstConstant,
        Pointer<Uint32> pNumConstants,
      )
    >
  >
  HSSetConstantBuffers1;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numBuffers,
        Pointer<VTablePointer> ppConstantBuffers,
        Pointer<Uint32> pFirstConstant,
        Pointer<Uint32> pNumConstants,
      )
    >
  >
  DSSetConstantBuffers1;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numBuffers,
        Pointer<VTablePointer> ppConstantBuffers,
        Pointer<Uint32> pFirstConstant,
        Pointer<Uint32> pNumConstants,
      )
    >
  >
  GSSetConstantBuffers1;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numBuffers,
        Pointer<VTablePointer> ppConstantBuffers,
        Pointer<Uint32> pFirstConstant,
        Pointer<Uint32> pNumConstants,
      )
    >
  >
  PSSetConstantBuffers1;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numBuffers,
        Pointer<VTablePointer> ppConstantBuffers,
        Pointer<Uint32> pFirstConstant,
        Pointer<Uint32> pNumConstants,
      )
    >
  >
  CSSetConstantBuffers1;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numBuffers,
        Pointer<VTablePointer> ppConstantBuffers,
        Pointer<Uint32> pFirstConstant,
        Pointer<Uint32> pNumConstants,
      )
    >
  >
  VSGetConstantBuffers1;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numBuffers,
        Pointer<VTablePointer> ppConstantBuffers,
        Pointer<Uint32> pFirstConstant,
        Pointer<Uint32> pNumConstants,
      )
    >
  >
  HSGetConstantBuffers1;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numBuffers,
        Pointer<VTablePointer> ppConstantBuffers,
        Pointer<Uint32> pFirstConstant,
        Pointer<Uint32> pNumConstants,
      )
    >
  >
  DSGetConstantBuffers1;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numBuffers,
        Pointer<VTablePointer> ppConstantBuffers,
        Pointer<Uint32> pFirstConstant,
        Pointer<Uint32> pNumConstants,
      )
    >
  >
  GSGetConstantBuffers1;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numBuffers,
        Pointer<VTablePointer> ppConstantBuffers,
        Pointer<Uint32> pFirstConstant,
        Pointer<Uint32> pNumConstants,
      )
    >
  >
  PSGetConstantBuffers1;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numBuffers,
        Pointer<VTablePointer> ppConstantBuffers,
        Pointer<Uint32> pFirstConstant,
        Pointer<Uint32> pNumConstants,
      )
    >
  >
  CSGetConstantBuffers1;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pState,
        Pointer<VTablePointer> ppPreviousState,
      )
    >
  >
  SwapDeviceContextState;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pView,
        Pointer<Float> color,
        Pointer<RECT> pRect,
        Uint32 numRects,
      )
    >
  >
  ClearView;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pResourceView,
        Pointer<RECT> pRects,
        Uint32 numRects,
      )
    >
  >
  DiscardView1;
}

@internal
final class ID3D11DeviceContext1Companion
    extends ComCompanion<ID3D11DeviceContext1> {
  const ID3D11DeviceContext1Companion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11DeviceContext1 Function(VTablePointer) get fromPointer =>
      ID3D11DeviceContext1.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11DeviceContext1;
}
