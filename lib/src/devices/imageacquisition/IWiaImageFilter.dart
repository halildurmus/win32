// IWiaImageFilter.dart

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
import '../../devices/imageacquisition/IWiaItem2.dart';
import '../../devices/imageacquisition/IWiaTransferCallback.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/IStream.dart';
import '../../devices/imageacquisition/IWiaPropertyStorage.dart';

/// @nodoc
const IID_IWiaImageFilter = '{A8A79FFA-450B-41F1-8F87-849CCD94EBF6}';

/// {@category Interface}
/// {@category com}
class IWiaImageFilter extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IWiaImageFilter(Pointer<COMObject> ptr) : super(ptr);

  int InitializeFilter(
    Pointer<COMObject> pWiaItem2,
    Pointer<COMObject> pWiaTransferCallback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pWiaItem2,
            Pointer<COMObject> pWiaTransferCallback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pWiaItem2,
            Pointer<COMObject> pWiaTransferCallback,
          )>()(
        ptr.ref.lpVtbl,
        pWiaItem2,
        pWiaTransferCallback,
      );

  int SetNewCallback(
    Pointer<COMObject> pWiaTransferCallback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pWiaTransferCallback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pWiaTransferCallback,
          )>()(
        ptr.ref.lpVtbl,
        pWiaTransferCallback,
      );

  int FilterPreviewImage(
    int lFlags,
    Pointer<COMObject> pWiaChildItem2,
    RECT InputImageExtents,
    Pointer<COMObject> pInputStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
            Pointer<COMObject> pWiaChildItem2,
            RECT InputImageExtents,
            Pointer<COMObject> pInputStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
            Pointer<COMObject> pWiaChildItem2,
            RECT InputImageExtents,
            Pointer<COMObject> pInputStream,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
        pWiaChildItem2,
        InputImageExtents,
        pInputStream,
      );

  int ApplyProperties(
    Pointer<COMObject> pWiaPropertyStorage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pWiaPropertyStorage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pWiaPropertyStorage,
          )>()(
        ptr.ref.lpVtbl,
        pWiaPropertyStorage,
      );
}
