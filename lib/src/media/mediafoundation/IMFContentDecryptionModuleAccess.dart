// IMFContentDecryptionModuleAccess.dart

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
import '../../ui/shell/propertiessystem/IPropertyStore.dart';
import '../../media/mediafoundation/IMFContentDecryptionModule.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFContentDecryptionModuleAccess =
    '{A853D1F4-E2A0-4303-9EDC-F1A68EE43136}';

/// {@category Interface}
/// {@category com}
class IMFContentDecryptionModuleAccess extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMFContentDecryptionModuleAccess(Pointer<COMObject> ptr) : super(ptr);

  int CreateContentDecryptionModule(
    Pointer<COMObject> contentDecryptionModuleProperties,
    Pointer<Pointer<COMObject>> contentDecryptionModule,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> contentDecryptionModuleProperties,
            Pointer<Pointer<COMObject>> contentDecryptionModule,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> contentDecryptionModuleProperties,
            Pointer<Pointer<COMObject>> contentDecryptionModule,
          )>()(
        ptr.ref.lpVtbl,
        contentDecryptionModuleProperties,
        contentDecryptionModule,
      );

  int GetConfiguration(
    Pointer<Pointer<COMObject>> configuration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> configuration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> configuration,
          )>()(
        ptr.ref.lpVtbl,
        configuration,
      );

  int GetKeySystem(
    Pointer<Pointer<Utf16>> keySystem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> keySystem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> keySystem,
          )>()(
        ptr.ref.lpVtbl,
        keySystem,
      );
}
