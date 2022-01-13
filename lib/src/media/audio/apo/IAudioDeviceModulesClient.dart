// IAudioDeviceModulesClient.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../specialTypes.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IAudioDeviceModulesClient = '{98F37DAC-D0B6-49F5-896A-AA4D169A4C48}';

/// {@category Interface}
/// {@category com}
class IAudioDeviceModulesClient extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IAudioDeviceModulesClient(Pointer<COMObject> ptr) : super(ptr);

  int SetAudioDeviceModulesManager(
    Pointer<COMObject> pAudioDeviceModulesManager,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pAudioDeviceModulesManager,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pAudioDeviceModulesManager,
          )>()(
        ptr.ref.lpVtbl,
        pAudioDeviceModulesManager,
      );
}
