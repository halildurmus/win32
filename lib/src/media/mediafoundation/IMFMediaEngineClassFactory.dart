// IMFMediaEngineClassFactory.dart

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
import '../../media/mediafoundation/IMFAttributes.dart';
import '../../media/mediafoundation/IMFMediaEngine.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/IMFMediaTimeRange.dart';
import '../../media/mediafoundation/IMFMediaError.dart';

/// @nodoc
const IID_IMFMediaEngineClassFactory = '{4D645ACE-26AA-4688-9BE1-DF3516990B93}';

/// {@category Interface}
/// {@category com}
class IMFMediaEngineClassFactory extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMFMediaEngineClassFactory(Pointer<COMObject> ptr) : super(ptr);

  int CreateInstance(
    int dwFlags,
    Pointer<COMObject> pAttr,
    Pointer<Pointer<COMObject>> ppPlayer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<COMObject> pAttr,
            Pointer<Pointer<COMObject>> ppPlayer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<COMObject> pAttr,
            Pointer<Pointer<COMObject>> ppPlayer,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        pAttr,
        ppPlayer,
      );

  int CreateTimeRange(
    Pointer<Pointer<COMObject>> ppTimeRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTimeRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTimeRange,
          )>()(
        ptr.ref.lpVtbl,
        ppTimeRange,
      );

  int CreateError(
    Pointer<Pointer<COMObject>> ppError,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppError,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppError,
          )>()(
        ptr.ref.lpVtbl,
        ppError,
      );
}
