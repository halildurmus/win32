// IAppxManifestOptionalPackageInfo.dart

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
const IID_IAppxManifestOptionalPackageInfo =
    '{2634847D-5B5D-4FE5-A243-002FF95EDC7E}';

/// {@category Interface}
/// {@category com}
class IAppxManifestOptionalPackageInfo extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IAppxManifestOptionalPackageInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetIsOptionalPackage(
    Pointer<Int32> isOptionalPackage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> isOptionalPackage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> isOptionalPackage,
          )>()(
        ptr.ref.lpVtbl,
        isOptionalPackage,
      );

  int GetMainPackageName(
    Pointer<Pointer<Utf16>> mainPackageName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> mainPackageName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> mainPackageName,
          )>()(
        ptr.ref.lpVtbl,
        mainPackageName,
      );
}
