// IRawElementProviderAdviseEvents.dart

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
import '../../system/com/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IRawElementProviderAdviseEvents =
    '{A407B27B-0F6D-4427-9292-473C7BF93258}';

/// {@category Interface}
/// {@category com}
class IRawElementProviderAdviseEvents extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IRawElementProviderAdviseEvents(Pointer<COMObject> ptr) : super(ptr);

  int AdviseEventAdded(
    int eventId,
    Pointer<SAFEARRAY> propertyIDs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 eventId,
            Pointer<SAFEARRAY> propertyIDs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int eventId,
            Pointer<SAFEARRAY> propertyIDs,
          )>()(
        ptr.ref.lpVtbl,
        eventId,
        propertyIDs,
      );

  int AdviseEventRemoved(
    int eventId,
    Pointer<SAFEARRAY> propertyIDs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 eventId,
            Pointer<SAFEARRAY> propertyIDs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int eventId,
            Pointer<SAFEARRAY> propertyIDs,
          )>()(
        ptr.ref.lpVtbl,
        eventId,
        propertyIDs,
      );
}
