// IExtractImage2.dart

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

import '../../ui/shell/IExtractImage.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IExtractImage2 = '{953BB1EE-93B4-11D1-98A3-00C04FB687DA}';

/// {@category Interface}
/// {@category com}
class IExtractImage2 extends IExtractImage {
  // vtable begins at 5, is 1 entries long.
  IExtractImage2(Pointer<COMObject> ptr) : super(ptr);

  int GetDateStamp(
    Pointer<FILETIME> pDateStamp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<FILETIME> pDateStamp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<FILETIME> pDateStamp,
          )>()(
        ptr.ref.lpVtbl,
        pDateStamp,
      );
}
