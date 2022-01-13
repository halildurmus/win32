// IMDServiceProvider3.dart

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

import '../../media/devicemanager/IMDServiceProvider2.dart';
import '../../foundation/structs.g.dart';
import '../../media/audio/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IMDServiceProvider3 = '{4ED13EF3-A971-4D19-9F51-0E1826B2DA57}';

/// {@category Interface}
/// {@category com}
class IMDServiceProvider3 extends IMDServiceProvider2 {
  // vtable begins at 6, is 1 entries long.
  IMDServiceProvider3(Pointer<COMObject> ptr) : super(ptr);

  int SetDeviceEnumPreference(
    int dwEnumPref,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
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
