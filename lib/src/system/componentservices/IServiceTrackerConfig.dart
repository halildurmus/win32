// IServiceTrackerConfig.dart

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
import '../../system/componentservices/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IServiceTrackerConfig = '{6C3A3E1D-0BA6-4036-B76F-D0404DB816C9}';

/// {@category Interface}
/// {@category com}
class IServiceTrackerConfig extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IServiceTrackerConfig(Pointer<COMObject> ptr) : super(ptr);

  int TrackerConfig(
    int trackerConfig,
    Pointer<Utf16> szTrackerAppName,
    Pointer<Utf16> szTrackerCtxName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 trackerConfig,
            Pointer<Utf16> szTrackerAppName,
            Pointer<Utf16> szTrackerCtxName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int trackerConfig,
            Pointer<Utf16> szTrackerAppName,
            Pointer<Utf16> szTrackerCtxName,
          )>()(
        ptr.ref.lpVtbl,
        trackerConfig,
        szTrackerAppName,
        szTrackerCtxName,
      );
}
