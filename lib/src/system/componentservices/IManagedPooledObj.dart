// IManagedPooledObj.dart

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
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IManagedPooledObj = '{C5DA4BEA-1B42-4437-8926-B6A38860A770}';

/// {@category Interface}
/// {@category com}
class IManagedPooledObj extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IManagedPooledObj(Pointer<COMObject> ptr) : super(ptr);

  int SetHeld(
    int m_bHeld,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 m_bHeld,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int m_bHeld,
          )>()(
        ptr.ref.lpVtbl,
        m_bHeld,
      );
}
