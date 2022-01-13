// IValidateBinding.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../system/com/IUnknown.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IValidateBinding = '{04A578B2-E778-422A-A805-B3EE54D90BD9}';

/// {@category Interface}
/// {@category com}
class IValidateBinding extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IValidateBinding(Pointer<COMObject> ptr) : super(ptr);

  int GetIdentifier(
    GUID guidLicensorID,
    Pointer<Uint8> pbEphemeron,
    int cbEphemeron,
    Pointer<Pointer<Uint8>> ppbBlobValidationID,
    Pointer<Uint32> pcbBlobSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID guidLicensorID,
            Pointer<Uint8> pbEphemeron,
            Uint32 cbEphemeron,
            Pointer<Pointer<Uint8>> ppbBlobValidationID,
            Pointer<Uint32> pcbBlobSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID guidLicensorID,
            Pointer<Uint8> pbEphemeron,
            int cbEphemeron,
            Pointer<Pointer<Uint8>> ppbBlobValidationID,
            Pointer<Uint32> pcbBlobSize,
          )>()(
        ptr.ref.lpVtbl,
        guidLicensorID,
        pbEphemeron,
        cbEphemeron,
        ppbBlobValidationID,
        pcbBlobSize,
      );
}
