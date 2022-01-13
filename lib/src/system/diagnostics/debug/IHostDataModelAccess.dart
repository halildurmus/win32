// IHostDataModelAccess.dart

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
import '../../../system/diagnostics/debug/IDataModelManager.dart';
import '../../../system/diagnostics/debug/IDebugHost.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IHostDataModelAccess = '{F2BCE54E-4835-4F8A-836E-7981E29904D1}';

/// {@category Interface}
/// {@category com}
class IHostDataModelAccess extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IHostDataModelAccess(Pointer<COMObject> ptr) : super(ptr);

  int GetDataModel(
    Pointer<Pointer<COMObject>> manager,
    Pointer<Pointer<COMObject>> host,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> manager,
            Pointer<Pointer<COMObject>> host,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> manager,
            Pointer<Pointer<COMObject>> host,
          )>()(
        ptr.ref.lpVtbl,
        manager,
        host,
      );
}
