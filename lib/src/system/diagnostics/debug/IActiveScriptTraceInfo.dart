// IActiveScriptTraceInfo.dart

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
import '../../../system/diagnostics/debug/IActiveScriptSiteTraceInfo.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IActiveScriptTraceInfo = '{C35456E7-BEBF-4A1B-86A9-24D56BE8B369}';

/// {@category Interface}
/// {@category com}
class IActiveScriptTraceInfo extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IActiveScriptTraceInfo(Pointer<COMObject> ptr) : super(ptr);

  int StartScriptTracing(
    Pointer<COMObject> pSiteTraceInfo,
    GUID guidContextID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSiteTraceInfo,
            GUID guidContextID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSiteTraceInfo,
            GUID guidContextID,
          )>()(
        ptr.ref.lpVtbl,
        pSiteTraceInfo,
        guidContextID,
      );

  int StopScriptTracing() => ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
