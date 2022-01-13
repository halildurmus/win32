// IWRdsProtocolConnectionSettings.dart

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
const IID_IWRdsProtocolConnectionSettings =
    '{83FCF5D3-F6F4-EA94-9CD2-32F280E1E510}';

/// {@category Interface}
/// {@category com}
class IWRdsProtocolConnectionSettings extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWRdsProtocolConnectionSettings(Pointer<COMObject> ptr) : super(ptr);

  int SetConnectionSetting(
    GUID PropertyID,
    Pointer<WTS_PROPERTY_VALUE> pPropertyEntriesIn,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID PropertyID,
            Pointer<WTS_PROPERTY_VALUE> pPropertyEntriesIn,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID PropertyID,
            Pointer<WTS_PROPERTY_VALUE> pPropertyEntriesIn,
          )>()(
        ptr.ref.lpVtbl,
        PropertyID,
        pPropertyEntriesIn,
      );

  int GetConnectionSetting(
    GUID PropertyID,
    Pointer<WTS_PROPERTY_VALUE> pPropertyEntriesOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID PropertyID,
            Pointer<WTS_PROPERTY_VALUE> pPropertyEntriesOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID PropertyID,
            Pointer<WTS_PROPERTY_VALUE> pPropertyEntriesOut,
          )>()(
        ptr.ref.lpVtbl,
        PropertyID,
        pPropertyEntriesOut,
      );
}
