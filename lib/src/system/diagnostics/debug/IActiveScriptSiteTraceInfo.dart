// IActiveScriptSiteTraceInfo.dart

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
import '../../../system/diagnostics/debug/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IActiveScriptSiteTraceInfo = '{4B7272AE-1955-4BFE-98B0-780621888569}';

/// {@category Interface}
/// {@category com}
class IActiveScriptSiteTraceInfo extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IActiveScriptSiteTraceInfo(Pointer<COMObject> ptr) : super(ptr);

  int SendScriptTraceInfo(
    int stiEventType,
    GUID guidContextID,
    int dwScriptContextCookie,
    int lScriptStatementStart,
    int lScriptStatementEnd,
    int dwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 stiEventType,
            GUID guidContextID,
            Uint32 dwScriptContextCookie,
            Int32 lScriptStatementStart,
            Int32 lScriptStatementEnd,
            Uint64 dwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int stiEventType,
            GUID guidContextID,
            int dwScriptContextCookie,
            int lScriptStatementStart,
            int lScriptStatementEnd,
            int dwReserved,
          )>()(
        ptr.ref.lpVtbl,
        stiEventType,
        guidContextID,
        dwScriptContextCookie,
        lScriptStatementStart,
        lScriptStatementEnd,
        dwReserved,
      );
}
