// IRTCSessionDescriptionManager.dart

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
const IID_IRTCSessionDescriptionManager =
    '{BA7F518E-D336-4070-93A6-865395C843F9}';

/// {@category Interface}
/// {@category com}
class IRTCSessionDescriptionManager extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IRTCSessionDescriptionManager(Pointer<COMObject> ptr) : super(ptr);

  int EvaluateSessionDescription(
    Pointer<Utf16> bstrContentType,
    Pointer<Utf16> bstrSessionDescription,
    Pointer<Int16> pfApplicationSession,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrContentType,
            Pointer<Utf16> bstrSessionDescription,
            Pointer<Int16> pfApplicationSession,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrContentType,
            Pointer<Utf16> bstrSessionDescription,
            Pointer<Int16> pfApplicationSession,
          )>()(
        ptr.ref.lpVtbl,
        bstrContentType,
        bstrSessionDescription,
        pfApplicationSession,
      );
}
