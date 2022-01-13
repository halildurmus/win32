// ISimpleConnectionPoint.dart

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
const IID_ISimpleConnectionPoint = '{51973C3E-CB0C-11D0-B5C9-00A0244A0E7A}';

/// {@category Interface}
/// {@category com}
class ISimpleConnectionPoint extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ISimpleConnectionPoint(Pointer<COMObject> ptr) : super(ptr);

  int GetEventCount(
    Pointer<Uint32> pulCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulCount,
          )>()(
        ptr.ref.lpVtbl,
        pulCount,
      );

  int DescribeEvents(
    int iEvent,
    int cEvents,
    Pointer<Int32> prgid,
    Pointer<Pointer<Utf16>> prgbstr,
    Pointer<Uint32> pcEventsFetched,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iEvent,
            Uint32 cEvents,
            Pointer<Int32> prgid,
            Pointer<Pointer<Utf16>> prgbstr,
            Pointer<Uint32> pcEventsFetched,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iEvent,
            int cEvents,
            Pointer<Int32> prgid,
            Pointer<Pointer<Utf16>> prgbstr,
            Pointer<Uint32> pcEventsFetched,
          )>()(
        ptr.ref.lpVtbl,
        iEvent,
        cEvents,
        prgid,
        prgbstr,
        pcEventsFetched,
      );

  int Advise(
    Pointer<COMObject> pdisp,
    Pointer<Uint32> pdwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pdisp,
            Pointer<Uint32> pdwCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pdisp,
            Pointer<Uint32> pdwCookie,
          )>()(
        ptr.ref.lpVtbl,
        pdisp,
        pdwCookie,
      );

  int Unadvise(
    int dwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwCookie,
          )>()(
        ptr.ref.lpVtbl,
        dwCookie,
      );
}
