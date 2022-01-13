// IWMDMProgress2.dart

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

import '../../media/devicemanager/IWMDMProgress.dart';
import '../../foundation/structs.g.dart';
import '../../media/audio/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IWMDMProgress2 = '{3A43F550-B383-4E92-B04A-E6BBC660FEFC}';

/// {@category Interface}
/// {@category com}
class IWMDMProgress2 extends IWMDMProgress {
  // vtable begins at 6, is 1 entries long.
  IWMDMProgress2(Pointer<COMObject> ptr) : super(ptr);

  int End2(
    int hrCompletionCode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hrCompletionCode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hrCompletionCode,
          )>()(
        ptr.ref.lpVtbl,
        hrCompletionCode,
      );
}
