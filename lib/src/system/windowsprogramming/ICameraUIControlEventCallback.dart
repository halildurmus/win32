// ICameraUIControlEventCallback.dart

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
const IID_ICameraUIControlEventCallback =
    '{1BFA0C2C-FBCD-4776-BDA4-88BF974E74F4}';

/// {@category Interface}
/// {@category com}
class ICameraUIControlEventCallback extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  ICameraUIControlEventCallback(Pointer<COMObject> ptr) : super(ptr);

  void OnStartupComplete() => ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  void OnSuspendComplete() => ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  void OnItemCaptured(
    Pointer<Utf16> pszPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Utf16> pszPath,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Utf16> pszPath,
          )>()(
        ptr.ref.lpVtbl,
        pszPath,
      );

  void OnItemDeleted(
    Pointer<Utf16> pszPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Utf16> pszPath,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Utf16> pszPath,
          )>()(
        ptr.ref.lpVtbl,
        pszPath,
      );

  void OnClosed() => ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
