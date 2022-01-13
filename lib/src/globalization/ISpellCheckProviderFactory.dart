// ISpellCheckProviderFactory.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../ole32.dart';
import '../utils.dart';

import '../system/com/IUnknown.dart';
import '../system/com/IEnumString.dart';
import '../foundation/structs.g.dart';
import '../globalization/ISpellCheckProvider.dart';

/// @nodoc
const IID_ISpellCheckProviderFactory = '{9F671E11-77D6-4C92-AEFB-615215E3A4BE}';

/// {@category Interface}
/// {@category com}
class ISpellCheckProviderFactory extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ISpellCheckProviderFactory(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get SupportedLanguages {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> value,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int IsSupported(
    Pointer<Utf16> languageTag,
    Pointer<Int32> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> languageTag,
            Pointer<Int32> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> languageTag,
            Pointer<Int32> value,
          )>()(
        ptr.ref.lpVtbl,
        languageTag,
        value,
      );

  int CreateSpellCheckProvider(
    Pointer<Utf16> languageTag,
    Pointer<Pointer<COMObject>> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> languageTag,
            Pointer<Pointer<COMObject>> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> languageTag,
            Pointer<Pointer<COMObject>> value,
          )>()(
        ptr.ref.lpVtbl,
        languageTag,
        value,
      );
}
