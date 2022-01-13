// ILanguageExceptionErrorInfo.dart

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

import '../../system/com/IUnknown.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ILanguageExceptionErrorInfo =
    '{04A2DBF3-DF83-116C-0946-0812ABF6E07D}';

/// {@category Interface}
/// {@category com}
class ILanguageExceptionErrorInfo extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ILanguageExceptionErrorInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetLanguageException(
    Pointer<Pointer<COMObject>> languageException,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> languageException,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> languageException,
          )>()(
        ptr.ref.lpVtbl,
        languageException,
      );
}
