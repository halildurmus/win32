// IMFRelativePanelWatcher.dart

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

import '../../media/mediafoundation/IMFShutdown.dart';
import '../../media/mediafoundation/IMFAsyncCallback.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/IMFAsyncResult.dart';
import '../../media/mediafoundation/IMFRelativePanelReport.dart';

/// @nodoc
const IID_IMFRelativePanelWatcher = '{421AF7F6-573E-4AD0-8FDA-2E57CEDB18C6}';

/// {@category Interface}
/// {@category com}
class IMFRelativePanelWatcher extends IMFShutdown {
  // vtable begins at 5, is 3 entries long.
  IMFRelativePanelWatcher(Pointer<COMObject> ptr) : super(ptr);

  int BeginGetReport(
    Pointer<COMObject> pCallback,
    Pointer<COMObject> pState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCallback,
            Pointer<COMObject> pState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCallback,
            Pointer<COMObject> pState,
          )>()(
        ptr.ref.lpVtbl,
        pCallback,
        pState,
      );

  int EndGetReport(
    Pointer<COMObject> pResult,
    Pointer<Pointer<COMObject>> ppRelativePanelReport,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResult,
            Pointer<Pointer<COMObject>> ppRelativePanelReport,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResult,
            Pointer<Pointer<COMObject>> ppRelativePanelReport,
          )>()(
        ptr.ref.lpVtbl,
        pResult,
        ppRelativePanelReport,
      );

  int GetReport(
    Pointer<Pointer<COMObject>> ppRelativePanelReport,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppRelativePanelReport,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppRelativePanelReport,
          )>()(
        ptr.ref.lpVtbl,
        ppRelativePanelReport,
      );
}
