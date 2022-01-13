// ILanguageExceptionErrorInfo2.dart

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

import '../../system/winrt/ILanguageExceptionErrorInfo.dart';
import '../../system/winrt/ILanguageExceptionErrorInfo2.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_ILanguageExceptionErrorInfo2 =
    '{5746E5C4-5B97-424C-B620-2822915734DD}';

/// {@category Interface}
/// {@category com}
class ILanguageExceptionErrorInfo2 extends ILanguageExceptionErrorInfo {
  // vtable begins at 4, is 3 entries long.
  ILanguageExceptionErrorInfo2(Pointer<COMObject> ptr) : super(ptr);

  int GetPreviousLanguageExceptionErrorInfo(
    Pointer<Pointer<COMObject>> previousLanguageExceptionErrorInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> previousLanguageExceptionErrorInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> previousLanguageExceptionErrorInfo,
          )>()(
        ptr.ref.lpVtbl,
        previousLanguageExceptionErrorInfo,
      );

  int CapturePropagationContext(
    Pointer<COMObject> languageException,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> languageException,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> languageException,
          )>()(
        ptr.ref.lpVtbl,
        languageException,
      );

  int GetPropagationContextHead(
    Pointer<Pointer<COMObject>> propagatedLanguageExceptionErrorInfoHead,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>>
                propagatedLanguageExceptionErrorInfoHead,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>>
                propagatedLanguageExceptionErrorInfoHead,
          )>()(
        ptr.ref.lpVtbl,
        propagatedLanguageExceptionErrorInfoHead,
      );
}
