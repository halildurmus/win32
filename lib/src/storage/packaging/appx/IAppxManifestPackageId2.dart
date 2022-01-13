// IAppxManifestPackageId2.dart

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

import '../../../storage/packaging/appx/IAppxManifestPackageId.dart';
import '../../../storage/packaging/appx/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IAppxManifestPackageId2 = '{2256999D-D617-42F1-880E-0BA4542319D5}';

/// {@category Interface}
/// {@category com}
class IAppxManifestPackageId2 extends IAppxManifestPackageId {
  // vtable begins at 11, is 1 entries long.
  IAppxManifestPackageId2(Pointer<COMObject> ptr) : super(ptr);

  int GetArchitecture2(
    Pointer<Int32> architecture,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> architecture,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> architecture,
          )>()(
        ptr.ref.lpVtbl,
        architecture,
      );
}
