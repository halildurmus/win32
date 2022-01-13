// ISpeechRecoResultDispatch.dart

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
import '../../media/speech/ISpeechRecoContext.dart';
import '../../foundation/structs.g.dart';
import '../../media/speech/ISpeechRecoResultTimes.dart';
import '../../media/speech/ISpeechAudioFormat.dart';
import '../../media/speech/ISpeechPhraseInfo.dart';
import '../../media/speech/ISpeechPhraseAlternates.dart';
import '../../media/speech/ISpeechMemoryStream.dart';
import '../../media/speech/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_ISpeechRecoResultDispatch = '{6D60EB64-ACED-40A6-BBF3-4E557F71DEE2}';

/// {@category Interface}
/// {@category com}
class ISpeechRecoResultDispatch extends IDispatch {
  // vtable begins at 7, is 13 entries long.
  ISpeechRecoResultDispatch(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get RecoContext {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> RecoContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> RecoContext,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get Times {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> Times,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> Times,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int putref_AudioFormat(
    Pointer<COMObject> Format,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> Format,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> Format,
          )>()(
        ptr.ref.lpVtbl,
        Format,
      );

  Pointer<COMObject> get AudioFormat {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> Format,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> Format,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get PhraseInfo {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> PhraseInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> PhraseInfo,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int Alternates(
    int RequestCount,
    int StartElement,
    int Elements,
    Pointer<Pointer<COMObject>> Alternates,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 RequestCount,
            Int32 StartElement,
            Int32 Elements,
            Pointer<Pointer<COMObject>> Alternates,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int RequestCount,
            int StartElement,
            int Elements,
            Pointer<Pointer<COMObject>> Alternates,
          )>()(
        ptr.ref.lpVtbl,
        RequestCount,
        StartElement,
        Elements,
        Alternates,
      );

  int Audio(
    int StartElement,
    int Elements,
    Pointer<Pointer<COMObject>> Stream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 StartElement,
            Int32 Elements,
            Pointer<Pointer<COMObject>> Stream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int StartElement,
            int Elements,
            Pointer<Pointer<COMObject>> Stream,
          )>()(
        ptr.ref.lpVtbl,
        StartElement,
        Elements,
        Stream,
      );

  int SpeakAudio(
    int StartElement,
    int Elements,
    int Flags,
    Pointer<Int32> StreamNumber,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 StartElement,
            Int32 Elements,
            Int32 Flags,
            Pointer<Int32> StreamNumber,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int StartElement,
            int Elements,
            int Flags,
            Pointer<Int32> StreamNumber,
          )>()(
        ptr.ref.lpVtbl,
        StartElement,
        Elements,
        Flags,
        StreamNumber,
      );

  int SaveToMemory(
    Pointer<VARIANT> ResultBlock,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> ResultBlock,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> ResultBlock,
          )>()(
        ptr.ref.lpVtbl,
        ResultBlock,
      );

  int DiscardResultInfo(
    int ValueTypes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 ValueTypes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ValueTypes,
          )>()(
        ptr.ref.lpVtbl,
        ValueTypes,
      );

  int GetXMLResult(
    int Options,
    Pointer<Pointer<Utf16>> pResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Options,
            Pointer<Pointer<Utf16>> pResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Options,
            Pointer<Pointer<Utf16>> pResult,
          )>()(
        ptr.ref.lpVtbl,
        Options,
        pResult,
      );

  int GetXMLErrorInfo(
    Pointer<Int32> LineNumber,
    Pointer<Pointer<Utf16>> ScriptLine,
    Pointer<Pointer<Utf16>> Source,
    Pointer<Pointer<Utf16>> Description,
    Pointer<Int32> ResultCode,
    Pointer<Int16> IsError,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> LineNumber,
            Pointer<Pointer<Utf16>> ScriptLine,
            Pointer<Pointer<Utf16>> Source,
            Pointer<Pointer<Utf16>> Description,
            Pointer<Int32> ResultCode,
            Pointer<Int16> IsError,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> LineNumber,
            Pointer<Pointer<Utf16>> ScriptLine,
            Pointer<Pointer<Utf16>> Source,
            Pointer<Pointer<Utf16>> Description,
            Pointer<Int32> ResultCode,
            Pointer<Int16> IsError,
          )>()(
        ptr.ref.lpVtbl,
        LineNumber,
        ScriptLine,
        Source,
        Description,
        ResultCode,
        IsError,
      );

  int SetTextFeedback(
    Pointer<Utf16> Feedback,
    int WasSuccessful,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Feedback,
            Int16 WasSuccessful,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Feedback,
            int WasSuccessful,
          )>()(
        ptr.ref.lpVtbl,
        Feedback,
        WasSuccessful,
      );
}
