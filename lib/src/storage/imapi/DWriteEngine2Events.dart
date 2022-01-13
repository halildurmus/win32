// DWriteEngine2Events.dart

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

import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_DWriteEngine2Events = '{27354137-7F64-5B0F-8F00-5D77AFBE261E}';

/// {@category Interface}
/// {@category com}
class DWriteEngine2Events extends IDispatch {
  // vtable begins at 7, is 1 entries long.
  DWriteEngine2Events(Pointer<COMObject> ptr) : super(ptr);

  int Update(
    Pointer<COMObject> object,
    Pointer<COMObject> progress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> object,
            Pointer<COMObject> progress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> object,
            Pointer<COMObject> progress,
          )>()(
        ptr.ref.lpVtbl,
        object,
        progress,
      );
}
