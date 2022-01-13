// IGetServiceIds.dart

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
const IID_IGetServiceIds = '{4A073526-6103-4E21-B7BC-F519D1524E5D}';

/// {@category Interface}
/// {@category com}
class IGetServiceIds extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IGetServiceIds(Pointer<COMObject> ptr) : super(ptr);

  int GetServiceIds(
    Pointer<Uint32> serviceIdCount,
    Pointer<Pointer<GUID>> serviceIds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> serviceIdCount,
            Pointer<Pointer<GUID>> serviceIds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> serviceIdCount,
            Pointer<Pointer<GUID>> serviceIds,
          )>()(
        ptr.ref.lpVtbl,
        serviceIdCount,
        serviceIds,
      );
}
