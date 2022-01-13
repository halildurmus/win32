// IWMPTranscodePolicy.dart

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
const IID_IWMPTranscodePolicy = '{B64CBAC3-401C-4327-A3E8-B9FEB3A8C25C}';

/// {@category Interface}
/// {@category com}
class IWMPTranscodePolicy extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWMPTranscodePolicy(Pointer<COMObject> ptr) : super(ptr);

  int allowTranscode(
    Pointer<Int16> pvbAllow,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pvbAllow,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pvbAllow,
          )>()(
        ptr.ref.lpVtbl,
        pvbAllow,
      );
}
