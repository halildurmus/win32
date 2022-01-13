// CIE4ConnectionPoint.dart

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

import '../../system/com/IConnectionPoint.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/structs.g.dart';
import '../../ui/shell/common/structs.g.dart';

/// @nodoc
const IID_CIE4ConnectionPoint = 'null';

/// {@category Interface}
/// {@category com}
class CIE4ConnectionPoint extends IConnectionPoint {
  // vtable begins at 8, is 2 entries long.
  CIE4ConnectionPoint(Pointer<COMObject> ptr) : super(ptr);

  int DoInvokeIE4(
    Pointer<Int32> pf,
    Pointer<Pointer> ppv,
    int dispid,
    Pointer<DISPPARAMS> pdispparams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pf,
            Pointer<Pointer> ppv,
            Int32 dispid,
            Pointer<DISPPARAMS> pdispparams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pf,
            Pointer<Pointer> ppv,
            int dispid,
            Pointer<DISPPARAMS> pdispparams,
          )>()(
        ptr.ref.lpVtbl,
        pf,
        ppv,
        dispid,
        pdispparams,
      );

  int DoInvokePIDLIE4(
    int dispid,
    Pointer<ITEMIDLIST> pidl,
    int fCanCancel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 dispid,
            Pointer<ITEMIDLIST> pidl,
            Int32 fCanCancel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dispid,
            Pointer<ITEMIDLIST> pidl,
            int fCanCancel,
          )>()(
        ptr.ref.lpVtbl,
        dispid,
        pidl,
        fCanCancel,
      );
}
