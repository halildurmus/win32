// IFsrmPipelineModuleImplementation.dart

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
import '../../storage/fileserverresourcemanager/IFsrmPipelineModuleDefinition.dart';
import '../../storage/fileserverresourcemanager/IFsrmPipelineModuleConnector.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IFsrmPipelineModuleImplementation =
    '{B7907906-2B02-4CB5-84A9-FDF54613D6CD}';

/// {@category Interface}
/// {@category com}
class IFsrmPipelineModuleImplementation extends IDispatch {
  // vtable begins at 7, is 2 entries long.
  IFsrmPipelineModuleImplementation(Pointer<COMObject> ptr) : super(ptr);

  int OnLoad(
    Pointer<COMObject> moduleDefinition,
    Pointer<Pointer<COMObject>> moduleConnector,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> moduleDefinition,
            Pointer<Pointer<COMObject>> moduleConnector,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> moduleDefinition,
            Pointer<Pointer<COMObject>> moduleConnector,
          )>()(
        ptr.ref.lpVtbl,
        moduleDefinition,
        moduleConnector,
      );

  int OnUnload() => ptr.ref.lpVtbl.value
          .elementAt(8)
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
