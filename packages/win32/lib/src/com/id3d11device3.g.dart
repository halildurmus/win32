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
import 'id3d11device2.g.dart';
import 'id3d11devicecontext3.g.dart';
import 'id3d11query1.g.dart';
import 'id3d11rasterizerstate2.g.dart';
import 'id3d11rendertargetview1.g.dart';
import 'id3d11resource.g.dart';
import 'id3d11shaderresourceview1.g.dart';
import 'id3d11texture2d1.g.dart';
import 'id3d11texture3d1.g.dart';
import 'id3d11unorderedaccessview1.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11Device3 = GUID.fromComponents(
  0xa05c8c37,
  0xd2c6,
  0x4732,
  Uint8List.fromList(const [0xb3, 0xa0, 0x9c, 0xe0, 0xb0, 0xdc, 0x9a, 0xe6]),
);

/// Represents a virtual adapter; it is used to create resources.
///
/// ID3D11Device3 adds new methods to those in ID3D11Device2.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11_3/nn-d3d11_3-id3d11device3>.
///
/// {@category com}
class ID3D11Device3 extends ID3D11Device2 implements ComInterface {
  /// Creates a new instance of [ID3D11Device3] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11Device3]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ID3D11Device3(super.ptr) : _vtable = ptr.value.cast<ID3D11Device3Vtbl>().ref;

  /// Creates a new instance of [ID3D11Device3] from an existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11Device3] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11Device3.from(IUnknown interface) => interface.queryInterface();

  final ID3D11Device3Vtbl _vtable;
  late final _CreateTexture2D1Fn =
      _vtable.CreateTexture2D1.asFunction<
        int Function(
          VTablePointer,
          Pointer<D3D11_TEXTURE2D_DESC1>,
          Pointer<D3D11_SUBRESOURCE_DATA>,
          Pointer<VTablePointer>,
        )
      >();
  late final _CreateTexture3D1Fn =
      _vtable.CreateTexture3D1.asFunction<
        int Function(
          VTablePointer,
          Pointer<D3D11_TEXTURE3D_DESC1>,
          Pointer<D3D11_SUBRESOURCE_DATA>,
          Pointer<VTablePointer>,
        )
      >();
  late final _CreateRasterizerState2Fn =
      _vtable.CreateRasterizerState2.asFunction<
        int Function(
          VTablePointer,
          Pointer<D3D11_RASTERIZER_DESC2>,
          Pointer<VTablePointer>,
        )
      >();
  late final _CreateShaderResourceView1Fn =
      _vtable.CreateShaderResourceView1.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          Pointer<D3D11_SHADER_RESOURCE_VIEW_DESC1>,
          Pointer<VTablePointer>,
        )
      >();
  late final _CreateUnorderedAccessView1Fn =
      _vtable.CreateUnorderedAccessView1.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          Pointer<D3D11_UNORDERED_ACCESS_VIEW_DESC1>,
          Pointer<VTablePointer>,
        )
      >();
  late final _CreateRenderTargetView1Fn =
      _vtable.CreateRenderTargetView1.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          Pointer<D3D11_RENDER_TARGET_VIEW_DESC1>,
          Pointer<VTablePointer>,
        )
      >();
  late final _CreateQuery1Fn =
      _vtable.CreateQuery1.asFunction<
        int Function(
          VTablePointer,
          Pointer<D3D11_QUERY_DESC1>,
          Pointer<VTablePointer>,
        )
      >();
  late final _GetImmediateContext3Fn =
      _vtable.GetImmediateContext3.asFunction<
        void Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _CreateDeferredContext3Fn =
      _vtable.CreateDeferredContext3.asFunction<
        int Function(VTablePointer, int, Pointer<VTablePointer>)
      >();
  late final _WriteToSubresourceFn =
      _vtable.WriteToSubresource.asFunction<
        void Function(
          VTablePointer,
          VTablePointer,
          int,
          Pointer<D3D11_BOX>,
          Pointer,
          int,
          int,
        )
      >();
  late final _ReadFromSubresourceFn =
      _vtable.ReadFromSubresource.asFunction<
        void Function(
          VTablePointer,
          Pointer,
          int,
          int,
          VTablePointer,
          int,
          Pointer<D3D11_BOX>,
        )
      >();

  /// Creates a 2D texture.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_3/nf-d3d11_3-id3d11device3-createtexture2d1>.
  @pragma('vm:prefer-inline')
  void createTexture2D1(
    Pointer<D3D11_TEXTURE2D_DESC1> pDesc1,
    Pointer<D3D11_SUBRESOURCE_DATA>? pInitialData,
    Pointer<VTablePointer>? ppTexture2D,
  ) {
    final hr$ = HRESULT(
      _CreateTexture2D1Fn(
        ptr,
        pDesc1,
        pInitialData ?? nullptr,
        ppTexture2D ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Creates a 3D texture.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_3/nf-d3d11_3-id3d11device3-createtexture3d1>.
  @pragma('vm:prefer-inline')
  void createTexture3D1(
    Pointer<D3D11_TEXTURE3D_DESC1> pDesc1,
    Pointer<D3D11_SUBRESOURCE_DATA>? pInitialData,
    Pointer<VTablePointer>? ppTexture3D,
  ) {
    final hr$ = HRESULT(
      _CreateTexture3D1Fn(
        ptr,
        pDesc1,
        pInitialData ?? nullptr,
        ppTexture3D ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Creates a rasterizer state object that informs the rasterizer stage how to
  /// behave and forces the sample count while UAV rendering or rasterizing.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_3/nf-d3d11_3-id3d11device3-createrasterizerstate2>.
  @pragma('vm:prefer-inline')
  void createRasterizerState2(
    Pointer<D3D11_RASTERIZER_DESC2> pRasterizerDesc,
    Pointer<VTablePointer>? ppRasterizerState,
  ) {
    final hr$ = HRESULT(
      _CreateRasterizerState2Fn(
        ptr,
        pRasterizerDesc,
        ppRasterizerState ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Creates a shader-resource view for accessing data in a resource.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_3/nf-d3d11_3-id3d11device3-createshaderresourceview1>.
  @pragma('vm:prefer-inline')
  void createShaderResourceView1(
    ID3D11Resource? pResource,
    Pointer<D3D11_SHADER_RESOURCE_VIEW_DESC1>? pDesc1,
    Pointer<VTablePointer>? ppSRView1,
  ) {
    final hr$ = HRESULT(
      _CreateShaderResourceView1Fn(
        ptr,
        pResource?.ptr ?? nullptr,
        pDesc1 ?? nullptr,
        ppSRView1 ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Creates a view for accessing an unordered access resource.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_3/nf-d3d11_3-id3d11device3-createunorderedaccessview1>.
  @pragma('vm:prefer-inline')
  void createUnorderedAccessView1(
    ID3D11Resource? pResource,
    Pointer<D3D11_UNORDERED_ACCESS_VIEW_DESC1>? pDesc1,
    Pointer<VTablePointer>? ppUAView1,
  ) {
    final hr$ = HRESULT(
      _CreateUnorderedAccessView1Fn(
        ptr,
        pResource?.ptr ?? nullptr,
        pDesc1 ?? nullptr,
        ppUAView1 ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Creates a render-target view for accessing resource data.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_3/nf-d3d11_3-id3d11device3-createrendertargetview1>.
  @pragma('vm:prefer-inline')
  void createRenderTargetView1(
    ID3D11Resource? pResource,
    Pointer<D3D11_RENDER_TARGET_VIEW_DESC1>? pDesc1,
    Pointer<VTablePointer>? ppRTView1,
  ) {
    final hr$ = HRESULT(
      _CreateRenderTargetView1Fn(
        ptr,
        pResource?.ptr ?? nullptr,
        pDesc1 ?? nullptr,
        ppRTView1 ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Creates a query object for querying information from the graphics
  /// processing unit (GPU).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_3/nf-d3d11_3-id3d11device3-createquery1>.
  @pragma('vm:prefer-inline')
  void createQuery1(
    Pointer<D3D11_QUERY_DESC1> pQueryDesc1,
    Pointer<VTablePointer>? ppQuery1,
  ) {
    final hr$ = HRESULT(_CreateQuery1Fn(ptr, pQueryDesc1, ppQuery1 ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets an immediate context, which can play back command lists.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_3/nf-d3d11_3-id3d11device3-getimmediatecontext3>.
  @pragma('vm:prefer-inline')
  void getImmediateContext3(Pointer<VTablePointer> ppImmediateContext) =>
      _GetImmediateContext3Fn(ptr, ppImmediateContext);

  /// Creates a deferred context, which can record command lists.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_3/nf-d3d11_3-id3d11device3-createdeferredcontext3>.
  @pragma('vm:prefer-inline')
  void createDeferredContext3(
    int contextFlags,
    Pointer<VTablePointer>? ppDeferredContext,
  ) {
    final hr$ = HRESULT(
      _CreateDeferredContext3Fn(
        ptr,
        contextFlags,
        ppDeferredContext ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Copies data into a D3D11_USAGE_DEFAULTtexture which was mapped using
  /// `ID3D11DeviceContext3.mapwhile` providing a NULL
  /// D3D11_MAPPED_SUBRESOURCEparameter.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_3/nf-d3d11_3-id3d11device3-writetosubresource>.
  @pragma('vm:prefer-inline')
  void writeToSubresource(
    ID3D11Resource? pDstResource,
    int dstSubresource,
    Pointer<D3D11_BOX>? pDstBox,
    Pointer pSrcData,
    int srcRowPitch,
    int srcDepthPitch,
  ) => _WriteToSubresourceFn(
    ptr,
    pDstResource?.ptr ?? nullptr,
    dstSubresource,
    pDstBox ?? nullptr,
    pSrcData,
    srcRowPitch,
    srcDepthPitch,
  );

  /// Copies data from a D3D11_USAGE_DEFAULTtexture which was mapped using
  /// `ID3D11DeviceContext3.mapwhile` providing a NULL
  /// D3D11_MAPPED_SUBRESOURCEparameter.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_3/nf-d3d11_3-id3d11device3-readfromsubresource>.
  @pragma('vm:prefer-inline')
  void readFromSubresource(
    Pointer pDstData,
    int dstRowPitch,
    int dstDepthPitch,
    ID3D11Resource? pSrcResource,
    int srcSubresource,
    Pointer<D3D11_BOX>? pSrcBox,
  ) => _ReadFromSubresourceFn(
    ptr,
    pDstData,
    dstRowPitch,
    dstDepthPitch,
    pSrcResource?.ptr ?? nullptr,
    srcSubresource,
    pSrcBox ?? nullptr,
  );

  @override
  String toString() => 'ID3D11Device3(ptr: $ptr)';
}

/// @nodoc
base class ID3D11Device3Vtbl extends Struct {
  external ID3D11Device2Vtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<D3D11_TEXTURE2D_DESC1> pDesc1,
        Pointer<D3D11_SUBRESOURCE_DATA> pInitialData,
        Pointer<VTablePointer> ppTexture2D,
      )
    >
  >
  CreateTexture2D1;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<D3D11_TEXTURE3D_DESC1> pDesc1,
        Pointer<D3D11_SUBRESOURCE_DATA> pInitialData,
        Pointer<VTablePointer> ppTexture3D,
      )
    >
  >
  CreateTexture3D1;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<D3D11_RASTERIZER_DESC2> pRasterizerDesc,
        Pointer<VTablePointer> ppRasterizerState,
      )
    >
  >
  CreateRasterizerState2;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pResource,
        Pointer<D3D11_SHADER_RESOURCE_VIEW_DESC1> pDesc1,
        Pointer<VTablePointer> ppSRView1,
      )
    >
  >
  CreateShaderResourceView1;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pResource,
        Pointer<D3D11_UNORDERED_ACCESS_VIEW_DESC1> pDesc1,
        Pointer<VTablePointer> ppUAView1,
      )
    >
  >
  CreateUnorderedAccessView1;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pResource,
        Pointer<D3D11_RENDER_TARGET_VIEW_DESC1> pDesc1,
        Pointer<VTablePointer> ppRTView1,
      )
    >
  >
  CreateRenderTargetView1;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<D3D11_QUERY_DESC1> pQueryDesc1,
        Pointer<VTablePointer> ppQuery1,
      )
    >
  >
  CreateQuery1;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Pointer<VTablePointer> ppImmediateContext,
      )
    >
  >
  GetImmediateContext3;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 contextFlags,
        Pointer<VTablePointer> ppDeferredContext,
      )
    >
  >
  CreateDeferredContext3;
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
      )
    >
  >
  WriteToSubresource;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Pointer pDstData,
        Uint32 dstRowPitch,
        Uint32 dstDepthPitch,
        VTablePointer pSrcResource,
        Uint32 srcSubresource,
        Pointer<D3D11_BOX> pSrcBox,
      )
    >
  >
  ReadFromSubresource;
}

@internal
final class ID3D11Device3Companion extends ComCompanion<ID3D11Device3> {
  const ID3D11Device3Companion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11Device3 Function(VTablePointer) get fromPointer => ID3D11Device3.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11Device3;
}
