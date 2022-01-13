// ID2D1PrintControl.dart

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
import '../../graphics/direct2d/ID2D1CommandList.dart';
import '../../graphics/direct2d/common/structs.g.dart';
import '../../system/com/IStream.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID2D1PrintControl = '{2C1D867D-C290-41C8-AE7E-34A98702E9A5}';

/// {@category Interface}
/// {@category com}
class ID2D1PrintControl extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ID2D1PrintControl(Pointer<COMObject> ptr) : super(ptr);

  int AddPage(
    Pointer<COMObject> commandList,
    D2D_SIZE_F pageSize,
    Pointer<COMObject> pagePrintTicketStream,
    Pointer<Uint64> tag1,
    Pointer<Uint64> tag2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> commandList,
            D2D_SIZE_F pageSize,
            Pointer<COMObject> pagePrintTicketStream,
            Pointer<Uint64> tag1,
            Pointer<Uint64> tag2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> commandList,
            D2D_SIZE_F pageSize,
            Pointer<COMObject> pagePrintTicketStream,
            Pointer<Uint64> tag1,
            Pointer<Uint64> tag2,
          )>()(
        ptr.ref.lpVtbl,
        commandList,
        pageSize,
        pagePrintTicketStream,
        tag1,
        tag2,
      );

  int Close() => ptr.ref.lpVtbl.value
          .elementAt(4)
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
