// iappxmanifestreader3.dart

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
import 'iappxmanifestreader2.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IAppxManifestReader3 = '{c43825ab-69b7-400a-9709-cc37f5a72d24}';

/// Represents an object model of the package manifest that provides methods
/// to access manifest elements and attributes.
///
/// {@category com}
class IAppxManifestReader3 extends IAppxManifestReader2 {
  // vtable begins at 13, is 2 entries long.
  IAppxManifestReader3(super.ptr);

  factory IAppxManifestReader3.from(IUnknown interface) =>
      IAppxManifestReader3(interface.toInterface(IID_IAppxManifestReader3));

  int getCapabilitiesByCapabilityClass(
    int capabilityClass,
    Pointer<Pointer<COMObject>> capabilities,
  ) => (ptr.ref.vtable + 13)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Int32 capabilityClass,
              Pointer<Pointer<COMObject>> capabilities,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          int capabilityClass,
          Pointer<Pointer<COMObject>> capabilities,
        )
      >()(ptr.ref.lpVtbl, capabilityClass, capabilities);

  int getTargetDeviceFamilies(
    Pointer<Pointer<COMObject>> targetDeviceFamilies,
  ) => (ptr.ref.vtable + 14)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<Pointer<COMObject>> targetDeviceFamilies,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(Pointer, Pointer<Pointer<COMObject>> targetDeviceFamilies)
      >()(ptr.ref.lpVtbl, targetDeviceFamilies);
}
