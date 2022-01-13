// ISpeechDataKey.dart

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
import '../../media/speech/ISpeechDataKey.dart';

/// @nodoc
const IID_ISpeechDataKey = '{CE17C09B-4EFA-44D5-A4C9-59D9585AB0CD}';

/// {@category Interface}
/// {@category com}
class ISpeechDataKey extends IDispatch {
  // vtable begins at 7, is 12 entries long.
  ISpeechDataKey(Pointer<COMObject> ptr) : super(ptr);

  int SetBinaryValue(
    Pointer<Utf16> ValueName,
    VARIANT Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> ValueName,
            VARIANT Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> ValueName,
            VARIANT Value,
          )>()(
        ptr.ref.lpVtbl,
        ValueName,
        Value,
      );

  int GetBinaryValue(
    Pointer<Utf16> ValueName,
    Pointer<VARIANT> Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> ValueName,
            Pointer<VARIANT> Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> ValueName,
            Pointer<VARIANT> Value,
          )>()(
        ptr.ref.lpVtbl,
        ValueName,
        Value,
      );

  int SetStringValue(
    Pointer<Utf16> ValueName,
    Pointer<Utf16> Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> ValueName,
            Pointer<Utf16> Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> ValueName,
            Pointer<Utf16> Value,
          )>()(
        ptr.ref.lpVtbl,
        ValueName,
        Value,
      );

  int GetStringValue(
    Pointer<Utf16> ValueName,
    Pointer<Pointer<Utf16>> Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> ValueName,
            Pointer<Pointer<Utf16>> Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> ValueName,
            Pointer<Pointer<Utf16>> Value,
          )>()(
        ptr.ref.lpVtbl,
        ValueName,
        Value,
      );

  int SetLongValue(
    Pointer<Utf16> ValueName,
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> ValueName,
            Int32 Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> ValueName,
            int Value,
          )>()(
        ptr.ref.lpVtbl,
        ValueName,
        Value,
      );

  int GetLongValue(
    Pointer<Utf16> ValueName,
    Pointer<Int32> Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> ValueName,
            Pointer<Int32> Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> ValueName,
            Pointer<Int32> Value,
          )>()(
        ptr.ref.lpVtbl,
        ValueName,
        Value,
      );

  int OpenKey(
    Pointer<Utf16> SubKeyName,
    Pointer<Pointer<COMObject>> SubKey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> SubKeyName,
            Pointer<Pointer<COMObject>> SubKey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> SubKeyName,
            Pointer<Pointer<COMObject>> SubKey,
          )>()(
        ptr.ref.lpVtbl,
        SubKeyName,
        SubKey,
      );

  int CreateKey(
    Pointer<Utf16> SubKeyName,
    Pointer<Pointer<COMObject>> SubKey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> SubKeyName,
            Pointer<Pointer<COMObject>> SubKey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> SubKeyName,
            Pointer<Pointer<COMObject>> SubKey,
          )>()(
        ptr.ref.lpVtbl,
        SubKeyName,
        SubKey,
      );

  int DeleteKey(
    Pointer<Utf16> SubKeyName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> SubKeyName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> SubKeyName,
          )>()(
        ptr.ref.lpVtbl,
        SubKeyName,
      );

  int DeleteValue(
    Pointer<Utf16> ValueName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> ValueName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> ValueName,
          )>()(
        ptr.ref.lpVtbl,
        ValueName,
      );

  int EnumKeys(
    int Index,
    Pointer<Pointer<Utf16>> SubKeyName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Index,
            Pointer<Pointer<Utf16>> SubKeyName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Pointer<Utf16>> SubKeyName,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        SubKeyName,
      );

  int EnumValues(
    int Index,
    Pointer<Pointer<Utf16>> ValueName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Index,
            Pointer<Pointer<Utf16>> ValueName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Pointer<Utf16>> ValueName,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        ValueName,
      );
}
