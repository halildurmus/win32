// ILanguageExceptionTransform.dart

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
import '../../system/winrt/IRestrictedErrorInfo.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ILanguageExceptionTransform =
    '{FEB5A271-A6CD-45CE-880A-696706BADC65}';

/// {@category Interface}
/// {@category com}
class ILanguageExceptionTransform extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ILanguageExceptionTransform(Pointer<COMObject> ptr) : super(ptr);

  int GetTransformedRestrictedErrorInfo(
    Pointer<Pointer<COMObject>> restrictedErrorInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> restrictedErrorInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> restrictedErrorInfo,
          )>()(
        ptr.ref.lpVtbl,
        restrictedErrorInfo,
      );
}
