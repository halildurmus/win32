// IBackgroundCopyFile5.dart

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

import '../../networking/backgroundintelligenttransferservice/IBackgroundCopyFile4.dart';
import '../../networking/backgroundintelligenttransferservice/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IBackgroundCopyFile5 = '{85C1657F-DAFC-40E8-8834-DF18EA25717E}';

/// {@category Interface}
/// {@category com}
class IBackgroundCopyFile5 extends IBackgroundCopyFile4 {
  // vtable begins at 13, is 2 entries long.
  IBackgroundCopyFile5(Pointer<COMObject> ptr) : super(ptr);

  int SetProperty(
    int PropertyId,
    BITS_FILE_PROPERTY_VALUE PropertyValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 PropertyId,
            BITS_FILE_PROPERTY_VALUE PropertyValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int PropertyId,
            BITS_FILE_PROPERTY_VALUE PropertyValue,
          )>()(
        ptr.ref.lpVtbl,
        PropertyId,
        PropertyValue,
      );

  int GetProperty(
    int PropertyId,
    Pointer<BITS_FILE_PROPERTY_VALUE> PropertyValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 PropertyId,
            Pointer<BITS_FILE_PROPERTY_VALUE> PropertyValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int PropertyId,
            Pointer<BITS_FILE_PROPERTY_VALUE> PropertyValue,
          )>()(
        ptr.ref.lpVtbl,
        PropertyId,
        PropertyValue,
      );
}
