// IMFPluginControl2.dart

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

import '../../media/mediafoundation/IMFPluginControl.dart';
import '../../media/mediafoundation/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFPluginControl2 = '{C6982083-3DDC-45CB-AF5E-0F7A8CE4DE77}';

/// {@category Interface}
/// {@category com}
class IMFPluginControl2 extends IMFPluginControl {
  // vtable begins at 9, is 1 entries long.
  IMFPluginControl2(Pointer<COMObject> ptr) : super(ptr);

  int SetPolicy(
    int policy,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 policy,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int policy,
          )>()(
        ptr.ref.lpVtbl,
        policy,
      );
}
