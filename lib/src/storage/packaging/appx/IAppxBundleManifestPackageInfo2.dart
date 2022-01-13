// IAppxBundleManifestPackageInfo2.dart

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
const IID_IAppxBundleManifestPackageInfo2 =
    '{44C2ACBC-B2CF-4CCB-BBDB-9C6DA8C3BC9E}';

/// {@category Interface}
/// {@category com}
class IAppxBundleManifestPackageInfo2 extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IAppxBundleManifestPackageInfo2(Pointer<COMObject> ptr) : super(ptr);

  int GetIsPackageReference(
    Pointer<Int32> isPackageReference,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> isPackageReference,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> isPackageReference,
          )>()(
        ptr.ref.lpVtbl,
        isPackageReference,
      );

  int GetIsNonQualifiedResourcePackage(
    Pointer<Int32> isNonQualifiedResourcePackage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> isNonQualifiedResourcePackage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> isNonQualifiedResourcePackage,
          )>()(
        ptr.ref.lpVtbl,
        isNonQualifiedResourcePackage,
      );

  int GetIsDefaultApplicablePackage(
    Pointer<Int32> isDefaultApplicablePackage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> isDefaultApplicablePackage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> isDefaultApplicablePackage,
          )>()(
        ptr.ref.lpVtbl,
        isDefaultApplicablePackage,
      );
}
