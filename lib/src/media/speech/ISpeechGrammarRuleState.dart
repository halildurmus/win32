// ISpeechGrammarRuleState.dart

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
import '../../media/speech/ISpeechGrammarRule.dart';
import '../../foundation/structs.g.dart';
import '../../media/speech/ISpeechGrammarRuleStateTransitions.dart';
import '../../media/speech/ISpeechGrammarRuleState.dart';
import '../../media/speech/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_ISpeechGrammarRuleState = '{D4286F2C-EE67-45AE-B928-28D695362EDA}';

/// {@category Interface}
/// {@category com}
class ISpeechGrammarRuleState extends IDispatch {
  // vtable begins at 7, is 5 entries long.
  ISpeechGrammarRuleState(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get Rule {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> Rule,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> Rule,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get Transitions {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> Transitions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> Transitions,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int AddWordTransition(
    Pointer<COMObject> DestState,
    Pointer<Utf16> Words,
    Pointer<Utf16> Separators,
    int Type,
    Pointer<Utf16> PropertyName,
    int PropertyId,
    Pointer<VARIANT> PropertyValue,
    double Weight,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> DestState,
            Pointer<Utf16> Words,
            Pointer<Utf16> Separators,
            Int32 Type,
            Pointer<Utf16> PropertyName,
            Int32 PropertyId,
            Pointer<VARIANT> PropertyValue,
            Float Weight,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> DestState,
            Pointer<Utf16> Words,
            Pointer<Utf16> Separators,
            int Type,
            Pointer<Utf16> PropertyName,
            int PropertyId,
            Pointer<VARIANT> PropertyValue,
            double Weight,
          )>()(
        ptr.ref.lpVtbl,
        DestState,
        Words,
        Separators,
        Type,
        PropertyName,
        PropertyId,
        PropertyValue,
        Weight,
      );

  int AddRuleTransition(
    Pointer<COMObject> DestinationState,
    Pointer<COMObject> Rule,
    Pointer<Utf16> PropertyName,
    int PropertyId,
    Pointer<VARIANT> PropertyValue,
    double Weight,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> DestinationState,
            Pointer<COMObject> Rule,
            Pointer<Utf16> PropertyName,
            Int32 PropertyId,
            Pointer<VARIANT> PropertyValue,
            Float Weight,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> DestinationState,
            Pointer<COMObject> Rule,
            Pointer<Utf16> PropertyName,
            int PropertyId,
            Pointer<VARIANT> PropertyValue,
            double Weight,
          )>()(
        ptr.ref.lpVtbl,
        DestinationState,
        Rule,
        PropertyName,
        PropertyId,
        PropertyValue,
        Weight,
      );

  int AddSpecialTransition(
    Pointer<COMObject> DestinationState,
    int Type,
    Pointer<Utf16> PropertyName,
    int PropertyId,
    Pointer<VARIANT> PropertyValue,
    double Weight,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> DestinationState,
            Int32 Type,
            Pointer<Utf16> PropertyName,
            Int32 PropertyId,
            Pointer<VARIANT> PropertyValue,
            Float Weight,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> DestinationState,
            int Type,
            Pointer<Utf16> PropertyName,
            int PropertyId,
            Pointer<VARIANT> PropertyValue,
            double Weight,
          )>()(
        ptr.ref.lpVtbl,
        DestinationState,
        Type,
        PropertyName,
        PropertyId,
        PropertyValue,
        Weight,
      );
}
