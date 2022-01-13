// IRestrictedErrorInfo.dart

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
const IID_IRestrictedErrorInfo = '{82BA7092-4C88-427D-A7BC-16DD93FEB67E}';

/// {@category Interface}
/// {@category com}
class IRestrictedErrorInfo extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IRestrictedErrorInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetErrorDetails(
    Pointer<Pointer<Utf16>> description,
    Pointer<Int32> error,
    Pointer<Pointer<Utf16>> restrictedDescription,
    Pointer<Pointer<Utf16>> capabilitySid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> description,
            Pointer<Int32> error,
            Pointer<Pointer<Utf16>> restrictedDescription,
            Pointer<Pointer<Utf16>> capabilitySid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> description,
            Pointer<Int32> error,
            Pointer<Pointer<Utf16>> restrictedDescription,
            Pointer<Pointer<Utf16>> capabilitySid,
          )>()(
        ptr.ref.lpVtbl,
        description,
        error,
        restrictedDescription,
        capabilitySid,
      );

  int GetReference(
    Pointer<Pointer<Utf16>> reference,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> reference,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> reference,
          )>()(
        ptr.ref.lpVtbl,
        reference,
      );
}
