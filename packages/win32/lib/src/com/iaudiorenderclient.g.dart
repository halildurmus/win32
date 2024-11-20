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
final IID_IAudioRenderClient = Guid.fromComponents(
  0xf294acfc,
  0x3146,
  0x4483,
  Uint8List.fromList(const [0xa7, 0xbf, 0xad, 0xdc, 0xa7, 0xc2, 0x60, 0xe2]),
);

/// Enables a client to write output data to a rendering endpoint buffer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/audioclient/nn-audioclient-iaudiorenderclient>.
///
/// {@category com}
class IAudioRenderClient extends IUnknown implements ComInterface {
  /// Creates a new instance of [IAudioRenderClient] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IAudioRenderClient]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IAudioRenderClient(super.ptr)
    : _vtable = ptr.value.cast<IAudioRenderClientVtbl>().ref;

  /// Creates a new instance of [IAudioRenderClient] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IAudioRenderClient] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAudioRenderClient.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IAudioRenderClientVtbl _vtable;
  late final _GetBufferFn =
      _vtable.GetBuffer.asFunction<
        int Function(VTablePointer, int, Pointer<Pointer<Uint8>>)
      >();
  late final _ReleaseBufferFn =
      _vtable.ReleaseBuffer.asFunction<int Function(VTablePointer, int, int)>();

  /// Retrieves a pointer to the next available space in the rendering endpoint
  /// buffer into which the caller can write a data packet.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudiorenderclient-getbuffer>.
  Pointer<Uint8> getBuffer(int numFramesRequested) {
    final ppData = loggingCalloc<Pointer<Uint8>>();
    final hr$ = HRESULT(_GetBufferFn(ptr, numFramesRequested, ppData));
    if (hr$.isError) {
      free(ppData);
      throw WindowsException(hr$);
    }
    final result$ = ppData.value;
    free(ppData);
    return result$;
  }

  /// Releases the buffer space acquired in the previous call to the
  /// `IAudioRenderClient.getBuffer` method.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudiorenderclient-releasebuffer>.
  @pragma('vm:prefer-inline')
  void releaseBuffer(int numFramesWritten, int dwFlags) {
    final hr$ = HRESULT(_ReleaseBufferFn(ptr, numFramesWritten, dwFlags));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IAudioRenderClient(ptr: $ptr)';
}

/// @nodoc
base class IAudioRenderClientVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 numFramesRequested,
        Pointer<Pointer<Uint8>> ppData,
      )
    >
  >
  GetBuffer;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 numFramesWritten,
        Uint32 dwFlags,
      )
    >
  >
  ReleaseBuffer;
}

@internal
final class IAudioRenderClientCompanion
    extends ComCompanion<IAudioRenderClient> {
  const IAudioRenderClientCompanion();

  @pragma('vm:prefer-inline')
  @override
  IAudioRenderClient Function(VTablePointer) get fromPointer =>
      IAudioRenderClient.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IAudioRenderClient;
}
