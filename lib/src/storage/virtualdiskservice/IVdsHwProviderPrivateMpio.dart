// IVdsHwProviderPrivateMpio.dart

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
import '../../storage/virtualdiskservice/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IVdsHwProviderPrivateMpio = '{310A7715-AC2B-4C6F-9827-3D742F351676}';

/// {@category Interface}
/// {@category com}
class IVdsHwProviderPrivateMpio extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IVdsHwProviderPrivateMpio(Pointer<COMObject> ptr) : super(ptr);

  int SetAllPathStatusesFromHbaPort(
    VDS_HBAPORT_PROP hbaPortProp,
    int status,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VDS_HBAPORT_PROP hbaPortProp,
            Int32 status,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VDS_HBAPORT_PROP hbaPortProp,
            int status,
          )>()(
        ptr.ref.lpVtbl,
        hbaPortProp,
        status,
      );
}
