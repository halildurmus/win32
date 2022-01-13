// IMFContentDecryptionModuleFactory.dart

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
import '../../ui/shell/propertiessystem/IPropertyStore.dart';
import '../../media/mediafoundation/IMFContentDecryptionModuleAccess.dart';

/// @nodoc
const IID_IMFContentDecryptionModuleFactory =
    '{7D5ABF16-4CBB-4E08-B977-9BA59049943E}';

/// {@category Interface}
/// {@category com}
class IMFContentDecryptionModuleFactory extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMFContentDecryptionModuleFactory(Pointer<COMObject> ptr) : super(ptr);

  int IsTypeSupported(
    Pointer<Utf16> keySystem,
    Pointer<Utf16> contentType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> keySystem,
            Pointer<Utf16> contentType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> keySystem,
            Pointer<Utf16> contentType,
          )>()(
        ptr.ref.lpVtbl,
        keySystem,
        contentType,
      );

  int CreateContentDecryptionModuleAccess(
    Pointer<Utf16> keySystem,
    Pointer<Pointer<COMObject>> configurations,
    int numConfigurations,
    Pointer<Pointer<COMObject>> contentDecryptionModuleAccess,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> keySystem,
            Pointer<Pointer<COMObject>> configurations,
            Uint32 numConfigurations,
            Pointer<Pointer<COMObject>> contentDecryptionModuleAccess,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> keySystem,
            Pointer<Pointer<COMObject>> configurations,
            int numConfigurations,
            Pointer<Pointer<COMObject>> contentDecryptionModuleAccess,
          )>()(
        ptr.ref.lpVtbl,
        keySystem,
        configurations,
        numConfigurations,
        contentDecryptionModuleAccess,
      );
}
