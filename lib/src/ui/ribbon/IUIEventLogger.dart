// IUIEventLogger.dart

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
import '../../ui/ribbon/structs.g.dart';

/// @nodoc
const IID_IUIEventLogger = '{EC3E1034-DBF4-41A1-95D5-03E0F1026E05}';

/// {@category Interface}
/// {@category com}
class IUIEventLogger extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUIEventLogger(Pointer<COMObject> ptr) : super(ptr);

  void OnUIEvent(
    Pointer<UI_EVENTPARAMS> pEventParams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<UI_EVENTPARAMS> pEventParams,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<UI_EVENTPARAMS> pEventParams,
          )>()(
        ptr.ref.lpVtbl,
        pEventParams,
      );
}
