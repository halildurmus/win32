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
import 'id3d11rendertargetview.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11RenderTargetView1 = GUID.fromComponents(
  0xffbe2e23,
  0xf011,
  0x418a,
  Uint8List.fromList(const [0xac, 0x56, 0x5c, 0xee, 0xd7, 0xc5, 0xb9, 0x4b]),
);

/// A render-target-view interface represents the render-target subresources
/// that can be accessed during rendering.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11_3/nn-d3d11_3-id3d11rendertargetview1>.
///
/// {@category com}
class ID3D11RenderTargetView1 extends ID3D11RenderTargetView
    implements ComInterface {
  /// Creates a new instance of [ID3D11RenderTargetView1] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11RenderTargetView1]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ID3D11RenderTargetView1(super.ptr)
    : _vtable = ptr.value.cast<ID3D11RenderTargetView1Vtbl>().ref;

  /// Creates a new instance of [ID3D11RenderTargetView1] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11RenderTargetView1] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11RenderTargetView1.from(IUnknown interface) =>
      interface.queryInterface();

  final ID3D11RenderTargetView1Vtbl _vtable;
  late final _GetDesc1Fn =
      _vtable.GetDesc1.asFunction<
        void Function(VTablePointer, Pointer<D3D11_RENDER_TARGET_VIEW_DESC1>)
      >();

  /// Gets the properties of a render-target view.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_3/nf-d3d11_3-id3d11rendertargetview1-getdesc1>.
  @pragma('vm:prefer-inline')
  void getDesc1(Pointer<D3D11_RENDER_TARGET_VIEW_DESC1> pDesc1) =>
      _GetDesc1Fn(ptr, pDesc1);

  @override
  String toString() => 'ID3D11RenderTargetView1(ptr: $ptr)';
}

/// @nodoc
base class ID3D11RenderTargetView1Vtbl extends Struct {
  external ID3D11RenderTargetViewVtbl base$;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Pointer<D3D11_RENDER_TARGET_VIEW_DESC1> pDesc1,
      )
    >
  >
  GetDesc1;
}

@internal
final class ID3D11RenderTargetView1Companion
    extends ComCompanion<ID3D11RenderTargetView1> {
  const ID3D11RenderTargetView1Companion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11RenderTargetView1 Function(VTablePointer) get fromPointer =>
      ID3D11RenderTargetView1.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11RenderTargetView1;
}
