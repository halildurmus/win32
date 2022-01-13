// IXpsOMImageResource.dart

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

import '../../storage/xps/IXpsOMResource.dart';
import '../../system/com/IStream.dart';
import '../../foundation/structs.g.dart';
import '../../storage/xps/structs.g.dart';
import '../../storage/packaging/opc/IOpcPartUri.dart';

/// @nodoc
const IID_IXpsOMImageResource = '{3DB8417D-AE50-485E-9A44-D7758F78A23F}';

/// {@category Interface}
/// {@category com}
class IXpsOMImageResource extends IXpsOMResource {
  // vtable begins at 5, is 3 entries long.
  IXpsOMImageResource(Pointer<COMObject> ptr) : super(ptr);

  int GetStream(
    Pointer<Pointer<COMObject>> readerStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> readerStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> readerStream,
          )>()(
        ptr.ref.lpVtbl,
        readerStream,
      );

  int SetContent(
    Pointer<COMObject> sourceStream,
    int imageType,
    Pointer<COMObject> partName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> sourceStream,
            Int32 imageType,
            Pointer<COMObject> partName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> sourceStream,
            int imageType,
            Pointer<COMObject> partName,
          )>()(
        ptr.ref.lpVtbl,
        sourceStream,
        imageType,
        partName,
      );

  int GetImageType(
    Pointer<Int32> imageType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> imageType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> imageType,
          )>()(
        ptr.ref.lpVtbl,
        imageType,
      );
}
