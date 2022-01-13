// IObjectContextInfo2.dart

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

import '../../system/componentservices/IObjectContextInfo.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IObjectContextInfo2 = '{594BE71A-4BC4-438B-9197-CFD176248B09}';

/// {@category Interface}
/// {@category com}
class IObjectContextInfo2 extends IObjectContextInfo {
  // vtable begins at 8, is 3 entries long.
  IObjectContextInfo2(Pointer<COMObject> ptr) : super(ptr);

  int GetPartitionId(
    Pointer<GUID> pGuid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int GetApplicationId(
    Pointer<GUID> pGuid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int GetApplicationInstanceId(
    Pointer<GUID> pGuid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
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
