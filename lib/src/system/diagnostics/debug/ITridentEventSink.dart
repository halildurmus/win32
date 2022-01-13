// ITridentEventSink.dart

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
import '../../../system/com/structs.g.dart';
import '../../../specialTypes.dart';

/// @nodoc
const IID_ITridentEventSink = '{1DC9CA50-06EF-11D2-8415-006008C3FBFC}';

/// {@category Interface}
/// {@category com}
class ITridentEventSink extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ITridentEventSink(Pointer<COMObject> ptr) : super(ptr);

  int FireEvent(
    Pointer<Utf16> pstrEvent,
    Pointer<DISPPARAMS> pdp,
    Pointer<VARIANT> pvarRes,
    Pointer<EXCEPINFO> pei,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pstrEvent,
            Pointer<DISPPARAMS> pdp,
            Pointer<VARIANT> pvarRes,
            Pointer<EXCEPINFO> pei,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pstrEvent,
            Pointer<DISPPARAMS> pdp,
            Pointer<VARIANT> pvarRes,
            Pointer<EXCEPINFO> pei,
          )>()(
        ptr.ref.lpVtbl,
        pstrEvent,
        pdp,
        pvarRes,
        pei,
      );
}
