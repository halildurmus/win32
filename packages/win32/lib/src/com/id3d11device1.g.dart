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
import 'id3d11blendstate1.g.dart';
import 'id3d11device.g.dart';
import 'id3d11devicecontext1.g.dart';
import 'id3d11rasterizerstate1.g.dart';
import 'id3ddevicecontextstate.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11Device1 = GUID.fromComponents(
  0xa04bfb29,
  0x8ef,
  0x43d6,
  Uint8List.fromList(const [0xa4, 0x9c, 0xa9, 0xbd, 0xbd, 0xcb, 0xe6, 0x86]),
);

/// Represents a virtual adapter; it is used to create resources.
///
/// ID3D11Device1 adds new methods to those in ID3D11Device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nn-d3d11_1-id3d11device1>.
///
/// {@category com}
class ID3D11Device1 extends ID3D11Device implements ComInterface {
  /// Creates a new instance of [ID3D11Device1] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11Device1]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ID3D11Device1(super.ptr) : _vtable = ptr.value.cast<ID3D11Device1Vtbl>().ref;

  /// Creates a new instance of [ID3D11Device1] from an existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11Device1] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11Device1.from(IUnknown interface) => interface.queryInterface();

  final ID3D11Device1Vtbl _vtable;
  late final _GetImmediateContext1Fn =
      _vtable.GetImmediateContext1.asFunction<
        void Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _CreateDeferredContext1Fn =
      _vtable.CreateDeferredContext1.asFunction<
        int Function(VTablePointer, int, Pointer<VTablePointer>)
      >();
  late final _CreateBlendState1Fn =
      _vtable.CreateBlendState1.asFunction<
        int Function(
          VTablePointer,
          Pointer<D3D11_BLEND_DESC1>,
          Pointer<VTablePointer>,
        )
      >();
  late final _CreateRasterizerState1Fn =
      _vtable.CreateRasterizerState1.asFunction<
        int Function(
          VTablePointer,
          Pointer<D3D11_RASTERIZER_DESC1>,
          Pointer<VTablePointer>,
        )
      >();
  late final _CreateDeviceContextStateFn =
      _vtable.CreateDeviceContextState.asFunction<
        int Function(
          VTablePointer,
          int,
          Pointer<Int32>,
          int,
          int,
          Pointer<GUID>,
          Pointer<Int32>,
          Pointer<VTablePointer>,
        )
      >();
  late final _OpenSharedResource1Fn =
      _vtable.OpenSharedResource1.asFunction<
        int Function(VTablePointer, Pointer, Pointer<GUID>, Pointer<Pointer>)
      >();
  late final _OpenSharedResourceByNameFn =
      _vtable.OpenSharedResourceByName.asFunction<
        int Function(
          VTablePointer,
          Pointer<Utf16>,
          int,
          Pointer<GUID>,
          Pointer<Pointer>,
        )
      >();

  /// Gets an immediate context, which can play back command lists.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3d11device1-getimmediatecontext1>.
  @pragma('vm:prefer-inline')
  void getImmediateContext1(Pointer<VTablePointer> ppImmediateContext) =>
      _GetImmediateContext1Fn(ptr, ppImmediateContext);

  /// Creates a deferred context, which can record command lists.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3d11device1-createdeferredcontext1>.
  @pragma('vm:prefer-inline')
  void createDeferredContext1(
    int contextFlags,
    Pointer<VTablePointer>? ppDeferredContext,
  ) {
    final hr$ = HRESULT(
      _CreateDeferredContext1Fn(
        ptr,
        contextFlags,
        ppDeferredContext ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Creates a blend-state object that encapsulates blend state for the
  /// output-merger stage and allows the configuration of logic operations.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3d11device1-createblendstate1>.
  @pragma('vm:prefer-inline')
  void createBlendState1(
    Pointer<D3D11_BLEND_DESC1> pBlendStateDesc,
    Pointer<VTablePointer>? ppBlendState,
  ) {
    final hr$ = HRESULT(
      _CreateBlendState1Fn(ptr, pBlendStateDesc, ppBlendState ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Creates a rasterizer state object that informs the rasterizer stage how to
  /// behave and forces the sample count while UAV rendering or rasterizing.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3d11device1-createrasterizerstate1>.
  @pragma('vm:prefer-inline')
  void createRasterizerState1(
    Pointer<D3D11_RASTERIZER_DESC1> pRasterizerDesc,
    Pointer<VTablePointer>? ppRasterizerState,
  ) {
    final hr$ = HRESULT(
      _CreateRasterizerState1Fn(
        ptr,
        pRasterizerDesc,
        ppRasterizerState ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Creates a context state object that holds all Microsoft Direct3D state and
  /// some Direct3D behavior.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3d11device1-createdevicecontextstate>.
  @pragma('vm:prefer-inline')
  void createDeviceContextState(
    int flags,
    Pointer<Int32> pFeatureLevels,
    int featureLevels,
    int sDKVersion,
    Pointer<GUID> emulatedInterface,
    Pointer<Int32>? pChosenFeatureLevel,
    Pointer<VTablePointer>? ppContextState,
  ) {
    final hr$ = HRESULT(
      _CreateDeviceContextStateFn(
        ptr,
        flags,
        pFeatureLevels,
        featureLevels,
        sDKVersion,
        emulatedInterface,
        pChosenFeatureLevel ?? nullptr,
        ppContextState ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gives a device access to a shared resource that is referenced by a handle
  /// and that was created on a different device.
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
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3d11device1-opensharedresource1>.
  T openSharedResource1<T extends IUnknown>(HANDLE hResource) {
    final companion = ComInterface.type<T>();
    final returnedInterface = companion.iid.toNative();
    final ppResource = adaptiveCalloc<Pointer>();
    final hr$ = HRESULT(
      _OpenSharedResource1Fn(ptr, hResource, returnedInterface, ppResource),
    );
    free(returnedInterface);
    if (hr$.isError) {
      free(ppResource);
      throw WindowsException(hr$);
    }
    final result = companion.fromPointer(ppResource.value.cast());
    free(ppResource);
    return result;
  }

  /// Gives a device access to a shared resource that is referenced by name and
  /// that was created on a different device.
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
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3d11device1-opensharedresourcebyname>.
  T openSharedResourceByName<T extends IUnknown>(
    PCWSTR lpName,
    int dwDesiredAccess,
  ) {
    final companion = ComInterface.type<T>();
    final returnedInterface = companion.iid.toNative();
    final ppResource = adaptiveCalloc<Pointer>();
    final hr$ = HRESULT(
      _OpenSharedResourceByNameFn(
        ptr,
        lpName,
        dwDesiredAccess,
        returnedInterface,
        ppResource,
      ),
    );
    free(returnedInterface);
    if (hr$.isError) {
      free(ppResource);
      throw WindowsException(hr$);
    }
    final result = companion.fromPointer(ppResource.value.cast());
    free(ppResource);
    return result;
  }

  @override
  String toString() => 'ID3D11Device1(ptr: $ptr)';
}

/// @nodoc
base class ID3D11Device1Vtbl extends Struct {
  external ID3D11DeviceVtbl base$;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Pointer<VTablePointer> ppImmediateContext,
      )
    >
  >
  GetImmediateContext1;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 contextFlags,
        Pointer<VTablePointer> ppDeferredContext,
      )
    >
  >
  CreateDeferredContext1;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<D3D11_BLEND_DESC1> pBlendStateDesc,
        Pointer<VTablePointer> ppBlendState,
      )
    >
  >
  CreateBlendState1;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<D3D11_RASTERIZER_DESC1> pRasterizerDesc,
        Pointer<VTablePointer> ppRasterizerState,
      )
    >
  >
  CreateRasterizerState1;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 flags,
        Pointer<Int32> pFeatureLevels,
        Uint32 featureLevels,
        Uint32 sDKVersion,
        Pointer<GUID> emulatedInterface,
        Pointer<Int32> pChosenFeatureLevel,
        Pointer<VTablePointer> ppContextState,
      )
    >
  >
  CreateDeviceContextState;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer hResource,
        Pointer<GUID> returnedInterface,
        Pointer<Pointer> ppResource,
      )
    >
  >
  OpenSharedResource1;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Utf16> lpName,
        Uint32 dwDesiredAccess,
        Pointer<GUID> returnedInterface,
        Pointer<Pointer> ppResource,
      )
    >
  >
  OpenSharedResourceByName;
}

@internal
final class ID3D11Device1Companion extends ComCompanion<ID3D11Device1> {
  const ID3D11Device1Companion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11Device1 Function(VTablePointer) get fromPointer => ID3D11Device1.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11Device1;
}
