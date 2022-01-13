// IAppxBundleManifestPackageInfo3.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../storage/packaging/appx/IAppxManifestTargetDeviceFamiliesEnumerator.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IAppxBundleManifestPackageInfo3 =
    '{6BA74B98-BB74-4296-80D0-5F4256A99675}';

/// {@category Interface}
/// {@category com}
class IAppxBundleManifestPackageInfo3 extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IAppxBundleManifestPackageInfo3(Pointer<COMObject> ptr) : super(ptr);

  int GetTargetDeviceFamilies(
    Pointer<Pointer<COMObject>> targetDeviceFamilies,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> targetDeviceFamilies,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> targetDeviceFamilies,
          )>()(
        ptr.ref.lpVtbl,
        targetDeviceFamilies,
      );
}
