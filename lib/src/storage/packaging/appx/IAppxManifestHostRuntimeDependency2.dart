// IAppxManifestHostRuntimeDependency2.dart

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
const IID_IAppxManifestHostRuntimeDependency2 =
    '{C26F23A8-EE10-4AD6-B898-2B4D7AEBFE6A}';

/// {@category Interface}
/// {@category com}
class IAppxManifestHostRuntimeDependency2 extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IAppxManifestHostRuntimeDependency2(Pointer<COMObject> ptr) : super(ptr);

  int GetPackageFamilyName(
    Pointer<Pointer<Utf16>> packageFamilyName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> packageFamilyName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> packageFamilyName,
          )>()(
        ptr.ref.lpVtbl,
        packageFamilyName,
      );
}
