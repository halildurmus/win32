// ISpeechRecoGrammar.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../media/speech/ISpeechRecoContext.dart';
import '../../media/speech/structs.g.dart';
import '../../media/speech/ISpeechGrammarRules.dart';
import '../../media/speech/ISpeechTextSelectionInformation.dart';

/// @nodoc
const IID_ISpeechRecoGrammar = '{B6D6F79F-2158-4E50-B5BC-9A9CCD852A09}';

/// {@category Interface}
/// {@category com}
class ISpeechRecoGrammar extends IDispatch {
  // vtable begins at 7, is 19 entries long.
  ISpeechRecoGrammar(Pointer<COMObject> ptr) : super(ptr);

  VARIANT get Id {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> Id,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> Id,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get RecoContext {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
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

  set State(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(9)
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
          .elementAt(10)
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

  Pointer<COMObject> get Rules {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> Rules,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> Rules,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int Reset(
    int NewLanguage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 NewLanguage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int NewLanguage,
          )>()(
        ptr.ref.lpVtbl,
        NewLanguage,
      );

  int CmdLoadFromFile(
    Pointer<Utf16> FileName,
    int LoadOption,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> FileName,
            Int32 LoadOption,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> FileName,
            int LoadOption,
          )>()(
        ptr.ref.lpVtbl,
        FileName,
        LoadOption,
      );

  int CmdLoadFromObject(
    Pointer<Utf16> ClassId,
    Pointer<Utf16> GrammarName,
    int LoadOption,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> ClassId,
            Pointer<Utf16> GrammarName,
            Int32 LoadOption,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> ClassId,
            Pointer<Utf16> GrammarName,
            int LoadOption,
          )>()(
        ptr.ref.lpVtbl,
        ClassId,
        GrammarName,
        LoadOption,
      );

  int CmdLoadFromResource(
    int hModule,
    VARIANT ResourceName,
    VARIANT ResourceType,
    int LanguageId,
    int LoadOption,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hModule,
            VARIANT ResourceName,
            VARIANT ResourceType,
            Int32 LanguageId,
            Int32 LoadOption,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hModule,
            VARIANT ResourceName,
            VARIANT ResourceType,
            int LanguageId,
            int LoadOption,
          )>()(
        ptr.ref.lpVtbl,
        hModule,
        ResourceName,
        ResourceType,
        LanguageId,
        LoadOption,
      );

  int CmdLoadFromMemory(
    VARIANT GrammarData,
    int LoadOption,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT GrammarData,
            Int32 LoadOption,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT GrammarData,
            int LoadOption,
          )>()(
        ptr.ref.lpVtbl,
        GrammarData,
        LoadOption,
      );

  int CmdLoadFromProprietaryGrammar(
    Pointer<Utf16> ProprietaryGuid,
    Pointer<Utf16> ProprietaryString,
    VARIANT ProprietaryData,
    int LoadOption,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> ProprietaryGuid,
            Pointer<Utf16> ProprietaryString,
            VARIANT ProprietaryData,
            Int32 LoadOption,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> ProprietaryGuid,
            Pointer<Utf16> ProprietaryString,
            VARIANT ProprietaryData,
            int LoadOption,
          )>()(
        ptr.ref.lpVtbl,
        ProprietaryGuid,
        ProprietaryString,
        ProprietaryData,
        LoadOption,
      );

  int CmdSetRuleState(
    Pointer<Utf16> Name,
    int State,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Name,
            Int32 State,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Name,
            int State,
          )>()(
        ptr.ref.lpVtbl,
        Name,
        State,
      );

  int CmdSetRuleIdState(
    int RuleId,
    int State,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 RuleId,
            Int32 State,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int RuleId,
            int State,
          )>()(
        ptr.ref.lpVtbl,
        RuleId,
        State,
      );

  int DictationLoad(
    Pointer<Utf16> TopicName,
    int LoadOption,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> TopicName,
            Int32 LoadOption,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> TopicName,
            int LoadOption,
          )>()(
        ptr.ref.lpVtbl,
        TopicName,
        LoadOption,
      );

  int DictationUnload() => ptr.ref.lpVtbl.value
          .elementAt(21)
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

  int DictationSetState(
    int State,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
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
          )>()(
        ptr.ref.lpVtbl,
        State,
      );

  int SetWordSequenceData(
    Pointer<Utf16> Text,
    int TextLength,
    Pointer<COMObject> Info,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Text,
            Int32 TextLength,
            Pointer<COMObject> Info,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Text,
            int TextLength,
            Pointer<COMObject> Info,
          )>()(
        ptr.ref.lpVtbl,
        Text,
        TextLength,
        Info,
      );

  int SetTextSelection(
    Pointer<COMObject> Info,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> Info,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> Info,
          )>()(
        ptr.ref.lpVtbl,
        Info,
      );

  int IsPronounceable(
    Pointer<Utf16> Word,
    Pointer<Int32> WordPronounceable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Word,
            Pointer<Int32> WordPronounceable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Word,
            Pointer<Int32> WordPronounceable,
          )>()(
        ptr.ref.lpVtbl,
        Word,
        WordPronounceable,
      );
}
