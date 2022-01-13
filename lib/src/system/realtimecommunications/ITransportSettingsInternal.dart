// ITransportSettingsInternal.dart

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
import '../../system/realtimecommunications/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITransportSettingsInternal = '{5123E076-29E3-4BFD-84FE-0192D411E3E8}';

/// {@category Interface}
/// {@category com}
class ITransportSettingsInternal extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ITransportSettingsInternal(Pointer<COMObject> ptr) : super(ptr);

  int ApplySetting(
    Pointer<TRANSPORT_SETTING> Setting,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<TRANSPORT_SETTING> Setting,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<TRANSPORT_SETTING> Setting,
          )>()(
        ptr.ref.lpVtbl,
        Setting,
      );

  int QuerySetting(
    Pointer<TRANSPORT_SETTING> Setting,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<TRANSPORT_SETTING> Setting,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<TRANSPORT_SETTING> Setting,
          )>()(
        ptr.ref.lpVtbl,
        Setting,
      );
}
