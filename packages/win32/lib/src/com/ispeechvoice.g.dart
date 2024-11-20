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
import '../variant.dart';
import 'idispatch.g.dart';
import 'interface.g.dart';
import 'ispeechbasestream.g.dart';
import 'ispeechobjecttoken.g.dart';
import 'ispeechobjecttokens.g.dart';
import 'ispeechvoicestatus.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ISpeechVoice = Guid.fromComponents(
  0x269316d8,
  0x57bd,
  0x11d2,
  Uint8List.fromList(const [0x9e, 0xee, 0x0, 0xc0, 0x4f, 0x79, 0x73, 0x96]),
);

/// {@category com}
class ISpeechVoice extends IDispatch implements ComInterface {
  /// Creates a new instance of [ISpeechVoice] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ISpeechVoice] interface.
  /// The [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  ISpeechVoice(super.ptr) : _vtable = ptr.value.cast<ISpeechVoiceVtbl>().ref;

  /// Creates a new instance of [ISpeechVoice] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [ISpeechVoice] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ISpeechVoice.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final ISpeechVoiceVtbl _vtable;
  late final _get_StatusFn = _vtable.get_Status
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _get_VoiceFn = _vtable.get_Voice
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _putref_VoiceFn = _vtable.putref_Voice
      .asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _get_AudioOutputFn = _vtable.get_AudioOutput
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _putref_AudioOutputFn = _vtable.putref_AudioOutput
      .asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _get_AudioOutputStreamFn = _vtable.get_AudioOutputStream
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _putref_AudioOutputStreamFn = _vtable.putref_AudioOutputStream
      .asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _get_RateFn = _vtable.get_Rate
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _put_RateFn = _vtable.put_Rate
      .asFunction<int Function(VTablePointer, int)>();
  late final _get_VolumeFn = _vtable.get_Volume
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _put_VolumeFn = _vtable.put_Volume
      .asFunction<int Function(VTablePointer, int)>();
  late final _put_AllowAudioOutputFormatChangesOnNextSetFn = _vtable
      .put_AllowAudioOutputFormatChangesOnNextSet
      .asFunction<int Function(VTablePointer, int)>();
  late final _get_AllowAudioOutputFormatChangesOnNextSetFn = _vtable
      .get_AllowAudioOutputFormatChangesOnNextSet
      .asFunction<int Function(VTablePointer, Pointer<VARIANT_BOOL>)>();
  late final _get_EventInterestsFn = _vtable.get_EventInterests
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _put_EventInterestsFn = _vtable.put_EventInterests
      .asFunction<int Function(VTablePointer, int)>();
  late final _put_PriorityFn = _vtable.put_Priority
      .asFunction<int Function(VTablePointer, int)>();
  late final _get_PriorityFn = _vtable.get_Priority
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _put_AlertBoundaryFn = _vtable.put_AlertBoundary
      .asFunction<int Function(VTablePointer, int)>();
  late final _get_AlertBoundaryFn = _vtable.get_AlertBoundary
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _put_SynchronousSpeakTimeoutFn = _vtable
      .put_SynchronousSpeakTimeout
      .asFunction<int Function(VTablePointer, int)>();
  late final _get_SynchronousSpeakTimeoutFn = _vtable
      .get_SynchronousSpeakTimeout
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _SpeakFn =
      _vtable.Speak.asFunction<
        int Function(VTablePointer, BSTR, int, Pointer<Int32>)
      >();
  late final _SpeakStreamFn =
      _vtable.SpeakStream.asFunction<
        int Function(VTablePointer, VTablePointer, int, Pointer<Int32>)
      >();
  late final _PauseFn = _vtable.Pause.asFunction<int Function(VTablePointer)>();
  late final _ResumeFn =
      _vtable.Resume.asFunction<int Function(VTablePointer)>();
  late final _SkipFn =
      _vtable.Skip.asFunction<
        int Function(VTablePointer, BSTR, int, Pointer<Int32>)
      >();
  late final _GetVoicesFn =
      _vtable.GetVoices.asFunction<
        int Function(VTablePointer, BSTR, BSTR, Pointer<VTablePointer>)
      >();
  late final _GetAudioOutputsFn =
      _vtable.GetAudioOutputs.asFunction<
        int Function(VTablePointer, BSTR, BSTR, Pointer<VTablePointer>)
      >();
  late final _WaitUntilDoneFn =
      _vtable.WaitUntilDone.asFunction<
        int Function(VTablePointer, int, Pointer<VARIANT_BOOL>)
      >();
  late final _SpeakCompleteEventFn =
      _vtable.SpeakCompleteEvent.asFunction<
        int Function(VTablePointer, Pointer<Int32>)
      >();
  late final _IsUISupportedFn =
      _vtable.IsUISupported.asFunction<
        int Function(
          VTablePointer,
          BSTR,
          Pointer<VARIANT>,
          Pointer<VARIANT_BOOL>,
        )
      >();
  late final _DisplayUIFn =
      _vtable.DisplayUI.asFunction<
        int Function(VTablePointer, int, BSTR, BSTR, Pointer<VARIANT>)
      >();

  ISpeechVoiceStatus? get status {
    final status = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_StatusFn(ptr, status));
    if (hr$.isError) {
      free(status);
      throw WindowsException(hr$);
    }
    final result$ = status.value;
    free(status);
    if (result$.isNull) return null;
    return ISpeechVoiceStatus(result$);
  }

  ISpeechObjectToken? get voice {
    final voice = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_VoiceFn(ptr, voice));
    if (hr$.isError) {
      free(voice);
      throw WindowsException(hr$);
    }
    final result$ = voice.value;
    free(voice);
    if (result$.isNull) return null;
    return ISpeechObjectToken(result$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void setVoice(ISpeechObjectToken? voice) {
    final hr$ = HRESULT(_putref_VoiceFn(ptr, voice?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  ISpeechObjectToken? get audioOutput {
    final audioOutput = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_AudioOutputFn(ptr, audioOutput));
    if (hr$.isError) {
      free(audioOutput);
      throw WindowsException(hr$);
    }
    final result$ = audioOutput.value;
    free(audioOutput);
    if (result$.isNull) return null;
    return ISpeechObjectToken(result$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void setAudioOutput(ISpeechObjectToken? audioOutput) {
    final hr$ = HRESULT(
      _putref_AudioOutputFn(ptr, audioOutput?.ptr ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  ISpeechBaseStream? get audioOutputStream {
    final audioOutputStream = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_AudioOutputStreamFn(ptr, audioOutputStream));
    if (hr$.isError) {
      free(audioOutputStream);
      throw WindowsException(hr$);
    }
    final result$ = audioOutputStream.value;
    free(audioOutputStream);
    if (result$.isNull) return null;
    return ISpeechBaseStream(result$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void setAudioOutputStream(ISpeechBaseStream? audioOutputStream) {
    final hr$ = HRESULT(
      _putref_AudioOutputStreamFn(ptr, audioOutputStream?.ptr ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  int get rate {
    final rate = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_RateFn(ptr, rate));
    if (hr$.isError) {
      free(rate);
      throw WindowsException(hr$);
    }
    final result$ = rate.value;
    free(rate);
    return result$;
  }

  set rate(int rate) {
    final hr$ = HRESULT(_put_RateFn(ptr, rate));
    if (hr$.isError) throw WindowsException(hr$);
  }

  int get volume {
    final volume = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_VolumeFn(ptr, volume));
    if (hr$.isError) {
      free(volume);
      throw WindowsException(hr$);
    }
    final result$ = volume.value;
    free(volume);
    return result$;
  }

  set volume(int volume) {
    final hr$ = HRESULT(_put_VolumeFn(ptr, volume));
    if (hr$.isError) throw WindowsException(hr$);
  }

  set allowAudioOutputFormatChangesOnNextSet(bool allow) {
    final hr$ = HRESULT(
      _put_AllowAudioOutputFormatChangesOnNextSetFn(
        ptr,
        allow ? VARIANT_TRUE : FALSE,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  bool get allowAudioOutputFormatChangesOnNextSet {
    final allow = loggingCalloc<VARIANT_BOOL>();
    final hr$ = HRESULT(
      _get_AllowAudioOutputFormatChangesOnNextSetFn(ptr, allow),
    );
    if (hr$.isError) {
      free(allow);
      throw WindowsException(hr$);
    }
    final result$ = allow.value;
    free(allow);
    return result$ != FALSE;
  }

  SpeechVoiceEvents get eventInterests {
    final eventInterestFlags = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_EventInterestsFn(ptr, eventInterestFlags));
    if (hr$.isError) {
      free(eventInterestFlags);
      throw WindowsException(hr$);
    }
    final result$ = eventInterestFlags.value;
    free(eventInterestFlags);
    return SpeechVoiceEvents(result$);
  }

  set eventInterests(SpeechVoiceEvents eventInterestFlags) {
    final hr$ = HRESULT(_put_EventInterestsFn(ptr, eventInterestFlags));
    if (hr$.isError) throw WindowsException(hr$);
  }

  set priority(SpeechVoicePriority priority) {
    final hr$ = HRESULT(_put_PriorityFn(ptr, priority));
    if (hr$.isError) throw WindowsException(hr$);
  }

  SpeechVoicePriority get priority {
    final priority = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_PriorityFn(ptr, priority));
    if (hr$.isError) {
      free(priority);
      throw WindowsException(hr$);
    }
    final result$ = priority.value;
    free(priority);
    return SpeechVoicePriority(result$);
  }

  set alertBoundary(SpeechVoiceEvents boundary) {
    final hr$ = HRESULT(_put_AlertBoundaryFn(ptr, boundary));
    if (hr$.isError) throw WindowsException(hr$);
  }

  SpeechVoiceEvents get alertBoundary {
    final boundary = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_AlertBoundaryFn(ptr, boundary));
    if (hr$.isError) {
      free(boundary);
      throw WindowsException(hr$);
    }
    final result$ = boundary.value;
    free(boundary);
    return SpeechVoiceEvents(result$);
  }

  set synchronousSpeakTimeout(int msTimeout) {
    final hr$ = HRESULT(_put_SynchronousSpeakTimeoutFn(ptr, msTimeout));
    if (hr$.isError) throw WindowsException(hr$);
  }

  int get synchronousSpeakTimeout {
    final msTimeout = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_SynchronousSpeakTimeoutFn(ptr, msTimeout));
    if (hr$.isError) {
      free(msTimeout);
      throw WindowsException(hr$);
    }
    final result$ = msTimeout.value;
    free(msTimeout);
    return result$;
  }

  /// Throws a [WindowsException] on failure.
  int speak(BSTR text, SpeechVoiceSpeakFlags flags) {
    final streamNumber = loggingCalloc<Int32>();
    final hr$ = HRESULT(_SpeakFn(ptr, text, flags, streamNumber));
    if (hr$.isError) {
      free(streamNumber);
      throw WindowsException(hr$);
    }
    final result$ = streamNumber.value;
    free(streamNumber);
    return result$;
  }

  /// Throws a [WindowsException] on failure.
  int speakStream(ISpeechBaseStream? stream, SpeechVoiceSpeakFlags flags) {
    final streamNumber = loggingCalloc<Int32>();
    final hr$ = HRESULT(
      _SpeakStreamFn(ptr, stream?.ptr ?? nullptr, flags, streamNumber),
    );
    if (hr$.isError) {
      free(streamNumber);
      throw WindowsException(hr$);
    }
    final result$ = streamNumber.value;
    free(streamNumber);
    return result$;
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void pause() {
    final hr$ = HRESULT(_PauseFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void resume() {
    final hr$ = HRESULT(_ResumeFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  int skip(BSTR type, int numItems) {
    final numSkipped = loggingCalloc<Int32>();
    final hr$ = HRESULT(_SkipFn(ptr, type, numItems, numSkipped));
    if (hr$.isError) {
      free(numSkipped);
      throw WindowsException(hr$);
    }
    final result$ = numSkipped.value;
    free(numSkipped);
    return result$;
  }

  /// Throws a [WindowsException] on failure.
  ISpeechObjectTokens? getVoices(
    BSTR requiredAttributes,
    BSTR optionalAttributes,
  ) {
    final objectTokens = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _GetVoicesFn(ptr, requiredAttributes, optionalAttributes, objectTokens),
    );
    if (hr$.isError) {
      free(objectTokens);
      throw WindowsException(hr$);
    }
    final result$ = objectTokens.value;
    free(objectTokens);
    if (result$.isNull) return null;
    return ISpeechObjectTokens(result$);
  }

  /// Throws a [WindowsException] on failure.
  ISpeechObjectTokens? getAudioOutputs(
    BSTR requiredAttributes,
    BSTR optionalAttributes,
  ) {
    final objectTokens = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _GetAudioOutputsFn(
        ptr,
        requiredAttributes,
        optionalAttributes,
        objectTokens,
      ),
    );
    if (hr$.isError) {
      free(objectTokens);
      throw WindowsException(hr$);
    }
    final result$ = objectTokens.value;
    free(objectTokens);
    if (result$.isNull) return null;
    return ISpeechObjectTokens(result$);
  }

  /// Throws a [WindowsException] on failure.
  bool waitUntilDone(int msTimeout) {
    final done = loggingCalloc<VARIANT_BOOL>();
    final hr$ = HRESULT(_WaitUntilDoneFn(ptr, msTimeout, done));
    if (hr$.isError) {
      free(done);
      throw WindowsException(hr$);
    }
    final result$ = done.value;
    free(done);
    return result$ != FALSE;
  }

  /// Throws a [WindowsException] on failure.
  int speakCompleteEvent() {
    final handle = loggingCalloc<Int32>();
    final hr$ = HRESULT(_SpeakCompleteEventFn(ptr, handle));
    if (hr$.isError) {
      free(handle);
      throw WindowsException(hr$);
    }
    final result$ = handle.value;
    free(handle);
    return result$;
  }

  /// Throws a [WindowsException] on failure.
  bool isUISupported(BSTR typeOfUI, Pointer<VARIANT> extraData) {
    final supported = loggingCalloc<VARIANT_BOOL>();
    final hr$ = HRESULT(_IsUISupportedFn(ptr, typeOfUI, extraData, supported));
    if (hr$.isError) {
      free(supported);
      throw WindowsException(hr$);
    }
    final result$ = supported.value;
    free(supported);
    return result$ != FALSE;
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void displayUI(
    int hWndParent,
    BSTR title,
    BSTR typeOfUI,
    Pointer<VARIANT> extraData,
  ) {
    final hr$ = HRESULT(
      _DisplayUIFn(ptr, hWndParent, title, typeOfUI, extraData),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'ISpeechVoice(ptr: $ptr)';
}

/// @nodoc
base class ISpeechVoiceVtbl extends Struct {
  external IDispatchVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> status)
    >
  >
  get_Status;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> voice)
    >
  >
  get_Voice;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer voice)>
  >
  putref_Voice;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> audioOutput)
    >
  >
  get_AudioOutput;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, VTablePointer audioOutput)
    >
  >
  putref_AudioOutput;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> audioOutputStream,
      )
    >
  >
  get_AudioOutputStream;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, VTablePointer audioOutputStream)
    >
  >
  putref_AudioOutputStream;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> rate)>
  >
  get_Rate;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 rate)>
  >
  put_Rate;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> volume)>
  >
  get_Volume;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 volume)>
  >
  put_Volume;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VARIANT_BOOL allow)>
  >
  put_AllowAudioOutputFormatChangesOnNextSet;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VARIANT_BOOL> allow)
    >
  >
  get_AllowAudioOutputFormatChangesOnNextSet;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Int32> eventInterestFlags)
    >
  >
  get_EventInterests;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Int32 eventInterestFlags)
    >
  >
  put_EventInterests;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 priority)>
  >
  put_Priority;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> priority)>
  >
  get_Priority;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 boundary)>
  >
  put_AlertBoundary;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> boundary)>
  >
  get_AlertBoundary;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 msTimeout)>
  >
  put_SynchronousSpeakTimeout;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Int32> msTimeout)
    >
  >
  get_SynchronousSpeakTimeout;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        BSTR text,
        Int32 flags,
        Pointer<Int32> streamNumber,
      )
    >
  >
  Speak;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer stream,
        Int32 flags,
        Pointer<Int32> streamNumber,
      )
    >
  >
  SpeakStream;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>> Pause;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>> Resume;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        BSTR type,
        Int32 numItems,
        Pointer<Int32> numSkipped,
      )
    >
  >
  Skip;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        BSTR requiredAttributes,
        BSTR optionalAttributes,
        Pointer<VTablePointer> objectTokens,
      )
    >
  >
  GetVoices;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        BSTR requiredAttributes,
        BSTR optionalAttributes,
        Pointer<VTablePointer> objectTokens,
      )
    >
  >
  GetAudioOutputs;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 msTimeout,
        Pointer<VARIANT_BOOL> done,
      )
    >
  >
  WaitUntilDone;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> handle)>
  >
  SpeakCompleteEvent;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        BSTR typeOfUI,
        Pointer<VARIANT> extraData,
        Pointer<VARIANT_BOOL> supported,
      )
    >
  >
  IsUISupported;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 hWndParent,
        BSTR title,
        BSTR typeOfUI,
        Pointer<VARIANT> extraData,
      )
    >
  >
  DisplayUI;
}

@internal
final class ISpeechVoiceCompanion extends ComCompanion<ISpeechVoice> {
  const ISpeechVoiceCompanion();

  @pragma('vm:prefer-inline')
  @override
  ISpeechVoice Function(VTablePointer) get fromPointer => ISpeechVoice.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_ISpeechVoice;
}
