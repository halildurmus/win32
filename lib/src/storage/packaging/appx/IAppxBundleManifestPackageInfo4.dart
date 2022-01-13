// IAppxBundleManifestPackageInfo4.dart

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
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IAppxBundleManifestPackageInfo4 =
    '{5DA6F13D-A8A7-4532-857C-1393D659371D}';

/// {@category Interface}
/// {@category com}
class IAppxBundleManifestPackageInfo4 extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IAppxBundleManifestPackageInfo4(Pointer<COMObject> ptr) : super(ptr);

  int GetIsStub(
    Pointer<Int32> isStub,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> isStub,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> isStub,
          )>()(
        ptr.ref.lpVtbl,
        isStub,
      );
}
