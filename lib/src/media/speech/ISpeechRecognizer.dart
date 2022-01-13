// ISpeechRecognizer.dart

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
import '../../media/speech/ISpeechObjectToken.dart';
import '../../foundation/structs.g.dart';
import '../../media/speech/ISpeechBaseStream.dart';
import '../../media/speech/structs.g.dart';
import '../../media/speech/ISpeechRecognizerStatus.dart';
import '../../specialTypes.dart';
import '../../media/speech/ISpeechRecoContext.dart';
import '../../media/speech/ISpeechAudioFormat.dart';
import '../../media/speech/ISpeechObjectTokens.dart';

/// @nodoc
const IID_ISpeechRecognizer = '{2D5F1C0C-BD75-4B08-9478-3B11FEA2586C}';

/// {@category Interface}
/// {@category com}
class ISpeechRecognizer extends IDispatch {
  // vtable begins at 7, is 26 entries long.
  ISpeechRecognizer(Pointer<COMObject> ptr) : super(ptr);

  int putref_Recognizer(
    Pointer<COMObject> Recognizer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> Recognizer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> Recognizer,
          )>()(
        ptr.ref.lpVtbl,
        Recognizer,
      );

  Pointer<COMObject> get Recognizer {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> Recognizer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> Recognizer,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set AllowAudioInputFormatChangesOnNextSet(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(9)
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

  int get AllowAudioInputFormatChangesOnNextSet {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(10)
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

  int putref_AudioInput(
    Pointer<COMObject> AudioInput,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> AudioInput,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> AudioInput,
          )>()(
        ptr.ref.lpVtbl,
        AudioInput,
      );

  Pointer<COMObject> get AudioInput {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> AudioInput,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> AudioInput,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int putref_AudioInputStream(
    Pointer<COMObject> AudioInputStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> AudioInputStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> AudioInputStream,
          )>()(
        ptr.ref.lpVtbl,
        AudioInputStream,
      );

  Pointer<COMObject> get AudioInputStream {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> AudioInputStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> AudioInputStream,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get IsShared {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> Shared,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> Shared,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set State(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(16)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 State,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int State,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get State {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> State,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> State,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get Status {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(18)
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

  int putref_Profile(
    Pointer<COMObject> Profile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> Profile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> Profile,
          )>()(
        ptr.ref.lpVtbl,
        Profile,
      );

  Pointer<COMObject> get Profile {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> Profile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> Profile,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int EmulateRecognition(
    VARIANT TextElements,
    Pointer<VARIANT> ElementDisplayAttributes,
    int LanguageId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT TextElements,
            Pointer<VARIANT> ElementDisplayAttributes,
            Int32 LanguageId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT TextElements,
            Pointer<VARIANT> ElementDisplayAttributes,
            int LanguageId,
          )>()(
        ptr.ref.lpVtbl,
        TextElements,
        ElementDisplayAttributes,
        LanguageId,
      );

  int CreateRecoContext(
    Pointer<Pointer<COMObject>> NewContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> NewContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> NewContext,
          )>()(
        ptr.ref.lpVtbl,
        NewContext,
      );

  int GetFormat(
    int Type,
    Pointer<Pointer<COMObject>> Format,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Type,
            Pointer<Pointer<COMObject>> Format,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Type,
            Pointer<Pointer<COMObject>> Format,
          )>()(
        ptr.ref.lpVtbl,
        Type,
        Format,
      );

  int SetPropertyNumber(
    Pointer<Utf16> Name,
    int Value,
    Pointer<Int16> Supported,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Name,
            Int32 Value,
            Pointer<Int16> Supported,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Name,
            int Value,
            Pointer<Int16> Supported,
          )>()(
        ptr.ref.lpVtbl,
        Name,
        Value,
        Supported,
      );

  int GetPropertyNumber(
    Pointer<Utf16> Name,
    Pointer<Int32> Value,
    Pointer<Int16> Supported,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Name,
            Pointer<Int32> Value,
            Pointer<Int16> Supported,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Name,
            Pointer<Int32> Value,
            Pointer<Int16> Supported,
          )>()(
        ptr.ref.lpVtbl,
        Name,
        Value,
        Supported,
      );

  int SetPropertyString(
    Pointer<Utf16> Name,
    Pointer<Utf16> Value,
    Pointer<Int16> Supported,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Name,
            Pointer<Utf16> Value,
            Pointer<Int16> Supported,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Name,
            Pointer<Utf16> Value,
            Pointer<Int16> Supported,
          )>()(
        ptr.ref.lpVtbl,
        Name,
        Value,
        Supported,
      );

  int GetPropertyString(
    Pointer<Utf16> Name,
    Pointer<Pointer<Utf16>> Value,
    Pointer<Int16> Supported,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Name,
            Pointer<Pointer<Utf16>> Value,
            Pointer<Int16> Supported,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Name,
            Pointer<Pointer<Utf16>> Value,
            Pointer<Int16> Supported,
          )>()(
        ptr.ref.lpVtbl,
        Name,
        Value,
        Supported,
      );

  int IsUISupported(
    Pointer<Utf16> TypeOfUI,
    Pointer<VARIANT> ExtraData,
    Pointer<Int16> Supported,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
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
          .elementAt(29)
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

  int GetRecognizers(
    Pointer<Utf16> RequiredAttributes,
    Pointer<Utf16> OptionalAttributes,
    Pointer<Pointer<COMObject>> ObjectTokens,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
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

  int GetAudioInputs(
    Pointer<Utf16> RequiredAttributes,
    Pointer<Utf16> OptionalAttributes,
    Pointer<Pointer<COMObject>> ObjectTokens,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
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

  int GetProfiles(
    Pointer<Utf16> RequiredAttributes,
    Pointer<Utf16> OptionalAttributes,
    Pointer<Pointer<COMObject>> ObjectTokens,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
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
}
