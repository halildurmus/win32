// IUIEventingManager.dart

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
import '../../ui/ribbon/IUIEventLogger.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IUIEventingManager = '{3BE6EA7F-9A9B-4198-9368-9B0F923BD534}';

/// {@category Interface}
/// {@category com}
class IUIEventingManager extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUIEventingManager(Pointer<COMObject> ptr) : super(ptr);

  int SetEventLogger(
    Pointer<COMObject> eventLogger,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> eventLogger,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> eventLogger,
          )>()(
        ptr.ref.lpVtbl,
        eventLogger,
      );
}
