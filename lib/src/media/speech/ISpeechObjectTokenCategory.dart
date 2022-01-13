// ISpeechObjectTokenCategory.dart

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
import '../../media/speech/structs.g.dart';
import '../../media/speech/ISpeechDataKey.dart';
import '../../media/speech/ISpeechObjectTokens.dart';

/// @nodoc
const IID_ISpeechObjectTokenCategory = '{CA7EAC50-2D01-4145-86D4-5AE7D70F4469}';

/// {@category Interface}
/// {@category com}
class ISpeechObjectTokenCategory extends IDispatch {
  // vtable begins at 7, is 6 entries long.
  ISpeechObjectTokenCategory(Pointer<COMObject> ptr) : super(ptr);

  Pointer<Utf16> get Id {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> Id,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> Id,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Default(Pointer<Utf16> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(8)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<Utf16> TokenId,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<Utf16> TokenId,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<Utf16> get Default {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> TokenId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> TokenId,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int SetId(
    Pointer<Utf16> Id,
    int CreateIfNotExist,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Id,
            Int16 CreateIfNotExist,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Id,
            int CreateIfNotExist,
          )>()(
        ptr.ref.lpVtbl,
        Id,
        CreateIfNotExist,
      );

  int GetDataKey(
    int Location,
    Pointer<Pointer<COMObject>> DataKey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Location,
            Pointer<Pointer<COMObject>> DataKey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Location,
            Pointer<Pointer<COMObject>> DataKey,
          )>()(
        ptr.ref.lpVtbl,
        Location,
        DataKey,
      );

  int EnumerateTokens(
    Pointer<Utf16> RequiredAttributes,
    Pointer<Utf16> OptionalAttributes,
    Pointer<Pointer<COMObject>> Tokens,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> RequiredAttributes,
            Pointer<Utf16> OptionalAttributes,
            Pointer<Pointer<COMObject>> Tokens,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> RequiredAttributes,
            Pointer<Utf16> OptionalAttributes,
            Pointer<Pointer<COMObject>> Tokens,
          )>()(
        ptr.ref.lpVtbl,
        RequiredAttributes,
        OptionalAttributes,
        Tokens,
      );
}
