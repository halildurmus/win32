// IWMDeviceManager3.dart

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

import '../../media/devicemanager/IWMDeviceManager2.dart';
import '../../foundation/structs.g.dart';
import '../../media/audio/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IWMDeviceManager3 = '{AF185C41-100D-46ED-BE2E-9CE8C44594EF}';

/// {@category Interface}
/// {@category com}
class IWMDeviceManager3 extends IWMDeviceManager2 {
  // vtable begins at 9, is 1 entries long.
  IWMDeviceManager3(Pointer<COMObject> ptr) : super(ptr);

  int SetDeviceEnumPreference(
    int dwEnumPref,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwEnumPref,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwEnumPref,
          )>()(
        ptr.ref.lpVtbl,
        dwEnumPref,
      );
}
