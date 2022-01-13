// IAppxBundleManifestReader2.dart

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
import '../../../storage/packaging/appx/IAppxBundleManifestOptionalBundleInfoEnumerator.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IAppxBundleManifestReader2 = '{5517DF70-033F-4AF2-8213-87D766805C02}';

/// {@category Interface}
/// {@category com}
class IAppxBundleManifestReader2 extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IAppxBundleManifestReader2(Pointer<COMObject> ptr) : super(ptr);

  int GetOptionalBundles(
    Pointer<Pointer<COMObject>> optionalBundles,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> optionalBundles,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> optionalBundles,
          )>()(
        ptr.ref.lpVtbl,
        optionalBundles,
      );
}
