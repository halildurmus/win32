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
import 'idispatch.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ISpeechVoiceStatus = Guid.fromComponents(
  0x8be47b07,
  0x57f6,
  0x11d2,
  Uint8List.fromList(const [0x9e, 0xee, 0x0, 0xc0, 0x4f, 0x79, 0x73, 0x96]),
);

/// Defines the types of information returned by the SpVoice.Status method.
///
/// To learn more, see
/// <https://learn.microsoft.com/previous-versions/windows/desktop/ms722539(v=vs.85)>.
///
/// {@category com}
class ISpeechVoiceStatus extends IDispatch implements ComInterface {
  /// Creates a new instance of [ISpeechVoiceStatus] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ISpeechVoiceStatus]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  ISpeechVoiceStatus(super.ptr)
    : _vtable = ptr.value.cast<ISpeechVoiceStatusVtbl>().ref;

  /// Creates a new instance of [ISpeechVoiceStatus] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [ISpeechVoiceStatus] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ISpeechVoiceStatus.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final ISpeechVoiceStatusVtbl _vtable;
  late final _get_CurrentStreamNumberFn = _vtable.get_CurrentStreamNumber
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_LastStreamNumberQueuedFn = _vtable.get_LastStreamNumberQueued
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_LastHResultFn = _vtable.get_LastHResult
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_RunningStateFn = _vtable.get_RunningState
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_InputWordPositionFn = _vtable.get_InputWordPosition
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_InputWordLengthFn = _vtable.get_InputWordLength
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_InputSentencePositionFn = _vtable.get_InputSentencePosition
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_InputSentenceLengthFn = _vtable.get_InputSentenceLength
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_LastBookmarkFn = _vtable.get_LastBookmark
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_LastBookmarkIdFn = _vtable.get_LastBookmarkId
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_PhonemeIdFn = _vtable.get_PhonemeId
      .asFunction<int Function(VTablePointer, Pointer<Int16>)>();
  late final _get_VisemeIdFn = _vtable.get_VisemeId
      .asFunction<int Function(VTablePointer, Pointer<Int16>)>();

  int get currentStreamNumber {
    final streamNumber = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CurrentStreamNumberFn(ptr, streamNumber));
    if (hr$.isError) {
      free(streamNumber);
      throw WindowsException(hr$);
    }
    final result$ = streamNumber.value;
    free(streamNumber);
    return result$;
  }

  int get lastStreamNumberQueued {
    final streamNumber = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_LastStreamNumberQueuedFn(ptr, streamNumber));
    if (hr$.isError) {
      free(streamNumber);
      throw WindowsException(hr$);
    }
    final result$ = streamNumber.value;
    free(streamNumber);
    return result$;
  }

  int get lastHResult {
    final hResult = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_LastHResultFn(ptr, hResult));
    if (hr$.isError) {
      free(hResult);
      throw WindowsException(hr$);
    }
    final result$ = hResult.value;
    free(hResult);
    return result$;
  }

  SpeechRunState get runningState {
    final state = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_RunningStateFn(ptr, state));
    if (hr$.isError) {
      free(state);
      throw WindowsException(hr$);
    }
    final result$ = state.value;
    free(state);
    return SpeechRunState(result$);
  }

  int get inputWordPosition {
    final position = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_InputWordPositionFn(ptr, position));
    if (hr$.isError) {
      free(position);
      throw WindowsException(hr$);
    }
    final result$ = position.value;
    free(position);
    return result$;
  }

  int get inputWordLength {
    final length = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_InputWordLengthFn(ptr, length));
    if (hr$.isError) {
      free(length);
      throw WindowsException(hr$);
    }
    final result$ = length.value;
    free(length);
    return result$;
  }

  int get inputSentencePosition {
    final position = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_InputSentencePositionFn(ptr, position));
    if (hr$.isError) {
      free(position);
      throw WindowsException(hr$);
    }
    final result$ = position.value;
    free(position);
    return result$;
  }

  int get inputSentenceLength {
    final length = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_InputSentenceLengthFn(ptr, length));
    if (hr$.isError) {
      free(length);
      throw WindowsException(hr$);
    }
    final result$ = length.value;
    free(length);
    return result$;
  }

  BSTR get lastBookmark {
    final bookmark = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_LastBookmarkFn(ptr, bookmark));
    if (hr$.isError) {
      free(bookmark);
      throw WindowsException(hr$);
    }
    final result$ = bookmark.value;
    free(bookmark);
    return result$;
  }

  int get lastBookmarkId {
    final bookmarkId = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_LastBookmarkIdFn(ptr, bookmarkId));
    if (hr$.isError) {
      free(bookmarkId);
      throw WindowsException(hr$);
    }
    final result$ = bookmarkId.value;
    free(bookmarkId);
    return result$;
  }

  int get phonemeId {
    final phoneId = loggingCalloc<Int16>();
    final hr$ = HRESULT(_get_PhonemeIdFn(ptr, phoneId));
    if (hr$.isError) {
      free(phoneId);
      throw WindowsException(hr$);
    }
    final result$ = phoneId.value;
    free(phoneId);
    return result$;
  }

  int get visemeId {
    final visemeId = loggingCalloc<Int16>();
    final hr$ = HRESULT(_get_VisemeIdFn(ptr, visemeId));
    if (hr$.isError) {
      free(visemeId);
      throw WindowsException(hr$);
    }
    final result$ = visemeId.value;
    free(visemeId);
    return result$;
  }

  @override
  String toString() => 'ISpeechVoiceStatus(ptr: $ptr)';
}

/// @nodoc
base class ISpeechVoiceStatusVtbl extends Struct {
  external IDispatchVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Int32> streamNumber)
    >
  >
  get_CurrentStreamNumber;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Int32> streamNumber)
    >
  >
  get_LastStreamNumberQueued;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> hResult)>
  >
  get_LastHResult;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> state)>
  >
  get_RunningState;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> position)>
  >
  get_InputWordPosition;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> length)>
  >
  get_InputWordLength;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> position)>
  >
  get_InputSentencePosition;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> length)>
  >
  get_InputSentenceLength;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> bookmark)>
  >
  get_LastBookmark;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Int32> bookmarkId)
    >
  >
  get_LastBookmarkId;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int16> phoneId)>
  >
  get_PhonemeId;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int16> visemeId)>
  >
  get_VisemeId;
}

@internal
final class ISpeechVoiceStatusCompanion
    extends ComCompanion<ISpeechVoiceStatus> {
  const ISpeechVoiceStatusCompanion();

  @pragma('vm:prefer-inline')
  @override
  ISpeechVoiceStatus Function(VTablePointer) get fromPointer =>
      ISpeechVoiceStatus.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_ISpeechVoiceStatus;
}
