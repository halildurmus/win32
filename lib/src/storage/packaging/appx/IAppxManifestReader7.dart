// IAppxManifestReader7.dart

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
import '../../../storage/packaging/appx/IAppxManifestDriverDependenciesEnumerator.dart';
import '../../../foundation/structs.g.dart';
import '../../../storage/packaging/appx/IAppxManifestOSPackageDependenciesEnumerator.dart';
import '../../../storage/packaging/appx/IAppxManifestHostRuntimeDependenciesEnumerator.dart';

/// @nodoc
const IID_IAppxManifestReader7 = '{8EFE6F27-0CE0-4988-B32D-738EB63DB3B7}';

/// {@category Interface}
/// {@category com}
class IAppxManifestReader7 extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IAppxManifestReader7(Pointer<COMObject> ptr) : super(ptr);

  int GetDriverDependencies(
    Pointer<Pointer<COMObject>> driverDependencies,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> driverDependencies,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> driverDependencies,
          )>()(
        ptr.ref.lpVtbl,
        driverDependencies,
      );

  int GetOSPackageDependencies(
    Pointer<Pointer<COMObject>> osPackageDependencies,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> osPackageDependencies,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> osPackageDependencies,
          )>()(
        ptr.ref.lpVtbl,
        osPackageDependencies,
      );

  int GetHostRuntimeDependencies(
    Pointer<Pointer<COMObject>> hostRuntimeDependencies,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> hostRuntimeDependencies,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> hostRuntimeDependencies,
          )>()(
        ptr.ref.lpVtbl,
        hostRuntimeDependencies,
      );
}
