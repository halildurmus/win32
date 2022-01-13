// IPreviewHandlerFrame.dart

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
import '../../ui/shell/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../ui/windowsandmessaging/structs.g.dart';

/// @nodoc
const IID_IPreviewHandlerFrame = '{FEC87AAF-35F9-447A-ADB7-20234491401A}';

/// {@category Interface}
/// {@category com}
class IPreviewHandlerFrame extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IPreviewHandlerFrame(Pointer<COMObject> ptr) : super(ptr);

  int GetWindowContext(
    Pointer<PREVIEWHANDLERFRAMEINFO> pinfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PREVIEWHANDLERFRAMEINFO> pinfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PREVIEWHANDLERFRAMEINFO> pinfo,
          )>()(
        ptr.ref.lpVtbl,
        pinfo,
      );

  int TranslateAccelerator(
    Pointer<MSG> pmsg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MSG> pmsg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MSG> pmsg,
          )>()(
        ptr.ref.lpVtbl,
        pmsg,
      );
}
