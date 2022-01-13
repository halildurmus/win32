// IWRdsProtocolSettings.dart

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

/// @nodoc
const IID_IWRdsProtocolSettings = '{654A5A6A-2550-47EB-B6F7-EBD637475265}';

/// {@category Interface}
/// {@category com}
class IWRdsProtocolSettings extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWRdsProtocolSettings(Pointer<COMObject> ptr) : super(ptr);

  int GetSettings(
    int WRdsSettingType,
    int WRdsSettingLevel,
    Pointer<WRDS_SETTINGS> pWRdsSettings,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 WRdsSettingType,
            Int32 WRdsSettingLevel,
            Pointer<WRDS_SETTINGS> pWRdsSettings,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int WRdsSettingType,
            int WRdsSettingLevel,
            Pointer<WRDS_SETTINGS> pWRdsSettings,
          )>()(
        ptr.ref.lpVtbl,
        WRdsSettingType,
        WRdsSettingLevel,
        pWRdsSettings,
      );

  int MergeSettings(
    Pointer<WRDS_SETTINGS> pWRdsSettings,
    int WRdsConnectionSettingLevel,
    Pointer<WRDS_CONNECTION_SETTINGS> pWRdsConnectionSettings,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WRDS_SETTINGS> pWRdsSettings,
            Int32 WRdsConnectionSettingLevel,
            Pointer<WRDS_CONNECTION_SETTINGS> pWRdsConnectionSettings,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WRDS_SETTINGS> pWRdsSettings,
            int WRdsConnectionSettingLevel,
            Pointer<WRDS_CONNECTION_SETTINGS> pWRdsConnectionSettings,
          )>()(
        ptr.ref.lpVtbl,
        pWRdsSettings,
        WRdsConnectionSettingLevel,
        pWRdsConnectionSettings,
      );
}
