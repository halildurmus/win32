// IAppxManifestPackageDependency2.dart

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

import '../../../storage/packaging/appx/IAppxManifestPackageDependency.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IAppxManifestPackageDependency2 =
    '{DDA0B713-F3FF-49D3-898A-2786780C5D98}';

/// {@category Interface}
/// {@category com}
class IAppxManifestPackageDependency2 extends IAppxManifestPackageDependency {
  // vtable begins at 6, is 1 entries long.
  IAppxManifestPackageDependency2(Pointer<COMObject> ptr) : super(ptr);

  int GetMaxMajorVersionTested(
    Pointer<Uint16> maxMajorVersionTested,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> maxMajorVersionTested,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> maxMajorVersionTested,
          )>()(
        ptr.ref.lpVtbl,
        maxMajorVersionTested,
      );
}
