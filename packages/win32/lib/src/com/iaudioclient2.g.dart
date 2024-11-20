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
import '../enums.g.dart';
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
import 'iaudioclient.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IAudioClient2 = Guid.fromComponents(
  0x726778cd,
  0xf60a,
  0x4eda,
  Uint8List.fromList(const [0x82, 0xde, 0xe4, 0x76, 0x10, 0xcd, 0x78, 0xaa]),
);

/// Derived from the IAudioClient interface, with a set of additional methods
/// that enable a Windows Audio Session API (WASAPI) audio client to do the
/// following: opt in for offloading, query stream properties, and get
/// information from the hardware that handles offloading.
///
/// The audio client can be successful in creating an offloaded stream if the
/// underlying endpoint supports the hardware audio engine, the endpoint has
/// been enumerated and discovered by the audio system, and there are still
/// offload pin instances available on the endpoint.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/audioclient/nn-audioclient-iaudioclient2>.
///
/// {@category com}
class IAudioClient2 extends IAudioClient implements ComInterface {
  /// Creates a new instance of [IAudioClient2] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IAudioClient2]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IAudioClient2(super.ptr) : _vtable = ptr.value.cast<IAudioClient2Vtbl>().ref;

  /// Creates a new instance of [IAudioClient2] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IAudioClient2] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAudioClient2.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IAudioClient2Vtbl _vtable;
  late final _IsOffloadCapableFn =
      _vtable.IsOffloadCapable.asFunction<
        int Function(VTablePointer, int, Pointer<BOOL>)
      >();
  late final _SetClientPropertiesFn =
      _vtable.SetClientProperties.asFunction<
        int Function(VTablePointer, Pointer<AudioClientProperties>)
      >();
  late final _GetBufferSizeLimitsFn =
      _vtable.GetBufferSizeLimits.asFunction<
        int Function(
          VTablePointer,
          Pointer<WAVEFORMATEX>,
          int,
          Pointer<Int64>,
          Pointer<Int64>,
        )
      >();

  /// Retrieves information about whether or not the endpoint on which a stream
  /// is created is capable of supporting an offloaded audio stream.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudioclient2-isoffloadcapable>.
  bool isOffloadCapable(AUDIO_STREAM_CATEGORY category) {
    final pbOffloadCapable = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_IsOffloadCapableFn(ptr, category, pbOffloadCapable));
    if (hr$.isError) {
      free(pbOffloadCapable);
      throw WindowsException(hr$);
    }
    final result$ = pbOffloadCapable.value;
    free(pbOffloadCapable);
    return result$ != FALSE;
  }

  /// Sets the properties of the audio stream by populating an
  /// AudioClientProperties structure.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudioclient2-setclientproperties>.
  @pragma('vm:prefer-inline')
  void setClientProperties(Pointer<AudioClientProperties> pProperties) {
    final hr$ = HRESULT(_SetClientPropertiesFn(ptr, pProperties));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Returns the buffer size limits of the hardware audio engine in
  /// 100-nanosecond units.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudioclient2-getbuffersizelimits>.
  @pragma('vm:prefer-inline')
  void getBufferSizeLimits(
    Pointer<WAVEFORMATEX> pFormat,
    bool bEventDriven,
    Pointer<Int64> phnsMinBufferDuration,
    Pointer<Int64> phnsMaxBufferDuration,
  ) {
    final hr$ = HRESULT(
      _GetBufferSizeLimitsFn(
        ptr,
        pFormat,
        bEventDriven ? TRUE : FALSE,
        phnsMinBufferDuration,
        phnsMaxBufferDuration,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IAudioClient2(ptr: $ptr)';
}

/// @nodoc
base class IAudioClient2Vtbl extends Struct {
  external IAudioClientVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 category,
        Pointer<BOOL> pbOffloadCapable,
      )
    >
  >
  IsOffloadCapable;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<AudioClientProperties> pProperties,
      )
    >
  >
  SetClientProperties;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<WAVEFORMATEX> pFormat,
        BOOL bEventDriven,
        Pointer<Int64> phnsMinBufferDuration,
        Pointer<Int64> phnsMaxBufferDuration,
      )
    >
  >
  GetBufferSizeLimits;
}

@internal
final class IAudioClient2Companion extends ComCompanion<IAudioClient2> {
  const IAudioClient2Companion();

  @pragma('vm:prefer-inline')
  @override
  IAudioClient2 Function(VTablePointer) get fromPointer => IAudioClient2.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IAudioClient2;
}
