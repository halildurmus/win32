// IETFilterConfig.dart

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
import '../../specialTypes.dart';

/// @nodoc
const IID_IETFilterConfig = '{C4C4C4D1-0049-4E2B-98FB-9537F6CE516D}';

/// {@category Interface}
/// {@category com}
class IETFilterConfig extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IETFilterConfig(Pointer<COMObject> ptr) : super(ptr);

  int InitLicense(
    int LicenseId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 LicenseId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int LicenseId,
          )>()(
        ptr.ref.lpVtbl,
        LicenseId,
      );

  int GetSecureChannelObject(
    Pointer<Pointer<COMObject>> ppUnkDRMSecureChannel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppUnkDRMSecureChannel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppUnkDRMSecureChannel,
          )>()(
        ptr.ref.lpVtbl,
        ppUnkDRMSecureChannel,
      );
}
