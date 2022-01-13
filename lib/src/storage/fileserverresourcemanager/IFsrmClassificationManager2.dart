// IFsrmClassificationManager2.dart

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

import '../../storage/fileserverresourcemanager/IFsrmClassificationManager.dart';
import '../../system/com/structs.g.dart';
import '../../storage/fileserverresourcemanager/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IFsrmClassificationManager2 =
    '{0004C1C9-127E-4765-BA07-6A3147BCA112}';

/// {@category Interface}
/// {@category com}
class IFsrmClassificationManager2 extends IFsrmClassificationManager {
  // vtable begins at 34, is 1 entries long.
  IFsrmClassificationManager2(Pointer<COMObject> ptr) : super(ptr);

  int ClassifyFiles(
    Pointer<SAFEARRAY> filePaths,
    Pointer<SAFEARRAY> propertyNames,
    Pointer<SAFEARRAY> propertyValues,
    int options,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SAFEARRAY> filePaths,
            Pointer<SAFEARRAY> propertyNames,
            Pointer<SAFEARRAY> propertyValues,
            Int32 options,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SAFEARRAY> filePaths,
            Pointer<SAFEARRAY> propertyNames,
            Pointer<SAFEARRAY> propertyValues,
            int options,
          )>()(
        ptr.ref.lpVtbl,
        filePaths,
        propertyNames,
        propertyValues,
        options,
      );
}
