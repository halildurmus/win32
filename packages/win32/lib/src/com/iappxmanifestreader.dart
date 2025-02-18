// iappxmanifestreader.dart

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
const IID_IAppxManifestReader = '{4e1bd148-55a0-4480-a3d1-15544710637c}';

/// Represents an object model of the package manifest that provides methods
/// to access manifest elements and attributes.
///
/// {@category com}
class IAppxManifestReader extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  IAppxManifestReader(super.ptr);

  factory IAppxManifestReader.from(IUnknown interface) =>
      IAppxManifestReader(interface.toInterface(IID_IAppxManifestReader));

  int getPackageId(Pointer<Pointer<COMObject>> packageId) =>
      (ptr.ref.vtable + 3)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(Pointer, Pointer<Pointer<COMObject>> packageId)
              >
            >
          >()
          .value
          .asFunction<
            int Function(Pointer, Pointer<Pointer<COMObject>> packageId)
          >()(ptr.ref.lpVtbl, packageId);

  int getProperties(Pointer<Pointer<COMObject>> packageProperties) =>
      (ptr.ref.vtable + 4)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Pointer<Pointer<COMObject>> packageProperties,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(Pointer, Pointer<Pointer<COMObject>> packageProperties)
          >()(ptr.ref.lpVtbl, packageProperties);

  int getPackageDependencies(Pointer<Pointer<COMObject>> dependencies) =>
      (ptr.ref.vtable + 5)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Pointer<Pointer<COMObject>> dependencies,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(Pointer, Pointer<Pointer<COMObject>> dependencies)
          >()(ptr.ref.lpVtbl, dependencies);

  int getCapabilities(Pointer<Int32> capabilities) => (ptr.ref.vtable + 6)
      .cast<
        Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> capabilities)>
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Int32> capabilities)>()(
    ptr.ref.lpVtbl,
    capabilities,
  );

  int getResources(Pointer<Pointer<COMObject>> resources) =>
      (ptr.ref.vtable + 7)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(Pointer, Pointer<Pointer<COMObject>> resources)
              >
            >
          >()
          .value
          .asFunction<
            int Function(Pointer, Pointer<Pointer<COMObject>> resources)
          >()(ptr.ref.lpVtbl, resources);

  int getDeviceCapabilities(Pointer<Pointer<COMObject>> deviceCapabilities) =>
      (ptr.ref.vtable + 8)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Pointer<Pointer<COMObject>> deviceCapabilities,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(
              Pointer,
              Pointer<Pointer<COMObject>> deviceCapabilities,
            )
          >()(ptr.ref.lpVtbl, deviceCapabilities);

  int getPrerequisite(Pointer<Utf16> name, Pointer<Uint64> value) =>
      (ptr.ref.vtable + 9)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Pointer<Utf16> name,
                  Pointer<Uint64> value,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(Pointer, Pointer<Utf16> name, Pointer<Uint64> value)
          >()(ptr.ref.lpVtbl, name, value);

  int getApplications(Pointer<Pointer<COMObject>> applications) =>
      (ptr.ref.vtable + 10)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Pointer<Pointer<COMObject>> applications,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(Pointer, Pointer<Pointer<COMObject>> applications)
          >()(ptr.ref.lpVtbl, applications);

  int getStream(Pointer<Pointer<COMObject>> manifestStream) => (ptr.ref.vtable +
          11)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Pointer<Pointer<COMObject>> manifestStream)
          >
        >
      >()
      .value
      .asFunction<
        int Function(Pointer, Pointer<Pointer<COMObject>> manifestStream)
      >()(ptr.ref.lpVtbl, manifestStream);
}
