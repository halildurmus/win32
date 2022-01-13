// IOfflineFilesCache2.dart

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

import '../../storage/offlinefiles/IOfflineFilesCache.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IOfflineFilesCache2 = '{8C075039-1551-4ED9-8781-56705C04D3C0}';

/// {@category Interface}
/// {@category com}
class IOfflineFilesCache2 extends IOfflineFilesCache {
  // vtable begins at 20, is 1 entries long.
  IOfflineFilesCache2(Pointer<COMObject> ptr) : super(ptr);

  int RenameItemEx(
    Pointer<Utf16> pszPathOriginal,
    Pointer<Utf16> pszPathNew,
    int bReplaceIfExists,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPathOriginal,
            Pointer<Utf16> pszPathNew,
            Int32 bReplaceIfExists,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPathOriginal,
            Pointer<Utf16> pszPathNew,
            int bReplaceIfExists,
          )>()(
        ptr.ref.lpVtbl,
        pszPathOriginal,
        pszPathNew,
        bReplaceIfExists,
      );
}
