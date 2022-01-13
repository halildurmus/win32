// IWMPWindowMessageSink.dart

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
const IID_IWMPWindowMessageSink = '{3A0DAA30-908D-4789-BA87-AED879B5C49B}';

/// {@category Interface}
/// {@category com}
class IWMPWindowMessageSink extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWMPWindowMessageSink(Pointer<COMObject> ptr) : super(ptr);

  int OnWindowMessage(
    int uMsg,
    int wparam,
    int lparam,
    Pointer<IntPtr> plRet,
    Pointer<Int32> pfHandled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uMsg,
            IntPtr wparam,
            IntPtr lparam,
            Pointer<IntPtr> plRet,
            Pointer<Int32> pfHandled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uMsg,
            int wparam,
            int lparam,
            Pointer<IntPtr> plRet,
            Pointer<Int32> pfHandled,
          )>()(
        ptr.ref.lpVtbl,
        uMsg,
        wparam,
        lparam,
        plRet,
        pfHandled,
      );
}
