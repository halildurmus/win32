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
import 'id3d11cryptosession.g.dart';
import 'id3d11videodevice1.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11VideoDevice2 = GUID.fromComponents(
  0x59c0cb01,
  0x35f0,
  0x4a70,
  Uint8List.fromList(const [0x8f, 0x67, 0x87, 0x90, 0x5c, 0x90, 0x6a, 0x53]),
);

/// Provides the video decoding and video processing capabilities of a Microsoft
/// Direct3D 11 device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11_4/nn-d3d11_4-id3d11videodevice2>.
///
/// {@category com}
class ID3D11VideoDevice2 extends ID3D11VideoDevice1 implements ComInterface {
  /// Creates a new instance of [ID3D11VideoDevice2] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11VideoDevice2]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ID3D11VideoDevice2(super.ptr)
    : _vtable = ptr.value.cast<ID3D11VideoDevice2Vtbl>().ref;

  /// Creates a new instance of [ID3D11VideoDevice2] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11VideoDevice2] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11VideoDevice2.from(IUnknown interface) =>
      interface.queryInterface();

  final ID3D11VideoDevice2Vtbl _vtable;
  late final _CheckFeatureSupportFn =
      _vtable.CheckFeatureSupport.asFunction<
        int Function(VTablePointer, int, Pointer, int)
      >();
  late final _NegotiateCryptoSessionKeyExchangeMTFn =
      _vtable.NegotiateCryptoSessionKeyExchangeMT.asFunction<
        int Function(VTablePointer, VTablePointer, int, int, Pointer)
      >();

  /// Gets information about the features that are supported by the current
  /// video driver.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_4/nf-d3d11_4-id3d11videodevice2-checkfeaturesupport>.
  @pragma('vm:prefer-inline')
  void checkFeatureSupport(
    D3D11_FEATURE_VIDEO feature,
    Pointer pFeatureSupportData,
    int featureSupportDataSize,
  ) {
    final hr$ = HRESULT(
      _CheckFeatureSupportFn(
        ptr,
        feature,
        pFeatureSupportData,
        featureSupportDataSize,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void negotiateCryptoSessionKeyExchangeMT(
    ID3D11CryptoSession? pCryptoSession,
    D3D11_CRYPTO_SESSION_KEY_EXCHANGE_FLAGS flags,
    int dataSize,
    Pointer pData,
  ) {
    final hr$ = HRESULT(
      _NegotiateCryptoSessionKeyExchangeMTFn(
        ptr,
        pCryptoSession?.ptr ?? nullptr,
        flags,
        dataSize,
        pData,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'ID3D11VideoDevice2(ptr: $ptr)';
}

/// @nodoc
base class ID3D11VideoDevice2Vtbl extends Struct {
  external ID3D11VideoDevice1Vtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 feature,
        Pointer pFeatureSupportData,
        Uint32 featureSupportDataSize,
      )
    >
  >
  CheckFeatureSupport;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pCryptoSession,
        Int32 flags,
        Uint32 dataSize,
        Pointer pData,
      )
    >
  >
  NegotiateCryptoSessionKeyExchangeMT;
}

@internal
final class ID3D11VideoDevice2Companion
    extends ComCompanion<ID3D11VideoDevice2> {
  const ID3D11VideoDevice2Companion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11VideoDevice2 Function(VTablePointer) get fromPointer =>
      ID3D11VideoDevice2.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11VideoDevice2;
}
