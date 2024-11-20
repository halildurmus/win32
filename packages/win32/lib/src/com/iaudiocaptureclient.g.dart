// Dart representation of a COM interface.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';

import '../allocator.dart';
import '../bstr.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../exception.dart';
import '../extensions/iunknown.dart';
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
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IAudioCaptureClient = Guid.fromComponents(
  0xc8adbd64,
  0xe71e,
  0x48a0,
  Uint8List.fromList(const [0xa4, 0xde, 0x18, 0x5c, 0x39, 0x5c, 0xd3, 0x17]),
);

/// Enables a client to read input data from a capture endpoint buffer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/audioclient/nn-audioclient-iaudiocaptureclient>.
///
/// {@category com}
class IAudioCaptureClient extends IUnknown implements ComInterface {
  /// Creates a new instance of [IAudioCaptureClient] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IAudioCaptureClient]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IAudioCaptureClient(super.ptr)
    : _vtable = ptr.value.cast<IAudioCaptureClientVtbl>().ref;

  /// Creates a new instance of [IAudioCaptureClient] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IAudioCaptureClient] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAudioCaptureClient.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IAudioCaptureClientVtbl _vtable;
  late final _GetBufferFn =
      _vtable.GetBuffer.asFunction<
        int Function(
          VTablePointer,
          Pointer<Pointer<Uint8>>,
          Pointer<Uint32>,
          Pointer<Uint32>,
          Pointer<Uint64>,
          Pointer<Uint64>,
        )
      >();
  late final _ReleaseBufferFn =
      _vtable.ReleaseBuffer.asFunction<int Function(VTablePointer, int)>();
  late final _GetNextPacketSizeFn =
      _vtable.GetNextPacketSize.asFunction<
        int Function(VTablePointer, Pointer<Uint32>)
      >();

  /// Retrieves a pointer to the next available packet of data in the capture
  /// endpoint buffer.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudiocaptureclient-getbuffer>.
  @pragma('vm:prefer-inline')
  void getBuffer(
    Pointer<Pointer<Uint8>> ppData,
    Pointer<Uint32> pNumFramesToRead,
    Pointer<Uint32> pdwFlags,
    Pointer<Uint64>? pu64DevicePosition,
    Pointer<Uint64>? pu64QPCPosition,
  ) {
    final hr$ = HRESULT(
      _GetBufferFn(
        ptr,
        ppData,
        pNumFramesToRead,
        pdwFlags,
        pu64DevicePosition ?? nullptr,
        pu64QPCPosition ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Releases the buffer.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudiocaptureclient-releasebuffer>.
  @pragma('vm:prefer-inline')
  void releaseBuffer(int numFramesRead) {
    final hr$ = HRESULT(_ReleaseBufferFn(ptr, numFramesRead));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves the number of frames in the next data packet in the capture
  /// endpoint buffer.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudiocaptureclient-getnextpacketsize>.
  int getNextPacketSize() {
    final pNumFramesInNextPacket = loggingCalloc<Uint32>();
    final hr$ = HRESULT(_GetNextPacketSizeFn(ptr, pNumFramesInNextPacket));
    if (hr$.isError) {
      free(pNumFramesInNextPacket);
      throw WindowsException(hr$);
    }
    final result$ = pNumFramesInNextPacket.value;
    free(pNumFramesInNextPacket);
    return result$;
  }

  @override
  String toString() => 'IAudioCaptureClient(ptr: $ptr)';
}

/// @nodoc
base class IAudioCaptureClientVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Pointer<Uint8>> ppData,
        Pointer<Uint32> pNumFramesToRead,
        Pointer<Uint32> pdwFlags,
        Pointer<Uint64> pu64DevicePosition,
        Pointer<Uint64> pu64QPCPosition,
      )
    >
  >
  GetBuffer;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Uint32 numFramesRead)>
  >
  ReleaseBuffer;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Uint32> pNumFramesInNextPacket,
      )
    >
  >
  GetNextPacketSize;
}

@internal
final class IAudioCaptureClientCompanion
    extends ComCompanion<IAudioCaptureClient> {
  const IAudioCaptureClientCompanion();

  @pragma('vm:prefer-inline')
  @override
  IAudioCaptureClient Function(VTablePointer) get fromPointer =>
      IAudioCaptureClient.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IAudioCaptureClient;
}
