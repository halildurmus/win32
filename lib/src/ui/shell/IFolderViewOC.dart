// IFolderViewOC.dart

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
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IFolderViewOC = '{9BA05970-F6A8-11CF-A442-00A0C90A8F39}';

/// {@category Interface}
/// {@category com}
class IFolderViewOC extends IDispatch {
  // vtable begins at 7, is 1 entries long.
  IFolderViewOC(Pointer<COMObject> ptr) : super(ptr);

  int SetFolderView(
    Pointer<COMObject> pdisp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pdisp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pdisp,
          )>()(
        ptr.ref.lpVtbl,
        pdisp,
      );
}
