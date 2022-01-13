// IAppxManifestReader3.dart

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

import '../../../storage/packaging/appx/IAppxManifestReader2.dart';
import '../../../storage/packaging/appx/structs.g.dart';
import '../../../storage/packaging/appx/IAppxManifestCapabilitiesEnumerator.dart';
import '../../../foundation/structs.g.dart';
import '../../../storage/packaging/appx/IAppxManifestTargetDeviceFamiliesEnumerator.dart';

/// @nodoc
const IID_IAppxManifestReader3 = '{C43825AB-69B7-400A-9709-CC37F5A72D24}';

/// {@category Interface}
/// {@category com}
class IAppxManifestReader3 extends IAppxManifestReader2 {
  // vtable begins at 13, is 2 entries long.
  IAppxManifestReader3(Pointer<COMObject> ptr) : super(ptr);

  int GetCapabilitiesByCapabilityClass(
    int capabilityClass,
    Pointer<Pointer<COMObject>> capabilities,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 capabilityClass,
            Pointer<Pointer<COMObject>> capabilities,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int capabilityClass,
            Pointer<Pointer<COMObject>> capabilities,
          )>()(
        ptr.ref.lpVtbl,
        capabilityClass,
        capabilities,
      );

  int GetTargetDeviceFamilies(
    Pointer<Pointer<COMObject>> targetDeviceFamilies,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> targetDeviceFamilies,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> targetDeviceFamilies,
          )>()(
        ptr.ref.lpVtbl,
        targetDeviceFamilies,
      );
}
