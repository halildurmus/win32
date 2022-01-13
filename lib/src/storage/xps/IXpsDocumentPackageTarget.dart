// IXpsDocumentPackageTarget.dart

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
import '../../storage/xps/IXpsOMPackageWriter.dart';
import '../../foundation/structs.g.dart';
import '../../storage/xps/IXpsOMObjectFactory.dart';
import '../../storage/xps/structs.g.dart';

/// @nodoc
const IID_IXpsDocumentPackageTarget = '{3B0B6D38-53AD-41DA-B212-D37637A6714E}';

/// {@category Interface}
/// {@category com}
class IXpsDocumentPackageTarget extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IXpsDocumentPackageTarget(Pointer<COMObject> ptr) : super(ptr);

  int GetXpsOMPackageWriter(
    Pointer<COMObject> documentSequencePartName,
    Pointer<COMObject> discardControlPartName,
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
            Pointer<Pointer<COMObject>> packageWriter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> documentSequencePartName,
            Pointer<COMObject> discardControlPartName,
            Pointer<Pointer<COMObject>> packageWriter,
          )>()(
        ptr.ref.lpVtbl,
        documentSequencePartName,
        discardControlPartName,
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

  int GetXpsType(
    Pointer<Int32> documentType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> documentType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> documentType,
          )>()(
        ptr.ref.lpVtbl,
        documentType,
      );
}
