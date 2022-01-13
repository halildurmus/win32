// ILaunchSourceAppUserModelId.dart

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
const IID_ILaunchSourceAppUserModelId =
    '{989191AC-28FF-4CF0-9584-E0D078BC2396}';

/// {@category Interface}
/// {@category com}
class ILaunchSourceAppUserModelId extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ILaunchSourceAppUserModelId(Pointer<COMObject> ptr) : super(ptr);

  int GetAppUserModelId(
    Pointer<Pointer<Utf16>> launchingApp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> launchingApp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> launchingApp,
          )>()(
        ptr.ref.lpVtbl,
        launchingApp,
      );
}
