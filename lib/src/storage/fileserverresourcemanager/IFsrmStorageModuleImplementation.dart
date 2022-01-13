// IFsrmStorageModuleImplementation.dart

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

import '../../storage/fileserverresourcemanager/IFsrmPipelineModuleImplementation.dart';
import '../../storage/fileserverresourcemanager/IFsrmCollection.dart';
import '../../foundation/structs.g.dart';
import '../../storage/fileserverresourcemanager/IFsrmPropertyBag.dart';

/// @nodoc
const IID_IFsrmStorageModuleImplementation =
    '{0AF4A0DA-895A-4E50-8712-A96724BCEC64}';

/// {@category Interface}
/// {@category com}
class IFsrmStorageModuleImplementation
    extends IFsrmPipelineModuleImplementation {
  // vtable begins at 9, is 3 entries long.
  IFsrmStorageModuleImplementation(Pointer<COMObject> ptr) : super(ptr);

  int UseDefinitions(
    Pointer<COMObject> propertyDefinitions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> propertyDefinitions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> propertyDefinitions,
          )>()(
        ptr.ref.lpVtbl,
        propertyDefinitions,
      );

  int LoadProperties(
    Pointer<COMObject> propertyBag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> propertyBag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> propertyBag,
          )>()(
        ptr.ref.lpVtbl,
        propertyBag,
      );

  int SaveProperties(
    Pointer<COMObject> propertyBag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> propertyBag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> propertyBag,
          )>()(
        ptr.ref.lpVtbl,
        propertyBag,
      );
}
