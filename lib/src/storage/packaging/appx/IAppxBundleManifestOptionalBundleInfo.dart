// IAppxBundleManifestOptionalBundleInfo.dart

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

/// @nodoc
const IID_IAppxBundleManifestOptionalBundleInfo =
    '{515BF2E8-BCB0-4D69-8C48-E383147B6E12}';

/// {@category Interface}
/// {@category com}
class IAppxBundleManifestOptionalBundleInfo extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IAppxBundleManifestOptionalBundleInfo(Pointer<COMObject> ptr) : super(ptr);

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

  int GetFileName(
    Pointer<Pointer<Utf16>> fileName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> fileName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> fileName,
          )>()(
        ptr.ref.lpVtbl,
        fileName,
      );

  int GetPackageInfoItems(
    Pointer<Pointer<COMObject>> packageInfoItems,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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
}
