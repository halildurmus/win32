// IOfflineFilesSyncConflictHandler.dart

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
import '../../storage/offlinefiles/structs.g.dart';

/// @nodoc
const IID_IOfflineFilesSyncConflictHandler =
    '{B6DD5092-C65C-46B6-97B8-FADD08E7E1BE}';

/// {@category Interface}
/// {@category com}
class IOfflineFilesSyncConflictHandler extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IOfflineFilesSyncConflictHandler(Pointer<COMObject> ptr) : super(ptr);

  int ResolveConflict(
    Pointer<Utf16> pszPath,
    int fStateKnown,
    int state,
    int fChangeDetails,
    Pointer<Int32> pConflictResolution,
    Pointer<Pointer<Utf16>> ppszNewName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPath,
            Uint32 fStateKnown,
            Int32 state,
            Uint32 fChangeDetails,
            Pointer<Int32> pConflictResolution,
            Pointer<Pointer<Utf16>> ppszNewName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPath,
            int fStateKnown,
            int state,
            int fChangeDetails,
            Pointer<Int32> pConflictResolution,
            Pointer<Pointer<Utf16>> ppszNewName,
          )>()(
        ptr.ref.lpVtbl,
        pszPath,
        fStateKnown,
        state,
        fChangeDetails,
        pConflictResolution,
        ppszNewName,
      );
}
