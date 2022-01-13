// IInterfaceRelated.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IInterfaceRelated = '{D1FB5A79-7706-11D1-ADBA-00C04FC2ADC0}';

/// {@category Interface}
/// {@category com}
class IInterfaceRelated extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IInterfaceRelated(Pointer<COMObject> ptr) : super(ptr);

  int SetIID(
    Pointer<GUID> iid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> iid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> iid,
          )>()(
        ptr.ref.lpVtbl,
        iid,
      );

  int GetIID(
    Pointer<GUID> piid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> piid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> piid,
          )>()(
        ptr.ref.lpVtbl,
        piid,
      );
}
