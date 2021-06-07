// IAppxManifestReader3.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';
import '../structs.g.dart';
import '../utils.dart';

import 'IAppxManifestReader2.dart';

/// @nodoc
const IID_IAppxManifestReader3 = '{C43825AB-69B7-400A-9709-CC37F5A72D24}';

typedef _GetCapabilitiesByCapabilityClass_Native = Int32 Function(
    Pointer obj, Uint32 capabilityClass, Pointer<Pointer> capabilities);
typedef _GetCapabilitiesByCapabilityClass_Dart = int Function(
    Pointer obj, int capabilityClass, Pointer<Pointer> capabilities);

typedef _GetTargetDeviceFamilies_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> targetDeviceFamilies);
typedef _GetTargetDeviceFamilies_Dart = int Function(
    Pointer obj, Pointer<Pointer> targetDeviceFamilies);

/// {@category Interface}
/// {@category com}
class IAppxManifestReader3 extends IAppxManifestReader2 {
  // vtable begins at 13, ends at 14

  IAppxManifestReader3(Pointer<COMObject> ptr) : super(ptr);

  int
      GetCapabilitiesByCapabilityClass(
              int capabilityClass, Pointer<Pointer> capabilities) =>
          ptr.ref.lpVtbl.value
                  .elementAt(13)
                  .cast<
                      Pointer<
                          NativeFunction<
                              _GetCapabilitiesByCapabilityClass_Native>>>()
                  .value
                  .asFunction<_GetCapabilitiesByCapabilityClass_Dart>()(
              ptr.ref.lpVtbl, capabilityClass, capabilities);

  int GetTargetDeviceFamilies(Pointer<Pointer> targetDeviceFamilies) =>
      ptr.ref.lpVtbl.value
              .elementAt(14)
              .cast<Pointer<NativeFunction<_GetTargetDeviceFamilies_Native>>>()
              .value
              .asFunction<_GetTargetDeviceFamilies_Dart>()(
          ptr.ref.lpVtbl, targetDeviceFamilies);
}
