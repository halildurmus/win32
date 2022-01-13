// IRemoteSystemAdditionalInfoProvider.dart

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
const IID_IRemoteSystemAdditionalInfoProvider =
    '{EEAA3D5F-EC63-4D27-AF38-E86B1D7292CB}';

/// {@category Interface}
/// {@category com}
class IRemoteSystemAdditionalInfoProvider extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IRemoteSystemAdditionalInfoProvider(Pointer<COMObject> ptr) : super(ptr);

  int GetAdditionalInfo(
    Pointer<IntPtr> deduplicationId,
    Pointer<GUID> riid,
    Pointer<Pointer> mapView,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> deduplicationId,
            Pointer<GUID> riid,
            Pointer<Pointer> mapView,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> deduplicationId,
            Pointer<GUID> riid,
            Pointer<Pointer> mapView,
          )>()(
        ptr.ref.lpVtbl,
        deduplicationId,
        riid,
        mapView,
      );
}
