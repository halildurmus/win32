// IWRdsProtocolListener.dart

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
import '../../system/remotedesktop/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../system/remotedesktop/IWRdsProtocolListenerCallback.dart';

/// @nodoc
const IID_IWRdsProtocolListener = '{FCBC131B-C686-451D-A773-E279E230F540}';

/// {@category Interface}
/// {@category com}
class IWRdsProtocolListener extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IWRdsProtocolListener(Pointer<COMObject> ptr) : super(ptr);

  int GetSettings(
    int WRdsListenerSettingLevel,
    Pointer<WRDS_LISTENER_SETTINGS> pWRdsListenerSettings,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 WRdsListenerSettingLevel,
            Pointer<WRDS_LISTENER_SETTINGS> pWRdsListenerSettings,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int WRdsListenerSettingLevel,
            Pointer<WRDS_LISTENER_SETTINGS> pWRdsListenerSettings,
          )>()(
        ptr.ref.lpVtbl,
        WRdsListenerSettingLevel,
        pWRdsListenerSettings,
      );

  int StartListen(
    Pointer<COMObject> pCallback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCallback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCallback,
          )>()(
        ptr.ref.lpVtbl,
        pCallback,
      );

  int StopListen() => ptr.ref.lpVtbl.value
          .elementAt(5)
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
