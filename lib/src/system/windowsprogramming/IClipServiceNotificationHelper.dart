// IClipServiceNotificationHelper.dart

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
const IID_IClipServiceNotificationHelper =
    '{C39948F0-6142-44FD-98CA-E1681A8D68B5}';

/// {@category Interface}
/// {@category com}
class IClipServiceNotificationHelper extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IClipServiceNotificationHelper(Pointer<COMObject> ptr) : super(ptr);

  int ShowToast(
    Pointer<Utf16> titleText,
    Pointer<Utf16> bodyText,
    Pointer<Utf16> packageName,
    Pointer<Utf16> appId,
    Pointer<Utf16> launchCommand,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> titleText,
            Pointer<Utf16> bodyText,
            Pointer<Utf16> packageName,
            Pointer<Utf16> appId,
            Pointer<Utf16> launchCommand,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> titleText,
            Pointer<Utf16> bodyText,
            Pointer<Utf16> packageName,
            Pointer<Utf16> appId,
            Pointer<Utf16> launchCommand,
          )>()(
        ptr.ref.lpVtbl,
        titleText,
        bodyText,
        packageName,
        appId,
        launchCommand,
      );
}
