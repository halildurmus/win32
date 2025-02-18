// iappxmanifestproperties.dart

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
import 'iunknown.dart';

/// @nodoc
const IID_IAppxManifestProperties = '{03faf64d-f26f-4b2c-aaf7-8fe7789b8bca}';

/// Provides read-only access to the properties section of a package
/// manifest.
///
/// {@category com}
class IAppxManifestProperties extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IAppxManifestProperties(super.ptr);

  factory IAppxManifestProperties.from(IUnknown interface) =>
      IAppxManifestProperties(
        interface.toInterface(IID_IAppxManifestProperties),
      );

  int getBoolValue(Pointer<Utf16> name, Pointer<Int32> value) =>
      (ptr.ref.vtable + 3)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Pointer<Utf16> name,
                  Pointer<Int32> value,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(Pointer, Pointer<Utf16> name, Pointer<Int32> value)
          >()(ptr.ref.lpVtbl, name, value);

  int getStringValue(Pointer<Utf16> name, Pointer<Pointer<Utf16>> value) =>
      (ptr.ref.vtable + 4)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Pointer<Utf16> name,
                  Pointer<Pointer<Utf16>> value,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(
              Pointer,
              Pointer<Utf16> name,
              Pointer<Pointer<Utf16>> value,
            )
          >()(ptr.ref.lpVtbl, name, value);
}
