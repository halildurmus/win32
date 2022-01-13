// ISpeechVoice.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../system/com/IDispatch.dart';
import '../../media/speech/ISpeechVoiceStatus.dart';
import '../../foundation/structs.g.dart';
import '../../media/speech/ISpeechObjectToken.dart';
import '../../media/speech/ISpeechBaseStream.dart';
import '../../media/speech/structs.g.dart';
import '../../media/speech/ISpeechObjectTokens.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_ISpeechVoice = '{269316D8-57BD-11D2-9EEE-00C04F797396}';

/// {@category Interface}
/// {@category com}
class ISpeechVoice extends IDispatch {
  // vtable begins at 7, is 32 entries long.
  ISpeechVoice(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get Status {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> Status,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> Status,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get Voice {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> Voice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> Voice,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int putref_Voice(
    Pointer<COMObject> Voice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> Voice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> Voice,
          )>()(
        ptr.ref.lpVtbl,
        Voice,
      );

  Pointer<COMObject> get AudioOutput {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> AudioOutput,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> AudioOutput,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int putref_AudioOutput(
    Pointer<COMObject> AudioOutput,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> AudioOutput,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> AudioOutput,
          )>()(
        ptr.ref.lpVtbl,
        AudioOutput,
      );

  Pointer<COMObject> get AudioOutputStream {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> AudioOutputStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> AudioOutputStream,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int putref_AudioOutputStream(
    Pointer<COMObject> AudioOutputStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> AudioOutputStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> AudioOutputStream,
          )>()(
        ptr.ref.lpVtbl,
        AudioOutputStream,
      );

  int get Rate {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> Rate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> Rate,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Rate(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(15)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 Rate,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int Rate,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get Volume {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> Volume,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> Volume,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Volume(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(17)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 Volume,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int Volume,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  set AllowAudioOutputFormatChangesOnNextSet(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(18)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 Allow,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int Allow,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get AllowAudioOutputFormatChangesOnNextSet {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> Allow,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> Allow,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get EventInterests {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> EventInterestFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> EventInterestFlags,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set EventInterests(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(21)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 EventInterestFlags,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int EventInterestFlags,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  set Priority(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(22)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 Priority,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int Priority,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get Priority {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> Priority,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> Priority,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set AlertBoundary(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(24)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 Boundary,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int Boundary,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get AlertBoundary {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> Boundary,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> Boundary,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set SynchronousSpeakTimeout(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(26)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 msTimeout,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int msTimeout,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get SynchronousSpeakTimeout {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> msTimeout,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> msTimeout,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int Speak(
    Pointer<Utf16> Text,
    int Flags,
    Pointer<Int32> StreamNumber,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Text,
            Int32 Flags,
            Pointer<Int32> StreamNumber,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Text,
            int Flags,
            Pointer<Int32> StreamNumber,
          )>()(
        ptr.ref.lpVtbl,
        Text,
        Flags,
        StreamNumber,
      );

  int SpeakStream(
    Pointer<COMObject> Stream,
    int Flags,
    Pointer<Int32> StreamNumber,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> Stream,
            Int32 Flags,
            Pointer<Int32> StreamNumber,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> Stream,
            int Flags,
            Pointer<Int32> StreamNumber,
          )>()(
        ptr.ref.lpVtbl,
        Stream,
        Flags,
        StreamNumber,
      );

  int Pause() => ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int Resume() => ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int Skip(
    Pointer<Utf16> Type,
    int NumItems,
    Pointer<Int32> NumSkipped,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Type,
            Int32 NumItems,
            Pointer<Int32> NumSkipped,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Type,
            int NumItems,
            Pointer<Int32> NumSkipped,
          )>()(
        ptr.ref.lpVtbl,
        Type,
        NumItems,
        NumSkipped,
      );

  int GetVoices(
    Pointer<Utf16> RequiredAttributes,
    Pointer<Utf16> OptionalAttributes,
    Pointer<Pointer<COMObject>> ObjectTokens,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> RequiredAttributes,
            Pointer<Utf16> OptionalAttributes,
            Pointer<Pointer<COMObject>> ObjectTokens,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> RequiredAttributes,
            Pointer<Utf16> OptionalAttributes,
            Pointer<Pointer<COMObject>> ObjectTokens,
          )>()(
        ptr.ref.lpVtbl,
        RequiredAttributes,
        OptionalAttributes,
        ObjectTokens,
      );

  int GetAudioOutputs(
    Pointer<Utf16> RequiredAttributes,
    Pointer<Utf16> OptionalAttributes,
    Pointer<Pointer<COMObject>> ObjectTokens,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> RequiredAttributes,
            Pointer<Utf16> OptionalAttributes,
            Pointer<Pointer<COMObject>> ObjectTokens,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> RequiredAttributes,
            Pointer<Utf16> OptionalAttributes,
            Pointer<Pointer<COMObject>> ObjectTokens,
          )>()(
        ptr.ref.lpVtbl,
        RequiredAttributes,
        OptionalAttributes,
        ObjectTokens,
      );

  int WaitUntilDone(
    int msTimeout,
    Pointer<Int16> Done,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 msTimeout,
            Pointer<Int16> Done,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int msTimeout,
            Pointer<Int16> Done,
          )>()(
        ptr.ref.lpVtbl,
        msTimeout,
        Done,
      );

  int SpeakCompleteEvent(
    Pointer<Int32> $Handle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> $Handle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> $Handle,
          )>()(
        ptr.ref.lpVtbl,
        $Handle,
      );

  int IsUISupported(
    Pointer<Utf16> TypeOfUI,
    Pointer<VARIANT> ExtraData,
    Pointer<Int16> Supported,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> TypeOfUI,
            Pointer<VARIANT> ExtraData,
            Pointer<Int16> Supported,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> TypeOfUI,
            Pointer<VARIANT> ExtraData,
            Pointer<Int16> Supported,
          )>()(
        ptr.ref.lpVtbl,
        TypeOfUI,
        ExtraData,
        Supported,
      );

  int DisplayUI(
    int hWndParent,
    Pointer<Utf16> Title,
    Pointer<Utf16> TypeOfUI,
    Pointer<VARIANT> ExtraData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hWndParent,
            Pointer<Utf16> Title,
            Pointer<Utf16> TypeOfUI,
            Pointer<VARIANT> ExtraData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hWndParent,
            Pointer<Utf16> Title,
            Pointer<Utf16> TypeOfUI,
            Pointer<VARIANT> ExtraData,
          )>()(
        ptr.ref.lpVtbl,
        hWndParent,
        Title,
        TypeOfUI,
        ExtraData,
      );
}
