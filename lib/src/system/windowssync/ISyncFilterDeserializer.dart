// ISyncFilterDeserializer.dart

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
import '../../system/windowssync/ISyncFilter.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISyncFilterDeserializer = '{B45B7A72-E5C7-46BE-9C82-77B8B15DAB8A}';

/// {@category Interface}
/// {@category com}
class ISyncFilterDeserializer extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ISyncFilterDeserializer(Pointer<COMObject> ptr) : super(ptr);

  int DeserializeSyncFilter(
    Pointer<Uint8> pbSyncFilter,
    int dwCbSyncFilter,
    Pointer<Pointer<COMObject>> ppISyncFilter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbSyncFilter,
            Uint32 dwCbSyncFilter,
            Pointer<Pointer<COMObject>> ppISyncFilter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbSyncFilter,
            int dwCbSyncFilter,
            Pointer<Pointer<COMObject>> ppISyncFilter,
          )>()(
        ptr.ref.lpVtbl,
        pbSyncFilter,
        dwCbSyncFilter,
        ppISyncFilter,
      );
}
