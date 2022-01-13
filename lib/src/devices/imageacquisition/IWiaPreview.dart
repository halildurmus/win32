// IWiaPreview.dart

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

/// @nodoc
const IID_IWiaPreview = '{95C2B4FD-33F2-4D86-AD40-9431F0DF08F7}';

/// {@category Interface}
/// {@category com}
class IWiaPreview extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IWiaPreview(Pointer<COMObject> ptr) : super(ptr);

  int GetNewPreview(
    int lFlags,
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
            Int32 lFlags,
            Pointer<COMObject> pWiaItem2,
            Pointer<COMObject> pWiaTransferCallback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
            Pointer<COMObject> pWiaItem2,
            Pointer<COMObject> pWiaTransferCallback,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
        pWiaItem2,
        pWiaTransferCallback,
      );

  int UpdatePreview(
    int lFlags,
    Pointer<COMObject> pChildWiaItem2,
    Pointer<COMObject> pWiaTransferCallback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
            Pointer<COMObject> pChildWiaItem2,
            Pointer<COMObject> pWiaTransferCallback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
            Pointer<COMObject> pChildWiaItem2,
            Pointer<COMObject> pWiaTransferCallback,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
        pChildWiaItem2,
        pWiaTransferCallback,
      );

  int DetectRegions(
    int lFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
      );

  int Clear() => ptr.ref.lpVtbl.value
          .elementAt(6)
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
