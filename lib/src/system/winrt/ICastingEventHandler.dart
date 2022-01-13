// ICastingEventHandler.dart

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
import '../../system/winrt/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ICastingEventHandler = '{C79A6CB7-BEBD-47A6-A2AD-4D45AD79C7BC}';

/// {@category Interface}
/// {@category com}
class ICastingEventHandler extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ICastingEventHandler(Pointer<COMObject> ptr) : super(ptr);

  int OnStateChanged(
    int newState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 newState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int newState,
          )>()(
        ptr.ref.lpVtbl,
        newState,
      );

  int OnError(
    int errorStatus,
    Pointer<Utf16> errorMessage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 errorStatus,
            Pointer<Utf16> errorMessage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int errorStatus,
            Pointer<Utf16> errorMessage,
          )>()(
        ptr.ref.lpVtbl,
        errorStatus,
        errorMessage,
      );
}
