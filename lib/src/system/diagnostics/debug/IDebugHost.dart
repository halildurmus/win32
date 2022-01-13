// IDebugHost.dart

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

import '../../../system/com/IUnknown.dart';
import '../../../specialTypes.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/IDebugHostContext.dart';
import '../../../system/diagnostics/debug/IKeyStore.dart';

/// @nodoc
const IID_IDebugHost = '{B8C74943-6B2C-4EEB-B5C5-35D378A6D99D}';

/// {@category Interface}
/// {@category com}
class IDebugHost extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IDebugHost(Pointer<COMObject> ptr) : super(ptr);

  int GetHostDefinedInterface(
    Pointer<Pointer<COMObject>> hostUnk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> hostUnk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> hostUnk,
          )>()(
        ptr.ref.lpVtbl,
        hostUnk,
      );

  int GetCurrentContext(
    Pointer<Pointer<COMObject>> context,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> context,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> context,
          )>()(
        ptr.ref.lpVtbl,
        context,
      );

  int GetDefaultMetadata(
    Pointer<Pointer<COMObject>> defaultMetadataStore,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> defaultMetadataStore,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> defaultMetadataStore,
          )>()(
        ptr.ref.lpVtbl,
        defaultMetadataStore,
      );
}
