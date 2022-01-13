// IXpsDocumentPackageTarget3D.dart

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
import '../../storage/packaging/opc/IOpcPartUri.dart';
import '../../system/com/IStream.dart';
import '../../storage/xps/IXpsOMPackageWriter3D.dart';
import '../../foundation/structs.g.dart';
import '../../storage/xps/IXpsOMObjectFactory.dart';

/// @nodoc
const IID_IXpsDocumentPackageTarget3D =
    '{60BA71B8-3101-4984-9199-F4EA775FF01D}';

/// {@category Interface}
/// {@category com}
class IXpsDocumentPackageTarget3D extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IXpsDocumentPackageTarget3D(Pointer<COMObject> ptr) : super(ptr);

  int GetXpsOMPackageWriter3D(
    Pointer<COMObject> documentSequencePartName,
    Pointer<COMObject> discardControlPartName,
    Pointer<COMObject> modelPartName,
    Pointer<COMObject> modelData,
    Pointer<Pointer<COMObject>> packageWriter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> documentSequencePartName,
            Pointer<COMObject> discardControlPartName,
            Pointer<COMObject> modelPartName,
            Pointer<COMObject> modelData,
            Pointer<Pointer<COMObject>> packageWriter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> documentSequencePartName,
            Pointer<COMObject> discardControlPartName,
            Pointer<COMObject> modelPartName,
            Pointer<COMObject> modelData,
            Pointer<Pointer<COMObject>> packageWriter,
          )>()(
        ptr.ref.lpVtbl,
        documentSequencePartName,
        discardControlPartName,
        modelPartName,
        modelData,
        packageWriter,
      );

  int GetXpsOMFactory(
    Pointer<Pointer<COMObject>> xpsFactory,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> xpsFactory,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> xpsFactory,
          )>()(
        ptr.ref.lpVtbl,
        xpsFactory,
      );
}
