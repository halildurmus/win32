// IBackgroundCopyJob5.dart

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

import '../../networking/backgroundintelligenttransferservice/IBackgroundCopyJob4.dart';
import '../../networking/backgroundintelligenttransferservice/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IBackgroundCopyJob5 = '{E847030C-BBBA-4657-AF6D-484AA42BF1FE}';

/// {@category Interface}
/// {@category com}
class IBackgroundCopyJob5 extends IBackgroundCopyJob4 {
  // vtable begins at 53, is 2 entries long.
  IBackgroundCopyJob5(Pointer<COMObject> ptr) : super(ptr);

  int SetProperty(
    int PropertyId,
    BITS_JOB_PROPERTY_VALUE PropertyValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(53)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 PropertyId,
            BITS_JOB_PROPERTY_VALUE PropertyValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int PropertyId,
            BITS_JOB_PROPERTY_VALUE PropertyValue,
          )>()(
        ptr.ref.lpVtbl,
        PropertyId,
        PropertyValue,
      );

  int GetProperty(
    int PropertyId,
    Pointer<BITS_JOB_PROPERTY_VALUE> PropertyValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(54)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 PropertyId,
            Pointer<BITS_JOB_PROPERTY_VALUE> PropertyValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int PropertyId,
            Pointer<BITS_JOB_PROPERTY_VALUE> PropertyValue,
          )>()(
        ptr.ref.lpVtbl,
        PropertyId,
        PropertyValue,
      );
}
