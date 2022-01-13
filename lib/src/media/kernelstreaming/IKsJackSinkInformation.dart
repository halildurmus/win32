// IKsJackSinkInformation.dart

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
import '../../media/kernelstreaming/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IKsJackSinkInformation = '{D9BD72ED-290F-4581-9FF3-61027A8FE532}';

/// {@category Interface}
/// {@category com}
class IKsJackSinkInformation extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IKsJackSinkInformation(Pointer<COMObject> ptr) : super(ptr);

  int GetJackSinkInformation(
    Pointer<KSJACK_SINK_INFORMATION> pJackSinkInformation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<KSJACK_SINK_INFORMATION> pJackSinkInformation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<KSJACK_SINK_INFORMATION> pJackSinkInformation,
          )>()(
        ptr.ref.lpVtbl,
        pJackSinkInformation,
      );
}
