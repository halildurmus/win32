// IWMSampleExtensionSupport.dart

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
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMSampleExtensionSupport = '{9BCA9884-0604-4C2A-87DA-793FF4D586C3}';

/// {@category Interface}
/// {@category com}
class IWMSampleExtensionSupport extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWMSampleExtensionSupport(Pointer<COMObject> ptr) : super(ptr);

  int SetUseSampleExtensions(
    int fUseExtensions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fUseExtensions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fUseExtensions,
          )>()(
        ptr.ref.lpVtbl,
        fUseExtensions,
      );
}
