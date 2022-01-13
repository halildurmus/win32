// ISpeechGrammarRules.dart

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
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../media/speech/ISpeechGrammarRule.dart';
import '../../media/speech/structs.g.dart';

/// @nodoc
const IID_ISpeechGrammarRules = '{6FFA3B44-FC2D-40D1-8AFC-32911C7F1AD1}';

/// {@category Interface}
/// {@category com}
class ISpeechGrammarRules extends IDispatch {
  // vtable begins at 7, is 8 entries long.
  ISpeechGrammarRules(Pointer<COMObject> ptr) : super(ptr);

  int get Count {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> Count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> Count,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int FindRule(
    VARIANT RuleNameOrId,
    Pointer<Pointer<COMObject>> Rule,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT RuleNameOrId,
            Pointer<Pointer<COMObject>> Rule,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT RuleNameOrId,
            Pointer<Pointer<COMObject>> Rule,
          )>()(
        ptr.ref.lpVtbl,
        RuleNameOrId,
        Rule,
      );

  int Item(
    int Index,
    Pointer<Pointer<COMObject>> Rule,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Index,
            Pointer<Pointer<COMObject>> Rule,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Pointer<COMObject>> Rule,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Rule,
      );

  Pointer<COMObject> get NewEnum {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> EnumVARIANT,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> EnumVARIANT,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get Dynamic {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> Dynamic,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> Dynamic,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int Add(
    Pointer<Utf16> RuleName,
    int Attributes,
    int RuleId,
    Pointer<Pointer<COMObject>> Rule,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> RuleName,
            Int32 Attributes,
            Int32 RuleId,
            Pointer<Pointer<COMObject>> Rule,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> RuleName,
            int Attributes,
            int RuleId,
            Pointer<Pointer<COMObject>> Rule,
          )>()(
        ptr.ref.lpVtbl,
        RuleName,
        Attributes,
        RuleId,
        Rule,
      );

  int Commit() => ptr.ref.lpVtbl.value
          .elementAt(13)
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

  int CommitAndSave(
    Pointer<Pointer<Utf16>> ErrorText,
    Pointer<VARIANT> SaveStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ErrorText,
            Pointer<VARIANT> SaveStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ErrorText,
            Pointer<VARIANT> SaveStream,
          )>()(
        ptr.ref.lpVtbl,
        ErrorText,
        SaveStream,
      );
}
