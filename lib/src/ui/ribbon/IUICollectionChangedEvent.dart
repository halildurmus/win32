// IUICollectionChangedEvent.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IUICollectionChangedEvent = '{6502AE91-A14D-44B5-BBD0-62AACC581D52}';

/// {@category Interface}
/// {@category com}
class IUICollectionChangedEvent extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUICollectionChangedEvent(Pointer<COMObject> ptr) : super(ptr);

  int OnChanged(
    int action,
    int oldIndex,
    Pointer<COMObject> oldItem,
    int newIndex,
    Pointer<COMObject> newItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 action,
            Uint32 oldIndex,
            Pointer<COMObject> oldItem,
            Uint32 newIndex,
            Pointer<COMObject> newItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int action,
            int oldIndex,
            Pointer<COMObject> oldItem,
            int newIndex,
            Pointer<COMObject> newItem,
          )>()(
        ptr.ref.lpVtbl,
        action,
        oldIndex,
        oldItem,
        newIndex,
        newItem,
      );
}
