// IAppxManifestPackageDependency3.dart

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
const IID_IAppxManifestPackageDependency3 =
    '{1AC56374-6198-4D6B-92E4-749D5AB8A895}';

/// {@category Interface}
/// {@category com}
class IAppxManifestPackageDependency3 extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IAppxManifestPackageDependency3(Pointer<COMObject> ptr) : super(ptr);

  int GetIsOptional(
    Pointer<Int32> isOptional,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> isOptional,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> isOptional,
          )>()(
        ptr.ref.lpVtbl,
        isOptional,
      );
}
