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
import 'id3d11devicechild.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11CryptoSession = GUID.fromComponents(
  0x9b32f9ad,
  0xbdcc,
  0x40a6,
  Uint8List.fromList(const [0xa3, 0x9d, 0xd5, 0xc8, 0x65, 0x84, 0x57, 0x20]),
);

/// Represents a cryptographic session.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11/nn-d3d11-id3d11cryptosession>.
///
/// {@category com}
class ID3D11CryptoSession extends ID3D11DeviceChild implements ComInterface {
  /// Creates a new instance of [ID3D11CryptoSession] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11CryptoSession]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ID3D11CryptoSession(super.ptr)
    : _vtable = ptr.value.cast<ID3D11CryptoSessionVtbl>().ref;

  /// Creates a new instance of [ID3D11CryptoSession] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11CryptoSession] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11CryptoSession.from(IUnknown interface) =>
      interface.queryInterface();

  final ID3D11CryptoSessionVtbl _vtable;
  late final _GetCryptoTypeFn = _vtable
      .GetCryptoType.asFunction<void Function(VTablePointer, Pointer<GUID>)>();
  late final _GetDecoderProfileFn =
      _vtable.GetDecoderProfile.asFunction<
        void Function(VTablePointer, Pointer<GUID>)
      >();
  late final _GetCertificateSizeFn =
      _vtable.GetCertificateSize.asFunction<
        int Function(VTablePointer, Pointer<Uint32>)
      >();
  late final _GetCertificateFn =
      _vtable.GetCertificate.asFunction<
        int Function(VTablePointer, int, Pointer<Uint8>)
      >();
  late final _GetCryptoSessionHandleFn =
      _vtable.GetCryptoSessionHandle.asFunction<
        void Function(VTablePointer, Pointer<Pointer>)
      >();

  /// Gets the type of encryption that is supported by this session.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11cryptosession-getcryptotype>.
  @pragma('vm:prefer-inline')
  void getCryptoType(Pointer<GUID> pCryptoType) =>
      _GetCryptoTypeFn(ptr, pCryptoType);

  /// Gets the decoding profile of the session.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11cryptosession-getdecoderprofile>.
  @pragma('vm:prefer-inline')
  void getDecoderProfile(Pointer<GUID> pDecoderProfile) =>
      _GetDecoderProfileFn(ptr, pDecoderProfile);

  /// Gets the size of the driver's certificate chain.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11cryptosession-getcertificatesize>.
  int getCertificateSize() {
    final pCertificateSize = adaptiveCalloc<Uint32>();
    final hr$ = HRESULT(_GetCertificateSizeFn(ptr, pCertificateSize));
    if (hr$.isError) {
      free(pCertificateSize);
      throw WindowsException(hr$);
    }
    final result$ = pCertificateSize.value;
    free(pCertificateSize);
    return result$;
  }

  /// Gets the driver's certificate chain.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11cryptosession-getcertificate>.
  @pragma('vm:prefer-inline')
  void getCertificate(int certificateSize, Pointer<Uint8> pCertificate) {
    final hr$ = HRESULT(_GetCertificateFn(ptr, certificateSize, pCertificate));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets a handle to the cryptographic session.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11cryptosession-getcryptosessionhandle>.
  @pragma('vm:prefer-inline')
  void getCryptoSessionHandle(Pointer<Pointer> pCryptoSessionHandle) =>
      _GetCryptoSessionHandleFn(ptr, pCryptoSessionHandle);

  @override
  String toString() => 'ID3D11CryptoSession(ptr: $ptr)';
}

/// @nodoc
base class ID3D11CryptoSessionVtbl extends Struct {
  external ID3D11DeviceChildVtbl base$;
  external Pointer<
    NativeFunction<
      Void Function(VTablePointer this$, Pointer<GUID> pCryptoType)
    >
  >
  GetCryptoType;
  external Pointer<
    NativeFunction<
      Void Function(VTablePointer this$, Pointer<GUID> pDecoderProfile)
    >
  >
  GetDecoderProfile;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Uint32> pCertificateSize)
    >
  >
  GetCertificateSize;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 certificateSize,
        Pointer<Uint8> pCertificate,
      )
    >
  >
  GetCertificate;
  external Pointer<
    NativeFunction<
      Void Function(VTablePointer this$, Pointer<Pointer> pCryptoSessionHandle)
    >
  >
  GetCryptoSessionHandle;
}

@internal
final class ID3D11CryptoSessionCompanion
    extends ComCompanion<ID3D11CryptoSession> {
  const ID3D11CryptoSessionCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11CryptoSession Function(VTablePointer) get fromPointer =>
      ID3D11CryptoSession.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11CryptoSession;
}
