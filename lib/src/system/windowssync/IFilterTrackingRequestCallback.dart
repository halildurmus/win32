// IFilterTrackingRequestCallback.dart

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
import '../../system/windowssync/ISyncFilter.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IFilterTrackingRequestCallback =
    '{713CA7BB-C858-4674-B4B6-1122436587A9}';

/// {@category Interface}
/// {@category com}
class IFilterTrackingRequestCallback extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IFilterTrackingRequestCallback(Pointer<COMObject> ptr) : super(ptr);

  int RequestTrackedFilter(
    Pointer<COMObject> pFilter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFilter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFilter,
          )>()(
        ptr.ref.lpVtbl,
        pFilter,
      );
}
