// IBindEventHandler.dart

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
import '../../../system/com/IDispatch.dart';

/// @nodoc
const IID_IBindEventHandler = '{63CDBCB0-C1B1-11D0-9336-00A0C90DCAA9}';

/// {@category Interface}
/// {@category com}
class IBindEventHandler extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IBindEventHandler(Pointer<COMObject> ptr) : super(ptr);

  int BindHandler(
    Pointer<Utf16> pstrEvent,
    Pointer<COMObject> pdisp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pstrEvent,
            Pointer<COMObject> pdisp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pstrEvent,
            Pointer<COMObject> pdisp,
          )>()(
        ptr.ref.lpVtbl,
        pstrEvent,
        pdisp,
      );
}
