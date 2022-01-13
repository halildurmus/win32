// ITextInputPanelRunInfo.dart

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
const IID_ITextInputPanelRunInfo = '{9F424568-1920-48CC-9811-A993CBF5ADBA}';

/// {@category Interface}
/// {@category com}
class ITextInputPanelRunInfo extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ITextInputPanelRunInfo(Pointer<COMObject> ptr) : super(ptr);

  int IsTipRunning(
    Pointer<Int32> pfRunning,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfRunning,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfRunning,
          )>()(
        ptr.ref.lpVtbl,
        pfRunning,
      );
}
