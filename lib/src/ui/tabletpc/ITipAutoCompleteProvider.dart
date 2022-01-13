// ITipAutoCompleteProvider.dart

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
const IID_ITipAutoCompleteProvider = '{7C6CF46D-8404-46B9-AD33-F5B6036D4007}';

/// {@category Interface}
/// {@category com}
class ITipAutoCompleteProvider extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ITipAutoCompleteProvider(Pointer<COMObject> ptr) : super(ptr);

  int UpdatePendingText(
    Pointer<Utf16> bstrPendingText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrPendingText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrPendingText,
          )>()(
        ptr.ref.lpVtbl,
        bstrPendingText,
      );

  int Show(
    int fShow,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fShow,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fShow,
          )>()(
        ptr.ref.lpVtbl,
        fShow,
      );
}
