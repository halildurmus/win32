// IOfflineFilesTransparentCacheInfo.dart

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
const IID_IOfflineFilesTransparentCacheInfo =
    '{BCAF4A01-5B68-4B56-A6A1-8D2786EDE8E3}';

/// {@category Interface}
/// {@category com}
class IOfflineFilesTransparentCacheInfo extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IOfflineFilesTransparentCacheInfo(Pointer<COMObject> ptr) : super(ptr);

  int IsTransparentlyCached(
    Pointer<Int32> pbTransparentlyCached,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbTransparentlyCached,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbTransparentlyCached,
          )>()(
        ptr.ref.lpVtbl,
        pbTransparentlyCached,
      );
}
