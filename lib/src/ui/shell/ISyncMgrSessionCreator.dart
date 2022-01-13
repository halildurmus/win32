// ISyncMgrSessionCreator.dart

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
import '../../ui/shell/ISyncMgrSyncCallback.dart';

/// @nodoc
const IID_ISyncMgrSessionCreator = '{17F48517-F305-4321-A08D-B25A834918FD}';

/// {@category Interface}
/// {@category com}
class ISyncMgrSessionCreator extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ISyncMgrSessionCreator(Pointer<COMObject> ptr) : super(ptr);

  int CreateSession(
    Pointer<Utf16> pszHandlerID,
    Pointer<Pointer<Utf16>> ppszItemIDs,
    int cItems,
    Pointer<Pointer<COMObject>> ppCallback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszHandlerID,
            Pointer<Pointer<Utf16>> ppszItemIDs,
            Uint32 cItems,
            Pointer<Pointer<COMObject>> ppCallback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszHandlerID,
            Pointer<Pointer<Utf16>> ppszItemIDs,
            int cItems,
            Pointer<Pointer<COMObject>> ppCallback,
          )>()(
        ptr.ref.lpVtbl,
        pszHandlerID,
        ppszItemIDs,
        cItems,
        ppCallback,
      );
}
