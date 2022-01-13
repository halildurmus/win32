// IXpsOMPackageWriter3D.dart

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

import '../../storage/xps/IXpsOMPackageWriter.dart';
import '../../storage/packaging/opc/IOpcPartUri.dart';
import '../../system/com/IStream.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IXpsOMPackageWriter3D = '{E8A45033-640E-43FA-9BDF-FDDEAA31C6A0}';

/// {@category Interface}
/// {@category com}
class IXpsOMPackageWriter3D extends IXpsOMPackageWriter {
  // vtable begins at 8, is 2 entries long.
  IXpsOMPackageWriter3D(Pointer<COMObject> ptr) : super(ptr);

  int AddModelTexture(
    Pointer<COMObject> texturePartName,
    Pointer<COMObject> textureData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> texturePartName,
            Pointer<COMObject> textureData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> texturePartName,
            Pointer<COMObject> textureData,
          )>()(
        ptr.ref.lpVtbl,
        texturePartName,
        textureData,
      );

  int SetModelPrintTicket(
    Pointer<COMObject> printTicketPartName,
    Pointer<COMObject> printTicketData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> printTicketPartName,
            Pointer<COMObject> printTicketData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> printTicketPartName,
            Pointer<COMObject> printTicketData,
          )>()(
        ptr.ref.lpVtbl,
        printTicketPartName,
        printTicketData,
      );
}
