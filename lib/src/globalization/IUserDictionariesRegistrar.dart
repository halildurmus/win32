// IUserDictionariesRegistrar.dart

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
import '../foundation/structs.g.dart';

/// @nodoc
const IID_IUserDictionariesRegistrar = '{AA176B85-0E12-4844-8E1A-EEF1DA77F586}';

/// {@category Interface}
/// {@category com}
class IUserDictionariesRegistrar extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IUserDictionariesRegistrar(Pointer<COMObject> ptr) : super(ptr);

  int RegisterUserDictionary(
    Pointer<Utf16> dictionaryPath,
    Pointer<Utf16> languageTag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> dictionaryPath,
            Pointer<Utf16> languageTag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> dictionaryPath,
            Pointer<Utf16> languageTag,
          )>()(
        ptr.ref.lpVtbl,
        dictionaryPath,
        languageTag,
      );

  int UnregisterUserDictionary(
    Pointer<Utf16> dictionaryPath,
    Pointer<Utf16> languageTag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> dictionaryPath,
            Pointer<Utf16> languageTag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> dictionaryPath,
            Pointer<Utf16> languageTag,
          )>()(
        ptr.ref.lpVtbl,
        dictionaryPath,
        languageTag,
      );
}
