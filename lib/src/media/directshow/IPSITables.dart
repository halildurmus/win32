// IPSITables.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IPSITables = '{919F24C5-7B14-42AC-A4B0-2AE08DAF00AC}';

/// {@category Interface}
/// {@category com}
class IPSITables extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IPSITables(Pointer<COMObject> ptr) : super(ptr);

  int GetTable(
    int dwTSID,
    int dwTID_PID,
    int dwHashedVer,
    int dwPara4,
    Pointer<Pointer<COMObject>> ppIUnknown,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwTSID,
            Uint32 dwTID_PID,
            Uint32 dwHashedVer,
            Uint32 dwPara4,
            Pointer<Pointer<COMObject>> ppIUnknown,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwTSID,
            int dwTID_PID,
            int dwHashedVer,
            int dwPara4,
            Pointer<Pointer<COMObject>> ppIUnknown,
          )>()(
        ptr.ref.lpVtbl,
        dwTSID,
        dwTID_PID,
        dwHashedVer,
        dwPara4,
        ppIUnknown,
      );
}
