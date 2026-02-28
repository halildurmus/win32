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
import 'id3d11view.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11VideoProcessorInputView = GUID.fromComponents(
  0x11ec5a5f,
  0x51dc,
  0x4945,
  Uint8List.fromList(const [0xab, 0x34, 0x6e, 0x8c, 0x21, 0x30, 0xe, 0xa5]),
);

/// Identifies the input surfaces that can be accessed during video processing.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11/nn-d3d11-id3d11videoprocessorinputview>.
///
/// {@category com}
class ID3D11VideoProcessorInputView extends ID3D11View implements ComInterface {
  /// Creates a new instance of [ID3D11VideoProcessorInputView] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [ID3D11VideoProcessorInputView] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  ID3D11VideoProcessorInputView(super.ptr)
    : _vtable = ptr.value.cast<ID3D11VideoProcessorInputViewVtbl>().ref;

  /// Creates a new instance of [ID3D11VideoProcessorInputView] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11VideoProcessorInputView] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11VideoProcessorInputView.from(IUnknown interface) =>
      interface.queryInterface();

  final ID3D11VideoProcessorInputViewVtbl _vtable;
  late final _GetDescFn =
      _vtable.GetDesc.asFunction<
        void Function(
          VTablePointer,
          Pointer<D3D11_VIDEO_PROCESSOR_INPUT_VIEW_DESC>,
        )
      >();

  /// Gets the properties of the video processor input view.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videoprocessorinputview-getdesc>.
  @pragma('vm:prefer-inline')
  void getDesc(Pointer<D3D11_VIDEO_PROCESSOR_INPUT_VIEW_DESC> pDesc) =>
      _GetDescFn(ptr, pDesc);

  @override
  String toString() => 'ID3D11VideoProcessorInputView(ptr: $ptr)';
}

/// @nodoc
base class ID3D11VideoProcessorInputViewVtbl extends Struct {
  external ID3D11ViewVtbl base$;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Pointer<D3D11_VIDEO_PROCESSOR_INPUT_VIEW_DESC> pDesc,
      )
    >
  >
  GetDesc;
}

@internal
final class ID3D11VideoProcessorInputViewCompanion
    extends ComCompanion<ID3D11VideoProcessorInputView> {
  const ID3D11VideoProcessorInputViewCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11VideoProcessorInputView Function(VTablePointer) get fromPointer =>
      ID3D11VideoProcessorInputView.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11VideoProcessorInputView;
}
