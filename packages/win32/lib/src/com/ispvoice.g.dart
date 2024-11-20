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
import 'interface.g.dart';
import 'ispeventsource.g.dart';
import 'ispobjecttoken.g.dart';
import 'ispstreamformat.g.dart';
import 'istream.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ISpVoice = Guid.fromComponents(
  0x6c44df74,
  0x72b9,
  0x4992,
  Uint8List.fromList(const [0xa1, 0xec, 0xef, 0x99, 0x6e, 0x4, 0x22, 0xd4]),
);

/// Enables an application to perform text synthesis operations.
///
/// To learn more, see
/// <https://learn.microsoft.com/previous-versions/windows/desktop/ms719576(v=vs.85)>.
///
/// {@category com}
class ISpVoice extends ISpEventSource implements ComInterface {
  /// Creates a new instance of [ISpVoice] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ISpVoice] interface. The
  /// [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  ISpVoice(super.ptr) : _vtable = ptr.value.cast<ISpVoiceVtbl>().ref;

  /// Creates a new instance of [ISpVoice] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [ISpVoice] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ISpVoice.from(IUnknown interface, {bool releaseOriginal = false}) =>
      interface.cast(releaseOriginal: releaseOriginal);

  final ISpVoiceVtbl _vtable;
  late final _SetOutputFn = _vtable
      .SetOutput.asFunction<int Function(VTablePointer, VTablePointer, int)>();
  late final _GetOutputObjectTokenFn =
      _vtable.GetOutputObjectToken.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetOutputStreamFn =
      _vtable.GetOutputStream.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _PauseFn = _vtable.Pause.asFunction<int Function(VTablePointer)>();
  late final _ResumeFn =
      _vtable.Resume.asFunction<int Function(VTablePointer)>();
  late final _SetVoiceFn =
      _vtable.SetVoice.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _GetVoiceFn =
      _vtable.GetVoice.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _SpeakFn =
      _vtable.Speak.asFunction<
        int Function(VTablePointer, PCWSTR, int, Pointer<Uint32>)
      >();
  late final _SpeakStreamFn =
      _vtable.SpeakStream.asFunction<
        int Function(VTablePointer, VTablePointer, int, Pointer<Uint32>)
      >();
  late final _GetStatusFn =
      _vtable.GetStatus.asFunction<
        int Function(VTablePointer, Pointer<SPVOICESTATUS>, Pointer<PWSTR>)
      >();
  late final _SkipFn =
      _vtable.Skip.asFunction<
        int Function(VTablePointer, PCWSTR, int, Pointer<Uint32>)
      >();
  late final _SetPriorityFn =
      _vtable.SetPriority.asFunction<int Function(VTablePointer, int)>();
  late final _GetPriorityFn = _vtable
      .GetPriority.asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _SetAlertBoundaryFn =
      _vtable.SetAlertBoundary.asFunction<int Function(VTablePointer, int)>();
  late final _GetAlertBoundaryFn =
      _vtable.GetAlertBoundary.asFunction<
        int Function(VTablePointer, Pointer<Int32>)
      >();
  late final _SetRateFn =
      _vtable.SetRate.asFunction<int Function(VTablePointer, int)>();
  late final _GetRateFn =
      _vtable.GetRate.asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _SetVolumeFn =
      _vtable.SetVolume.asFunction<int Function(VTablePointer, int)>();
  late final _GetVolumeFn = _vtable
      .GetVolume.asFunction<int Function(VTablePointer, Pointer<Uint16>)>();
  late final _WaitUntilDoneFn =
      _vtable.WaitUntilDone.asFunction<int Function(VTablePointer, int)>();
  late final _SetSyncSpeakTimeoutFn = _vtable
      .SetSyncSpeakTimeout.asFunction<int Function(VTablePointer, int)>();
  late final _GetSyncSpeakTimeoutFn =
      _vtable.GetSyncSpeakTimeout.asFunction<
        int Function(VTablePointer, Pointer<Uint32>)
      >();
  late final _SpeakCompleteEventFn =
      _vtable.SpeakCompleteEvent.asFunction<int Function(VTablePointer)>();
  late final _IsUISupportedFn =
      _vtable.IsUISupported.asFunction<
        int Function(VTablePointer, PCWSTR, Pointer, int, Pointer<BOOL>)
      >();
  late final _DisplayUIFn =
      _vtable.DisplayUI.asFunction<
        int Function(VTablePointer, int, PCWSTR, PCWSTR, Pointer, int)
      >();

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void setOutput(IUnknown? pUnkOutput, bool fAllowFormatChanges) {
    final hr$ = HRESULT(
      _SetOutputFn(
        ptr,
        pUnkOutput?.ptr ?? nullptr,
        fAllowFormatChanges ? TRUE : FALSE,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  ISpObjectToken? getOutputObjectToken() {
    final ppObjectToken = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetOutputObjectTokenFn(ptr, ppObjectToken));
    if (hr$.isError) {
      free(ppObjectToken);
      throw WindowsException(hr$);
    }
    final result$ = ppObjectToken.value;
    free(ppObjectToken);
    if (result$.isNull) return null;
    return ISpObjectToken(result$);
  }

  /// Throws a [WindowsException] on failure.
  ISpStreamFormat? getOutputStream() {
    final ppStream = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetOutputStreamFn(ptr, ppStream));
    if (hr$.isError) {
      free(ppStream);
      throw WindowsException(hr$);
    }
    final result$ = ppStream.value;
    free(ppStream);
    if (result$.isNull) return null;
    return ISpStreamFormat(result$);
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
  @pragma('vm:prefer-inline')
  void setVoice(ISpObjectToken? pToken) {
    final hr$ = HRESULT(_SetVoiceFn(ptr, pToken?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  ISpObjectToken? getVoice() {
    final ppToken = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetVoiceFn(ptr, ppToken));
    if (hr$.isError) {
      free(ppToken);
      throw WindowsException(hr$);
    }
    final result$ = ppToken.value;
    free(ppToken);
    if (result$.isNull) return null;
    return ISpObjectToken(result$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void speak(PCWSTR? pwcs, int dwFlags, Pointer<Uint32>? pulStreamNumber) {
    final hr$ = HRESULT(
      _SpeakFn(ptr, pwcs ?? nullptr, dwFlags, pulStreamNumber ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void speakStream(
    IStream? pStream,
    int dwFlags,
    Pointer<Uint32>? pulStreamNumber,
  ) {
    final hr$ = HRESULT(
      _SpeakStreamFn(
        ptr,
        pStream?.ptr ?? nullptr,
        dwFlags,
        pulStreamNumber ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void getStatus(
    Pointer<SPVOICESTATUS> pStatus,
    Pointer<PWSTR> ppszLastBookmark,
  ) {
    final hr$ = HRESULT(_GetStatusFn(ptr, pStatus, ppszLastBookmark));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void skip(PCWSTR pItemType, int lNumItems, Pointer<Uint32> pulNumSkipped) {
    final hr$ = HRESULT(_SkipFn(ptr, pItemType, lNumItems, pulNumSkipped));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void setPriority(SPVPRIORITY ePriority) {
    final hr$ = HRESULT(_SetPriorityFn(ptr, ePriority));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void getPriority(Pointer<Int32> pePriority) {
    final hr$ = HRESULT(_GetPriorityFn(ptr, pePriority));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void setAlertBoundary(SPEVENTENUM eBoundary) {
    final hr$ = HRESULT(_SetAlertBoundaryFn(ptr, eBoundary));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void getAlertBoundary(Pointer<Int32> peBoundary) {
    final hr$ = HRESULT(_GetAlertBoundaryFn(ptr, peBoundary));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void setRate(int rateAdjust) {
    final hr$ = HRESULT(_SetRateFn(ptr, rateAdjust));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void getRate(Pointer<Int32> pRateAdjust) {
    final hr$ = HRESULT(_GetRateFn(ptr, pRateAdjust));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void setVolume(int usVolume) {
    final hr$ = HRESULT(_SetVolumeFn(ptr, usVolume));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void getVolume(Pointer<Uint16> pusVolume) {
    final hr$ = HRESULT(_GetVolumeFn(ptr, pusVolume));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void waitUntilDone(int msTimeout) {
    final hr$ = HRESULT(_WaitUntilDoneFn(ptr, msTimeout));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void setSyncSpeakTimeout(int msTimeout) {
    final hr$ = HRESULT(_SetSyncSpeakTimeoutFn(ptr, msTimeout));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void getSyncSpeakTimeout(Pointer<Uint32> pmsTimeout) {
    final hr$ = HRESULT(_GetSyncSpeakTimeoutFn(ptr, pmsTimeout));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @pragma('vm:prefer-inline')
  int speakCompleteEvent() => _SpeakCompleteEventFn(ptr);

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void isUISupported(
    PCWSTR pszTypeOfUI,
    Pointer pvExtraData,
    int cbExtraData,
    Pointer<BOOL> pfSupported,
  ) {
    final hr$ = HRESULT(
      _IsUISupportedFn(ptr, pszTypeOfUI, pvExtraData, cbExtraData, pfSupported),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void displayUI(
    int hwndParent,
    PCWSTR pszTitle,
    PCWSTR pszTypeOfUI,
    Pointer pvExtraData,
    int cbExtraData,
  ) {
    final hr$ = HRESULT(
      _DisplayUIFn(
        ptr,
        hwndParent,
        pszTitle,
        pszTypeOfUI,
        pvExtraData,
        cbExtraData,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'ISpVoice(ptr: $ptr)';
}

/// @nodoc
base class ISpVoiceVtbl extends Struct {
  external ISpEventSourceVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pUnkOutput,
        BOOL fAllowFormatChanges,
      )
    >
  >
  SetOutput;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> ppObjectToken)
    >
  >
  GetOutputObjectToken;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> ppStream)
    >
  >
  GetOutputStream;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>> Pause;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>> Resume;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer pToken)>
  >
  SetVoice;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> ppToken)
    >
  >
  GetVoice;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR pwcs,
        Uint32 dwFlags,
        Pointer<Uint32> pulStreamNumber,
      )
    >
  >
  Speak;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pStream,
        Uint32 dwFlags,
        Pointer<Uint32> pulStreamNumber,
      )
    >
  >
  SpeakStream;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<SPVOICESTATUS> pStatus,
        Pointer<PWSTR> ppszLastBookmark,
      )
    >
  >
  GetStatus;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR pItemType,
        Int32 lNumItems,
        Pointer<Uint32> pulNumSkipped,
      )
    >
  >
  Skip;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 ePriority)>
  >
  SetPriority;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Int32> pePriority)
    >
  >
  GetPriority;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 eBoundary)>
  >
  SetAlertBoundary;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Int32> peBoundary)
    >
  >
  GetAlertBoundary;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 rateAdjust)>
  >
  SetRate;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Int32> pRateAdjust)
    >
  >
  GetRate;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Uint16 usVolume)>
  >
  SetVolume;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Uint16> pusVolume)
    >
  >
  GetVolume;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Uint32 msTimeout)>
  >
  WaitUntilDone;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Uint32 msTimeout)>
  >
  SetSyncSpeakTimeout;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Uint32> pmsTimeout)
    >
  >
  GetSyncSpeakTimeout;
  external Pointer<NativeFunction<HANDLE Function(VTablePointer this$)>>
  SpeakCompleteEvent;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR pszTypeOfUI,
        Pointer pvExtraData,
        Uint32 cbExtraData,
        Pointer<BOOL> pfSupported,
      )
    >
  >
  IsUISupported;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        HWND hwndParent,
        PCWSTR pszTitle,
        PCWSTR pszTypeOfUI,
        Pointer pvExtraData,
        Uint32 cbExtraData,
      )
    >
  >
  DisplayUI;
}

@internal
final class ISpVoiceCompanion extends ComCompanion<ISpVoice> {
  const ISpVoiceCompanion();

  @pragma('vm:prefer-inline')
  @override
  ISpVoice Function(VTablePointer) get fromPointer => ISpVoice.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_ISpVoice;
}
