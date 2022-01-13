// IDesktopWindowXamlSourceNative2.dart

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

import '../../../system/winrt/xaml/IDesktopWindowXamlSourceNative.dart';
import '../../../ui/windowsandmessaging/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDesktopWindowXamlSourceNative2 =
    '{E3DCD8C7-3057-4692-99C3-7B7720AFDA31}';

/// {@category Interface}
/// {@category com}
class IDesktopWindowXamlSourceNative2 extends IDesktopWindowXamlSourceNative {
  // vtable begins at 5, is 1 entries long.
  IDesktopWindowXamlSourceNative2(Pointer<COMObject> ptr) : super(ptr);

  int PreTranslateMessage(
    Pointer<MSG> message,
    Pointer<Int32> result,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MSG> message,
            Pointer<Int32> result,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MSG> message,
            Pointer<Int32> result,
          )>()(
        ptr.ref.lpVtbl,
        message,
        result,
      );
}
