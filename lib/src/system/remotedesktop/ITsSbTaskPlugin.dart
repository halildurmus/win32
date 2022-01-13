// ITsSbTaskPlugin.dart

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

import '../../system/remotedesktop/ITsSbPlugin.dart';
import '../../system/remotedesktop/ITsSbTaskPluginNotifySink.dart';
import '../../foundation/structs.g.dart';
import '../../system/remotedesktop/ITsSbTaskInfo.dart';

/// @nodoc
const IID_ITsSbTaskPlugin = '{FA22EF0F-8705-41BE-93BC-44BDBCF1C9C4}';

/// {@category Interface}
/// {@category com}
class ITsSbTaskPlugin extends ITsSbPlugin {
  // vtable begins at 5, is 2 entries long.
  ITsSbTaskPlugin(Pointer<COMObject> ptr) : super(ptr);

  int InitializeTaskPlugin(
    Pointer<COMObject> pITsSbTaskPluginNotifySink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pITsSbTaskPluginNotifySink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pITsSbTaskPluginNotifySink,
          )>()(
        ptr.ref.lpVtbl,
        pITsSbTaskPluginNotifySink,
      );

  int SetTaskQueue(
    Pointer<Utf16> pszHostName,
    int SbTaskInfoSize,
    Pointer<Pointer<COMObject>> pITsSbTaskInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszHostName,
            Uint32 SbTaskInfoSize,
            Pointer<Pointer<COMObject>> pITsSbTaskInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszHostName,
            int SbTaskInfoSize,
            Pointer<Pointer<COMObject>> pITsSbTaskInfo,
          )>()(
        ptr.ref.lpVtbl,
        pszHostName,
        SbTaskInfoSize,
        pITsSbTaskInfo,
      );
}
