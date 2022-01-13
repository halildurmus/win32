// IMFSensorActivityReport.dart

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
import '../../media/mediafoundation/IMFSensorProcessActivity.dart';

/// @nodoc
const IID_IMFSensorActivityReport = '{3E8C4BE1-A8C2-4528-90DE-2851BDE5FEAD}';

/// {@category Interface}
/// {@category com}
class IMFSensorActivityReport extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IMFSensorActivityReport(Pointer<COMObject> ptr) : super(ptr);

  int GetFriendlyName(
    Pointer<Utf16> FriendlyName,
    int cchFriendlyName,
    Pointer<Uint32> pcchWritten,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> FriendlyName,
            Uint32 cchFriendlyName,
            Pointer<Uint32> pcchWritten,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> FriendlyName,
            int cchFriendlyName,
            Pointer<Uint32> pcchWritten,
          )>()(
        ptr.ref.lpVtbl,
        FriendlyName,
        cchFriendlyName,
        pcchWritten,
      );

  int GetSymbolicLink(
    Pointer<Utf16> SymbolicLink,
    int cchSymbolicLink,
    Pointer<Uint32> pcchWritten,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> SymbolicLink,
            Uint32 cchSymbolicLink,
            Pointer<Uint32> pcchWritten,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> SymbolicLink,
            int cchSymbolicLink,
            Pointer<Uint32> pcchWritten,
          )>()(
        ptr.ref.lpVtbl,
        SymbolicLink,
        cchSymbolicLink,
        pcchWritten,
      );

  int GetProcessCount(
    Pointer<Uint32> pcCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcCount,
          )>()(
        ptr.ref.lpVtbl,
        pcCount,
      );

  int GetProcessActivity(
    int Index,
    Pointer<Pointer<COMObject>> ppProcessActivity,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<Pointer<COMObject>> ppProcessActivity,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Pointer<COMObject>> ppProcessActivity,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        ppProcessActivity,
      );
}
