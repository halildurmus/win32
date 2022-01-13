// IActiveScriptSiteUIControl.dart

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
import '../../../system/diagnostics/debug/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IActiveScriptSiteUIControl = '{AEDAE97E-D7EE-4796-B960-7F092AE844AB}';

/// {@category Interface}
/// {@category com}
class IActiveScriptSiteUIControl extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IActiveScriptSiteUIControl(Pointer<COMObject> ptr) : super(ptr);

  int GetUIBehavior(
    int UicItem,
    Pointer<Int32> pUicHandling,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 UicItem,
            Pointer<Int32> pUicHandling,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int UicItem,
            Pointer<Int32> pUicHandling,
          )>()(
        ptr.ref.lpVtbl,
        UicItem,
        pUicHandling,
      );
}
