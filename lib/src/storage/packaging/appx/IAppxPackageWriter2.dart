// IAppxPackageWriter2.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../system/com/IStream.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IAppxPackageWriter2 = '{2CF5C4FD-E54C-4EA5-BA4E-F8C4B105A8C8}';

/// {@category Interface}
/// {@category com}
class IAppxPackageWriter2 extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IAppxPackageWriter2(Pointer<COMObject> ptr) : super(ptr);

  int Close(
    Pointer<COMObject> manifest,
    Pointer<COMObject> contentGroupMap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> manifest,
            Pointer<COMObject> contentGroupMap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> manifest,
            Pointer<COMObject> contentGroupMap,
          )>()(
        ptr.ref.lpVtbl,
        manifest,
        contentGroupMap,
      );
}
