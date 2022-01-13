// ITfCompartmentMgr.dart

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
import '../../ui/textservices/ITfCompartment.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/IEnumGUID.dart';

/// @nodoc
const IID_ITfCompartmentMgr = '{7DCF57AC-18AD-438B-824D-979BFFB74B7C}';

/// {@category Interface}
/// {@category com}
class ITfCompartmentMgr extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ITfCompartmentMgr(Pointer<COMObject> ptr) : super(ptr);

  int GetCompartment(
    Pointer<GUID> rguid,
    Pointer<Pointer<COMObject>> ppcomp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rguid,
            Pointer<Pointer<COMObject>> ppcomp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rguid,
            Pointer<Pointer<COMObject>> ppcomp,
          )>()(
        ptr.ref.lpVtbl,
        rguid,
        ppcomp,
      );

  int ClearCompartment(
    int tid,
    Pointer<GUID> rguid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 tid,
            Pointer<GUID> rguid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int tid,
            Pointer<GUID> rguid,
          )>()(
        ptr.ref.lpVtbl,
        tid,
        rguid,
      );

  int EnumCompartments(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        ppEnum,
      );
}
