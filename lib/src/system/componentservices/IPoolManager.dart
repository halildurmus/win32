// IPoolManager.dart

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
const IID_IPoolManager = '{0A469861-5A91-43A0-99B6-D5E179BB0631}';

/// {@category Interface}
/// {@category com}
class IPoolManager extends IDispatch {
  // vtable begins at 7, is 1 entries long.
  IPoolManager(Pointer<COMObject> ptr) : super(ptr);

  int ShutdownPool(
    Pointer<Utf16> CLSIDOrProgID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> CLSIDOrProgID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> CLSIDOrProgID,
          )>()(
        ptr.ref.lpVtbl,
        CLSIDOrProgID,
      );
}
