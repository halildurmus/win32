// IFilterTrackingProvider.dart

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
import '../../system/windowssync/IFilterTrackingRequestCallback.dart';
import '../../foundation/structs.g.dart';
import '../../system/windowssync/ISyncFilter.dart';

/// @nodoc
const IID_IFilterTrackingProvider = '{743383C0-FC4E-45BA-AD81-D9D84C7A24F8}';

/// {@category Interface}
/// {@category com}
class IFilterTrackingProvider extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IFilterTrackingProvider(Pointer<COMObject> ptr) : super(ptr);

  int SpecifyTrackedFilters(
    Pointer<COMObject> pCallback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCallback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCallback,
          )>()(
        ptr.ref.lpVtbl,
        pCallback,
      );

  int AddTrackedFilter(
    Pointer<COMObject> pFilter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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
