// IAppxBundleManifestReader.dart

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
import '../../../storage/packaging/appx/IAppxManifestPackageId.dart';
import '../../../foundation/structs.g.dart';
import '../../../storage/packaging/appx/IAppxBundleManifestPackageInfoEnumerator.dart';
import '../../../system/com/IStream.dart';

/// @nodoc
const IID_IAppxBundleManifestReader = '{CF0EBBC1-CC99-4106-91EB-E67462E04FB0}';

/// {@category Interface}
/// {@category com}
class IAppxBundleManifestReader extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IAppxBundleManifestReader(Pointer<COMObject> ptr) : super(ptr);

  int GetPackageId(
    Pointer<Pointer<COMObject>> packageId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> packageId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> packageId,
          )>()(
        ptr.ref.lpVtbl,
        packageId,
      );

  int GetPackageInfoItems(
    Pointer<Pointer<COMObject>> packageInfoItems,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> packageInfoItems,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> packageInfoItems,
          )>()(
        ptr.ref.lpVtbl,
        packageInfoItems,
      );

  int GetStream(
    Pointer<Pointer<COMObject>> manifestStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> manifestStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> manifestStream,
          )>()(
        ptr.ref.lpVtbl,
        manifestStream,
      );
}
