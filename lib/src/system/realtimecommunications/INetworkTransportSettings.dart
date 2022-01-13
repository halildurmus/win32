// INetworkTransportSettings.dart

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
import '../../networking/winsock/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_INetworkTransportSettings = '{5E7ABB2C-F2C1-4A61-BD35-DEB7A08AB0F1}';

/// {@category Interface}
/// {@category com}
class INetworkTransportSettings extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  INetworkTransportSettings(Pointer<COMObject> ptr) : super(ptr);

  int ApplySetting(
    Pointer<TRANSPORT_SETTING_ID> SettingId,
    int LengthIn,
    Pointer<Uint8> ValueIn,
    Pointer<Uint32> LengthOut,
    Pointer<Pointer<Uint8>> ValueOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<TRANSPORT_SETTING_ID> SettingId,
            Uint32 LengthIn,
            Pointer<Uint8> ValueIn,
            Pointer<Uint32> LengthOut,
            Pointer<Pointer<Uint8>> ValueOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<TRANSPORT_SETTING_ID> SettingId,
            int LengthIn,
            Pointer<Uint8> ValueIn,
            Pointer<Uint32> LengthOut,
            Pointer<Pointer<Uint8>> ValueOut,
          )>()(
        ptr.ref.lpVtbl,
        SettingId,
        LengthIn,
        ValueIn,
        LengthOut,
        ValueOut,
      );

  int QuerySetting(
    Pointer<TRANSPORT_SETTING_ID> SettingId,
    int LengthIn,
    Pointer<Uint8> ValueIn,
    Pointer<Uint32> LengthOut,
    Pointer<Pointer<Uint8>> ValueOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<TRANSPORT_SETTING_ID> SettingId,
            Uint32 LengthIn,
            Pointer<Uint8> ValueIn,
            Pointer<Uint32> LengthOut,
            Pointer<Pointer<Uint8>> ValueOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<TRANSPORT_SETTING_ID> SettingId,
            int LengthIn,
            Pointer<Uint8> ValueIn,
            Pointer<Uint32> LengthOut,
            Pointer<Pointer<Uint8>> ValueOut,
          )>()(
        ptr.ref.lpVtbl,
        SettingId,
        LengthIn,
        ValueIn,
        LengthOut,
        ValueOut,
      );
}
