// IAppxBundleManifestPackageInfo.dart

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
import '../../../storage/packaging/appx/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../storage/packaging/appx/IAppxManifestPackageId.dart';
import '../../../storage/packaging/appx/IAppxManifestQualifiedResourcesEnumerator.dart';

/// @nodoc
const IID_IAppxBundleManifestPackageInfo =
    '{54CD06C1-268F-40BB-8ED2-757A9EBAEC8D}';

/// {@category Interface}
/// {@category com}
class IAppxBundleManifestPackageInfo extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IAppxBundleManifestPackageInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetPackageType(
    Pointer<Int32> packageType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> packageType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> packageType,
          )>()(
        ptr.ref.lpVtbl,
        packageType,
      );

  int GetPackageId(
    Pointer<Pointer<COMObject>> packageId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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
          .elementAt(5)
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

  int GetOffset(
    Pointer<Uint64> offset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> offset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> offset,
          )>()(
        ptr.ref.lpVtbl,
        offset,
      );

  int GetSize(
    Pointer<Uint64> size,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> size,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> size,
          )>()(
        ptr.ref.lpVtbl,
        size,
      );

  int GetResources(
    Pointer<Pointer<COMObject>> resources,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> resources,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> resources,
          )>()(
        ptr.ref.lpVtbl,
        resources,
      );
}
