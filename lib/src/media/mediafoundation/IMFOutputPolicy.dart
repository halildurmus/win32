// IMFOutputPolicy.dart

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

import '../../media/mediafoundation/IMFAttributes.dart';
import '../../media/mediafoundation/IMFCollection.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFOutputPolicy = '{7F00F10A-DAED-41AF-AB26-5FDFA4DFBA3C}';

/// {@category Interface}
/// {@category com}
class IMFOutputPolicy extends IMFAttributes {
  // vtable begins at 33, is 3 entries long.
  IMFOutputPolicy(Pointer<COMObject> ptr) : super(ptr);

  int GenerateRequiredSchemas(
    int dwAttributes,
    GUID guidOutputSubType,
    Pointer<GUID> rgGuidProtectionSchemasSupported,
    int cProtectionSchemasSupported,
    Pointer<Pointer<COMObject>> ppRequiredProtectionSchemas,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwAttributes,
            GUID guidOutputSubType,
            Pointer<GUID> rgGuidProtectionSchemasSupported,
            Uint32 cProtectionSchemasSupported,
            Pointer<Pointer<COMObject>> ppRequiredProtectionSchemas,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwAttributes,
            GUID guidOutputSubType,
            Pointer<GUID> rgGuidProtectionSchemasSupported,
            int cProtectionSchemasSupported,
            Pointer<Pointer<COMObject>> ppRequiredProtectionSchemas,
          )>()(
        ptr.ref.lpVtbl,
        dwAttributes,
        guidOutputSubType,
        rgGuidProtectionSchemasSupported,
        cProtectionSchemasSupported,
        ppRequiredProtectionSchemas,
      );

  int GetOriginatorID(
    Pointer<GUID> pguidOriginatorID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidOriginatorID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidOriginatorID,
          )>()(
        ptr.ref.lpVtbl,
        pguidOriginatorID,
      );

  int GetMinimumGRLVersion(
    Pointer<Uint32> pdwMinimumGRLVersion,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwMinimumGRLVersion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwMinimumGRLVersion,
          )>()(
        ptr.ref.lpVtbl,
        pdwMinimumGRLVersion,
      );
}
