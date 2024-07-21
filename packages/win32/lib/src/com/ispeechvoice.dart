// ispeechvoice.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../propertykey.dart';
import '../structs.g.dart';
import '../utils.dart';
import '../variant.dart';
import '../win32/ole32.g.dart';
import 'idispatch.dart';
import 'iunknown.dart';

/// @nodoc
const IID_ISpeechVoice = '{269316d8-57bd-11d2-9eee-00c04f797396}';

/// {@category com}
class ISpeechVoice extends IDispatch {
  // vtable begins at 7, is 32 entries long.
  ISpeechVoice(super.ptr);

  factory ISpeechVoice.from(IUnknown interface) =>
      ISpeechVoice(interface.toInterface(IID_ISpeechVoice));

  Pointer<COMObject> get status {
    final retValuePtr = calloc<COMObject>();

    final hr = (ptr.ref.vtable + 7)
            .cast<
                Pointer<
                    NativeFunction<
                        Int32 Function(Pointer, Pointer<COMObject> Status)>>>()
            .value
            .asFunction<int Function(Pointer, Pointer<COMObject> Status)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<COMObject> get voice {
    final retValuePtr = calloc<COMObject>();

    final hr = (ptr.ref.vtable + 8)
            .cast<
                Pointer<
                    NativeFunction<
                        Int32 Function(Pointer, Pointer<COMObject> Voice)>>>()
            .value
            .asFunction<int Function(Pointer, Pointer<COMObject> Voice)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  int putref_Voice(Pointer<COMObject> Voice) => (ptr.ref.vtable + 9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<COMObject> Voice)>>>()
          .value
          .asFunction<int Function(Pointer, Pointer<COMObject> Voice)>()(
      ptr.ref.lpVtbl, Voice);

  Pointer<COMObject> get audioOutput {
    final retValuePtr = calloc<COMObject>();

    final hr = (ptr.ref.vtable + 10)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(Pointer, Pointer<COMObject> AudioOutput)>>>()
        .value
        .asFunction<
            int Function(Pointer,
                Pointer<COMObject> AudioOutput)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  int putref_AudioOutput(Pointer<COMObject> AudioOutput) =>
      (ptr.ref.vtable + 11)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer, Pointer<COMObject> AudioOutput)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<COMObject> AudioOutput)>()(
          ptr.ref.lpVtbl, AudioOutput);

  Pointer<COMObject> get audioOutputStream {
    final retValuePtr = calloc<COMObject>();

    final hr = (ptr.ref.vtable + 12)
            .cast<
                Pointer<
                    NativeFunction<
                        Int32 Function(
                            Pointer, Pointer<COMObject> AudioOutputStream)>>>()
            .value
            .asFunction<
                int Function(Pointer, Pointer<COMObject> AudioOutputStream)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  int putref_AudioOutputStream(Pointer<COMObject> AudioOutputStream) =>
      (ptr.ref.vtable + 13)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer,
                              Pointer<COMObject> AudioOutputStream)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer, Pointer<COMObject> AudioOutputStream)>()(
          ptr.ref.lpVtbl, AudioOutputStream);

  int get rate {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 14)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int32> Rate)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Int32> Rate)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set rate(int value) {
    final hr = (ptr.ref.vtable + 15)
        .cast<Pointer<NativeFunction<Int32 Function(Pointer, Int32 Rate)>>>()
        .value
        .asFunction<int Function(Pointer, int Rate)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get volume {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 16)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int32> Volume)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Int32> Volume)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set volume(int value) {
    final hr = (ptr.ref.vtable + 17)
        .cast<Pointer<NativeFunction<Int32 Function(Pointer, Int32 Volume)>>>()
        .value
        .asFunction<int Function(Pointer, int Volume)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  set allowAudioOutputFormatChangesOnNextSet(int value) {
    final hr = (ptr.ref.vtable + 18)
        .cast<Pointer<NativeFunction<Int32 Function(Pointer, Int16 Allow)>>>()
        .value
        .asFunction<int Function(Pointer, int Allow)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get allowAudioOutputFormatChangesOnNextSet {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = (ptr.ref.vtable + 19)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int16> Allow)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Int16> Allow)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get eventInterests {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 20)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer, Pointer<Int32> EventInterestFlags)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Int32> EventInterestFlags)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set eventInterests(int value) {
    final hr = (ptr.ref.vtable + 21)
            .cast<
                Pointer<
                    NativeFunction<
                        Int32 Function(Pointer, Int32 EventInterestFlags)>>>()
            .value
            .asFunction<int Function(Pointer, int EventInterestFlags)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  set priority(int value) {
    final hr = (ptr.ref.vtable + 22)
        .cast<
            Pointer<NativeFunction<Int32 Function(Pointer, Int32 Priority)>>>()
        .value
        .asFunction<
            int Function(Pointer, int Priority)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get priority {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 23)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int32> Priority)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Int32> Priority)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set alertBoundary(int value) {
    final hr = (ptr.ref.vtable + 24)
        .cast<
            Pointer<NativeFunction<Int32 Function(Pointer, Int32 Boundary)>>>()
        .value
        .asFunction<
            int Function(Pointer, int Boundary)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get alertBoundary {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 25)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int32> Boundary)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Int32> Boundary)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set synchronousSpeakTimeout(int value) {
    final hr = (ptr.ref.vtable + 26)
        .cast<
            Pointer<NativeFunction<Int32 Function(Pointer, Int32 msTimeout)>>>()
        .value
        .asFunction<
            int Function(Pointer, int msTimeout)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get synchronousSpeakTimeout {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 27)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int32> msTimeout)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Int32> msTimeout)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int
      speak(Pointer<Utf16> Text, int Flags, Pointer<Int32> StreamNumber) =>
          (ptr.ref.vtable + 28)
                  .cast<
                      Pointer<
                          NativeFunction<
                              Int32 Function(Pointer, Pointer<Utf16> Text,
                                  Int32 Flags, Pointer<Int32> StreamNumber)>>>()
                  .value
                  .asFunction<
                      int Function(Pointer, Pointer<Utf16> Text, int Flags,
                          Pointer<Int32> StreamNumber)>()(
              ptr.ref.lpVtbl, Text, Flags, StreamNumber);

  int speakStream(
          Pointer<COMObject> Stream, int Flags, Pointer<Int32> StreamNumber) =>
      (ptr.ref.vtable + 29)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<COMObject> Stream,
                              Int32 Flags, Pointer<Int32> StreamNumber)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<COMObject> Stream, int Flags,
                      Pointer<Int32> StreamNumber)>()(
          ptr.ref.lpVtbl, Stream, Flags, StreamNumber);

  int pause() => (ptr.ref.vtable + 30)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer)>>>()
      .value
      .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  int resume() => (ptr.ref.vtable + 31)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer)>>>()
      .value
      .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  int skip(Pointer<Utf16> Type, int NumItems, Pointer<Int32> NumSkipped) =>
      (ptr.ref.vtable + 32)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Utf16> Type,
                              Int32 NumItems, Pointer<Int32> NumSkipped)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Utf16> Type, int NumItems,
                      Pointer<Int32> NumSkipped)>()(
          ptr.ref.lpVtbl, Type, NumItems, NumSkipped);

  int getVoices(
          Pointer<Utf16> RequiredAttributes,
          Pointer<Utf16> OptionalAttributes,
          Pointer<Pointer<COMObject>> ObjectTokens) =>
      (ptr.ref.vtable + 33)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<Utf16> RequiredAttributes,
                              Pointer<Utf16> OptionalAttributes,
                              Pointer<Pointer<COMObject>> ObjectTokens)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<Utf16> RequiredAttributes,
                      Pointer<Utf16> OptionalAttributes,
                      Pointer<Pointer<COMObject>> ObjectTokens)>()(
          ptr.ref.lpVtbl, RequiredAttributes, OptionalAttributes, ObjectTokens);

  int getAudioOutputs(
          Pointer<Utf16> RequiredAttributes,
          Pointer<Utf16> OptionalAttributes,
          Pointer<Pointer<COMObject>> ObjectTokens) =>
      (ptr.ref.vtable + 34)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<Utf16> RequiredAttributes,
                              Pointer<Utf16> OptionalAttributes,
                              Pointer<Pointer<COMObject>> ObjectTokens)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<Utf16> RequiredAttributes,
                      Pointer<Utf16> OptionalAttributes,
                      Pointer<Pointer<COMObject>> ObjectTokens)>()(
          ptr.ref.lpVtbl, RequiredAttributes, OptionalAttributes, ObjectTokens);

  int waitUntilDone(int msTimeout, Pointer<Int16> Done) => (ptr.ref.vtable + 35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
                          Pointer, Int32 msTimeout, Pointer<Int16> Done)>>>()
          .value
          .asFunction<
              int Function(Pointer, int msTimeout, Pointer<Int16> Done)>()(
      ptr.ref.lpVtbl, msTimeout, Done);

  int speakCompleteEvent(Pointer<Int32> Handle) => (ptr.ref.vtable + 36)
      .cast<
          Pointer<
              NativeFunction<Int32 Function(Pointer, Pointer<Int32> Handle)>>>()
      .value
      .asFunction<
          int Function(
              Pointer, Pointer<Int32> Handle)>()(ptr.ref.lpVtbl, Handle);

  int isUISupported(Pointer<Utf16> TypeOfUI, Pointer<VARIANT> ExtraData,
          Pointer<Int16> Supported) =>
      (ptr.ref.vtable + 37)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<Utf16> TypeOfUI,
                              Pointer<VARIANT> ExtraData,
                              Pointer<Int16> Supported)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Utf16> TypeOfUI,
                      Pointer<VARIANT> ExtraData, Pointer<Int16> Supported)>()(
          ptr.ref.lpVtbl, TypeOfUI, ExtraData, Supported);

  int displayUI(int hWndParent, Pointer<Utf16> Title, Pointer<Utf16> TypeOfUI,
          Pointer<VARIANT> ExtraData) =>
      (ptr.ref.vtable + 38)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Int32 hWndParent,
                              Pointer<Utf16> Title,
                              Pointer<Utf16> TypeOfUI,
                              Pointer<VARIANT> ExtraData)>>>()
              .value
              .asFunction<
                  int Function(Pointer, int hWndParent, Pointer<Utf16> Title,
                      Pointer<Utf16> TypeOfUI, Pointer<VARIANT> ExtraData)>()(
          ptr.ref.lpVtbl, hWndParent, Title, TypeOfUI, ExtraData);
}
