// INewWindowManager.dart

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
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_INewWindowManager = '{D2BC4C84-3F72-4A52-A604-7BCBF3982CBB}';

/// {@category Interface}
/// {@category com}
class INewWindowManager extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  INewWindowManager(Pointer<COMObject> ptr) : super(ptr);

  int EvaluateNewWindow(
    Pointer<Utf16> pszUrl,
    Pointer<Utf16> pszName,
    Pointer<Utf16> pszUrlContext,
    Pointer<Utf16> pszFeatures,
    int fReplace,
    int dwFlags,
    int dwUserActionTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszUrl,
            Pointer<Utf16> pszName,
            Pointer<Utf16> pszUrlContext,
            Pointer<Utf16> pszFeatures,
            Int32 fReplace,
            Uint32 dwFlags,
            Uint32 dwUserActionTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszUrl,
            Pointer<Utf16> pszName,
            Pointer<Utf16> pszUrlContext,
            Pointer<Utf16> pszFeatures,
            int fReplace,
            int dwFlags,
            int dwUserActionTime,
          )>()(
        ptr.ref.lpVtbl,
        pszUrl,
        pszName,
        pszUrlContext,
        pszFeatures,
        fReplace,
        dwFlags,
        dwUserActionTime,
      );
}
