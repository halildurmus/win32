// IAVIPersistFile.dart

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

import '../../system/com/IPersistFile.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IAVIPersistFile = '{00020025-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class IAVIPersistFile extends IPersistFile {
  // vtable begins at 9, is 1 entries long.
  IAVIPersistFile(Pointer<COMObject> ptr) : super(ptr);

  int Reserved1() => ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
