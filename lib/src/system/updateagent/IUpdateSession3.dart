// IUpdateSession3.dart

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

import '../../system/updateagent/IUpdateSession2.dart';
import '../../system/updateagent/IUpdateServiceManager2.dart';
import '../../foundation/structs.g.dart';
import '../../system/updateagent/IUpdateHistoryEntryCollection.dart';

/// @nodoc
const IID_IUpdateSession3 = '{918EFD1E-B5D8-4C90-8540-AEB9BDC56F9D}';

/// {@category Interface}
/// {@category com}
class IUpdateSession3 extends IUpdateSession2 {
  // vtable begins at 17, is 2 entries long.
  IUpdateSession3(Pointer<COMObject> ptr) : super(ptr);

  int CreateUpdateServiceManager(
    Pointer<Pointer<COMObject>> retval,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> retval,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> retval,
          )>()(
        ptr.ref.lpVtbl,
        retval,
      );

  int QueryHistory(
    Pointer<Utf16> criteria,
    int startIndex,
    int count,
    Pointer<Pointer<COMObject>> retval,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> criteria,
            Int32 startIndex,
            Int32 count,
            Pointer<Pointer<COMObject>> retval,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> criteria,
            int startIndex,
            int count,
            Pointer<Pointer<COMObject>> retval,
          )>()(
        ptr.ref.lpVtbl,
        criteria,
        startIndex,
        count,
        retval,
      );
}
