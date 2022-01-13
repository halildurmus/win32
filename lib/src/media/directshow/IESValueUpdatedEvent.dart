// IESValueUpdatedEvent.dart

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

import '../../media/directshow/IESEvent.dart';
import '../../system/com/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IESValueUpdatedEvent = '{8A24C46E-BB63-4664-8602-5D9C718C146D}';

/// {@category Interface}
/// {@category com}
class IESValueUpdatedEvent extends IESEvent {
  // vtable begins at 8, is 1 entries long.
  IESValueUpdatedEvent(Pointer<COMObject> ptr) : super(ptr);

  int GetValueNames(
    Pointer<Pointer<SAFEARRAY>> pbstrNames,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> pbstrNames,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> pbstrNames,
          )>()(
        ptr.ref.lpVtbl,
        pbstrNames,
      );
}
