// IObjectContextInfo.dart

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
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IObjectContextInfo = '{75B52DDB-E8ED-11D1-93AD-00AA00BA3258}';

/// {@category Interface}
/// {@category com}
class IObjectContextInfo extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IObjectContextInfo(Pointer<COMObject> ptr) : super(ptr);

  int IsInTransaction() => ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int GetTransaction(
    Pointer<Pointer<COMObject>> pptrans,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pptrans,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pptrans,
          )>()(
        ptr.ref.lpVtbl,
        pptrans,
      );

  int GetTransactionId(
    Pointer<GUID> pGuid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pGuid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pGuid,
          )>()(
        ptr.ref.lpVtbl,
        pGuid,
      );

  int GetActivityId(
    Pointer<GUID> pGUID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pGUID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pGUID,
          )>()(
        ptr.ref.lpVtbl,
        pGUID,
      );

  int GetContextId(
    Pointer<GUID> pGuid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pGuid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pGuid,
          )>()(
        ptr.ref.lpVtbl,
        pGuid,
      );
}
