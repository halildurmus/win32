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
import '../variant.dart';
import 'idispatch.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ISpeechWaveFormatEx = Guid.fromComponents(
  0x7a1ef0d5,
  0x1581,
  0x4741,
  Uint8List.fromList(const [0x88, 0xe4, 0x20, 0x9a, 0x49, 0xf1, 0x1a, 0x10]),
);

/// {@category com}
class ISpeechWaveFormatEx extends IDispatch implements ComInterface {
  /// Creates a new instance of [ISpeechWaveFormatEx] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ISpeechWaveFormatEx]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  ISpeechWaveFormatEx(super.ptr)
    : _vtable = ptr.value.cast<ISpeechWaveFormatExVtbl>().ref;

  /// Creates a new instance of [ISpeechWaveFormatEx] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [ISpeechWaveFormatEx] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ISpeechWaveFormatEx.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final ISpeechWaveFormatExVtbl _vtable;
  late final _get_FormatTagFn = _vtable.get_FormatTag
      .asFunction<int Function(VTablePointer, Pointer<Int16>)>();
  late final _put_FormatTagFn = _vtable.put_FormatTag
      .asFunction<int Function(VTablePointer, int)>();
  late final _get_ChannelsFn = _vtable.get_Channels
      .asFunction<int Function(VTablePointer, Pointer<Int16>)>();
  late final _put_ChannelsFn = _vtable.put_Channels
      .asFunction<int Function(VTablePointer, int)>();
  late final _get_SamplesPerSecFn = _vtable.get_SamplesPerSec
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _put_SamplesPerSecFn = _vtable.put_SamplesPerSec
      .asFunction<int Function(VTablePointer, int)>();
  late final _get_AvgBytesPerSecFn = _vtable.get_AvgBytesPerSec
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _put_AvgBytesPerSecFn = _vtable.put_AvgBytesPerSec
      .asFunction<int Function(VTablePointer, int)>();
  late final _get_BlockAlignFn = _vtable.get_BlockAlign
      .asFunction<int Function(VTablePointer, Pointer<Int16>)>();
  late final _put_BlockAlignFn = _vtable.put_BlockAlign
      .asFunction<int Function(VTablePointer, int)>();
  late final _get_BitsPerSampleFn = _vtable.get_BitsPerSample
      .asFunction<int Function(VTablePointer, Pointer<Int16>)>();
  late final _put_BitsPerSampleFn = _vtable.put_BitsPerSample
      .asFunction<int Function(VTablePointer, int)>();
  late final _get_ExtraDataFn = _vtable.get_ExtraData
      .asFunction<int Function(VTablePointer, Pointer<VARIANT>)>();
  late final _put_ExtraDataFn = _vtable.put_ExtraData
      .asFunction<int Function(VTablePointer, VARIANT)>();

  int get formatTag {
    final formatTag = loggingCalloc<Int16>();
    final hr$ = HRESULT(_get_FormatTagFn(ptr, formatTag));
    if (hr$.isError) {
      free(formatTag);
      throw WindowsException(hr$);
    }
    final result$ = formatTag.value;
    free(formatTag);
    return result$;
  }

  set formatTag(int formatTag) {
    final hr$ = HRESULT(_put_FormatTagFn(ptr, formatTag));
    if (hr$.isError) throw WindowsException(hr$);
  }

  int get channels {
    final channels = loggingCalloc<Int16>();
    final hr$ = HRESULT(_get_ChannelsFn(ptr, channels));
    if (hr$.isError) {
      free(channels);
      throw WindowsException(hr$);
    }
    final result$ = channels.value;
    free(channels);
    return result$;
  }

  set channels(int channels) {
    final hr$ = HRESULT(_put_ChannelsFn(ptr, channels));
    if (hr$.isError) throw WindowsException(hr$);
  }

  int get samplesPerSec {
    final samplesPerSec = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_SamplesPerSecFn(ptr, samplesPerSec));
    if (hr$.isError) {
      free(samplesPerSec);
      throw WindowsException(hr$);
    }
    final result$ = samplesPerSec.value;
    free(samplesPerSec);
    return result$;
  }

  set samplesPerSec(int samplesPerSec) {
    final hr$ = HRESULT(_put_SamplesPerSecFn(ptr, samplesPerSec));
    if (hr$.isError) throw WindowsException(hr$);
  }

  int get avgBytesPerSec {
    final avgBytesPerSec = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_AvgBytesPerSecFn(ptr, avgBytesPerSec));
    if (hr$.isError) {
      free(avgBytesPerSec);
      throw WindowsException(hr$);
    }
    final result$ = avgBytesPerSec.value;
    free(avgBytesPerSec);
    return result$;
  }

  set avgBytesPerSec(int avgBytesPerSec) {
    final hr$ = HRESULT(_put_AvgBytesPerSecFn(ptr, avgBytesPerSec));
    if (hr$.isError) throw WindowsException(hr$);
  }

  int get blockAlign {
    final blockAlign = loggingCalloc<Int16>();
    final hr$ = HRESULT(_get_BlockAlignFn(ptr, blockAlign));
    if (hr$.isError) {
      free(blockAlign);
      throw WindowsException(hr$);
    }
    final result$ = blockAlign.value;
    free(blockAlign);
    return result$;
  }

  set blockAlign(int blockAlign) {
    final hr$ = HRESULT(_put_BlockAlignFn(ptr, blockAlign));
    if (hr$.isError) throw WindowsException(hr$);
  }

  int get bitsPerSample {
    final bitsPerSample = loggingCalloc<Int16>();
    final hr$ = HRESULT(_get_BitsPerSampleFn(ptr, bitsPerSample));
    if (hr$.isError) {
      free(bitsPerSample);
      throw WindowsException(hr$);
    }
    final result$ = bitsPerSample.value;
    free(bitsPerSample);
    return result$;
  }

  set bitsPerSample(int bitsPerSample) {
    final hr$ = HRESULT(_put_BitsPerSampleFn(ptr, bitsPerSample));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  Pointer<VARIANT> extraData() {
    final extraData = loggingCalloc<VARIANT>();
    final hr$ = HRESULT(_get_ExtraDataFn(ptr, extraData));
    if (hr$.isError) {
      free(extraData);
      throw WindowsException(hr$);
    }
    return extraData;
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void setExtraData(VARIANT extraData) {
    final hr$ = HRESULT(_put_ExtraDataFn(ptr, extraData));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'ISpeechWaveFormatEx(ptr: $ptr)';
}

/// @nodoc
base class ISpeechWaveFormatExVtbl extends Struct {
  external IDispatchVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Int16> formatTag)
    >
  >
  get_FormatTag;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int16 formatTag)>
  >
  put_FormatTag;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int16> channels)>
  >
  get_Channels;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int16 channels)>
  >
  put_Channels;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Int32> samplesPerSec)
    >
  >
  get_SamplesPerSec;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 samplesPerSec)>
  >
  put_SamplesPerSec;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Int32> avgBytesPerSec)
    >
  >
  get_AvgBytesPerSec;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 avgBytesPerSec)>
  >
  put_AvgBytesPerSec;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Int16> blockAlign)
    >
  >
  get_BlockAlign;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int16 blockAlign)>
  >
  put_BlockAlign;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Int16> bitsPerSample)
    >
  >
  get_BitsPerSample;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int16 bitsPerSample)>
  >
  put_BitsPerSample;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VARIANT> extraData)
    >
  >
  get_ExtraData;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VARIANT extraData)>
  >
  put_ExtraData;
}

@internal
final class ISpeechWaveFormatExCompanion
    extends ComCompanion<ISpeechWaveFormatEx> {
  const ISpeechWaveFormatExCompanion();

  @pragma('vm:prefer-inline')
  @override
  ISpeechWaveFormatEx Function(VTablePointer) get fromPointer =>
      ISpeechWaveFormatEx.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_ISpeechWaveFormatEx;
}
