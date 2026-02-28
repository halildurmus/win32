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
import 'id3d11videocontext1.g.dart';
import 'id3d11videoprocessor.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11VideoContext2 = GUID.fromComponents(
  0xc4e7374c,
  0x6243,
  0x4d1b,
  Uint8List.fromList(const [0xae, 0x87, 0x52, 0xb4, 0xf7, 0x40, 0xe2, 0x61]),
);

/// Provides the video functionality of a Microsoft Direct3D 11 device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11_4/nn-d3d11_4-id3d11videocontext2>.
///
/// {@category com}
class ID3D11VideoContext2 extends ID3D11VideoContext1 implements ComInterface {
  /// Creates a new instance of [ID3D11VideoContext2] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11VideoContext2]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ID3D11VideoContext2(super.ptr)
    : _vtable = ptr.value.cast<ID3D11VideoContext2Vtbl>().ref;

  /// Creates a new instance of [ID3D11VideoContext2] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11VideoContext2] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11VideoContext2.from(IUnknown interface) =>
      interface.queryInterface();

  final ID3D11VideoContext2Vtbl _vtable;
  late final _VideoProcessorSetOutputHDRMetaDataFn =
      _vtable.VideoProcessorSetOutputHDRMetaData.asFunction<
        void Function(VTablePointer, VTablePointer, int, int, Pointer)
      >();
  late final _VideoProcessorGetOutputHDRMetaDataFn =
      _vtable.VideoProcessorGetOutputHDRMetaData.asFunction<
        void Function(
          VTablePointer,
          VTablePointer,
          Pointer<Int32>,
          int,
          Pointer,
        )
      >();
  late final _VideoProcessorSetStreamHDRMetaDataFn =
      _vtable.VideoProcessorSetStreamHDRMetaData.asFunction<
        void Function(VTablePointer, VTablePointer, int, int, int, Pointer)
      >();
  late final _VideoProcessorGetStreamHDRMetaDataFn =
      _vtable.VideoProcessorGetStreamHDRMetaData.asFunction<
        void Function(
          VTablePointer,
          VTablePointer,
          int,
          Pointer<Int32>,
          int,
          Pointer,
        )
      >();

  /// Sets the HDR metadata describing the display on which the content will be
  /// presented.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_4/nf-d3d11_4-id3d11videocontext2-videoprocessorsetoutputhdrmetadata>.
  @pragma('vm:prefer-inline')
  void videoProcessorSetOutputHDRMetaData(
    ID3D11VideoProcessor? pVideoProcessor,
    DXGI_HDR_METADATA_TYPE type,
    int size,
    Pointer? pHDRMetaData,
  ) => _VideoProcessorSetOutputHDRMetaDataFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    type,
    size,
    pHDRMetaData ?? nullptr,
  );

  /// Gets the HDR metadata describing the display on which the content will be
  /// presented.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_4/nf-d3d11_4-id3d11videocontext2-videoprocessorgetoutputhdrmetadata>.
  @pragma('vm:prefer-inline')
  void videoProcessorGetOutputHDRMetaData(
    ID3D11VideoProcessor? pVideoProcessor,
    Pointer<Int32> pType,
    int size,
    Pointer? pMetaData,
  ) => _VideoProcessorGetOutputHDRMetaDataFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    pType,
    size,
    pMetaData ?? nullptr,
  );

  /// Sets the HDR metadata associated with the video stream.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_4/nf-d3d11_4-id3d11videocontext2-videoprocessorsetstreamhdrmetadata>.
  @pragma('vm:prefer-inline')
  void videoProcessorSetStreamHDRMetaData(
    ID3D11VideoProcessor? pVideoProcessor,
    int streamIndex,
    DXGI_HDR_METADATA_TYPE type,
    int size,
    Pointer? pHDRMetaData,
  ) => _VideoProcessorSetStreamHDRMetaDataFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    streamIndex,
    type,
    size,
    pHDRMetaData ?? nullptr,
  );

  /// Gets the HDR metadata associated with the video stream.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_4/nf-d3d11_4-id3d11videocontext2-videoprocessorgetstreamhdrmetadata>.
  @pragma('vm:prefer-inline')
  void videoProcessorGetStreamHDRMetaData(
    ID3D11VideoProcessor? pVideoProcessor,
    int streamIndex,
    Pointer<Int32> pType,
    int size,
    Pointer? pMetaData,
  ) => _VideoProcessorGetStreamHDRMetaDataFn(
    ptr,
    pVideoProcessor?.ptr ?? nullptr,
    streamIndex,
    pType,
    size,
    pMetaData ?? nullptr,
  );

  @override
  String toString() => 'ID3D11VideoContext2(ptr: $ptr)';
}

/// @nodoc
base class ID3D11VideoContext2Vtbl extends Struct {
  external ID3D11VideoContext1Vtbl base$;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Int32 type,
        Uint32 size,
        Pointer pHDRMetaData,
      )
    >
  >
  VideoProcessorSetOutputHDRMetaData;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Pointer<Int32> pType,
        Uint32 size,
        Pointer pMetaData,
      )
    >
  >
  VideoProcessorGetOutputHDRMetaData;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Uint32 streamIndex,
        Int32 type,
        Uint32 size,
        Pointer pHDRMetaData,
      )
    >
  >
  VideoProcessorSetStreamHDRMetaData;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVideoProcessor,
        Uint32 streamIndex,
        Pointer<Int32> pType,
        Uint32 size,
        Pointer pMetaData,
      )
    >
  >
  VideoProcessorGetStreamHDRMetaData;
}

@internal
final class ID3D11VideoContext2Companion
    extends ComCompanion<ID3D11VideoContext2> {
  const ID3D11VideoContext2Companion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11VideoContext2 Function(VTablePointer) get fromPointer =>
      ID3D11VideoContext2.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11VideoContext2;
}
