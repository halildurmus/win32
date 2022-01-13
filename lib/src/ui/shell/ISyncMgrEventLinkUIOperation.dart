// ISyncMgrEventLinkUIOperation.dart

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

import '../../ui/shell/ISyncMgrUIOperation.dart';
import '../../ui/shell/ISyncMgrEvent.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISyncMgrEventLinkUIOperation =
    '{64522E52-848B-4015-89CE-5A36F00B94FF}';

/// {@category Interface}
/// {@category com}
class ISyncMgrEventLinkUIOperation extends ISyncMgrUIOperation {
  // vtable begins at 4, is 1 entries long.
  ISyncMgrEventLinkUIOperation(Pointer<COMObject> ptr) : super(ptr);

  int Init(
    Pointer<GUID> rguidEventID,
    Pointer<COMObject> pEvent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rguidEventID,
            Pointer<COMObject> pEvent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rguidEventID,
            Pointer<COMObject> pEvent,
          )>()(
        ptr.ref.lpVtbl,
        rguidEventID,
        pEvent,
      );
}
