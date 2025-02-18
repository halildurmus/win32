// iappxmanifestreader4.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../propertykey.dart';
import '../structs.g.dart';
import '../utils.dart';
import '../variant.dart';
import '../win32/ole32.g.dart';
import 'iappxmanifestreader3.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IAppxManifestReader4 = '{4579bb7c-741d-4161-b5a1-47bd3b78ad9b}';

/// Represents an object model of the package manifest that provides methods
/// to access manifest elements and attributes.
///
/// {@category com}
class IAppxManifestReader4 extends IAppxManifestReader3 {
  // vtable begins at 15, is 1 entries long.
  IAppxManifestReader4(super.ptr);

  factory IAppxManifestReader4.from(IUnknown interface) =>
      IAppxManifestReader4(interface.toInterface(IID_IAppxManifestReader4));

  int getOptionalPackageInfo(Pointer<Pointer<COMObject>> optionalPackageInfo) =>
      (ptr.ref.vtable + 15)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Pointer<Pointer<COMObject>> optionalPackageInfo,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(
              Pointer,
              Pointer<Pointer<COMObject>> optionalPackageInfo,
            )
          >()(ptr.ref.lpVtbl, optionalPackageInfo);
}
