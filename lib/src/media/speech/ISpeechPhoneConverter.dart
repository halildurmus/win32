// ISpeechPhoneConverter.dart

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

/// @nodoc
const IID_ISpeechPhoneConverter = '{C3E4F353-433F-43D6-89A1-6A62A7054C3D}';

/// {@category Interface}
/// {@category com}
class ISpeechPhoneConverter extends IDispatch {
  // vtable begins at 7, is 4 entries long.
  ISpeechPhoneConverter(Pointer<COMObject> ptr) : super(ptr);

  int get LanguageId {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> LanguageId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> LanguageId,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set LanguageId(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(8)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 LanguageId,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int LanguageId,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int PhoneToId(
    Pointer<Utf16> Phonemes,
    Pointer<VARIANT> IdArray,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Phonemes,
            Pointer<VARIANT> IdArray,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Phonemes,
            Pointer<VARIANT> IdArray,
          )>()(
        ptr.ref.lpVtbl,
        Phonemes,
        IdArray,
      );

  int IdToPhone(
    VARIANT IdArray,
    Pointer<Pointer<Utf16>> Phonemes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT IdArray,
            Pointer<Pointer<Utf16>> Phonemes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT IdArray,
            Pointer<Pointer<Utf16>> Phonemes,
          )>()(
        ptr.ref.lpVtbl,
        IdArray,
        Phonemes,
      );
}
