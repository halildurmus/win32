// IAppxManifestDriverDependency.dart

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
import '../../../storage/packaging/appx/IAppxManifestDriverConstraintsEnumerator.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IAppxManifestDriverDependency =
    '{1210CB94-5A92-4602-BE24-79F318AF4AF9}';

/// {@category Interface}
/// {@category com}
class IAppxManifestDriverDependency extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IAppxManifestDriverDependency(Pointer<COMObject> ptr) : super(ptr);

  int GetDriverConstraints(
    Pointer<Pointer<COMObject>> driverConstraints,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> driverConstraints,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> driverConstraints,
          )>()(
        ptr.ref.lpVtbl,
        driverConstraints,
      );
}
