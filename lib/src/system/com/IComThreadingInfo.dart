// IComThreadingInfo.dart

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
import '../../system/com/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IComThreadingInfo = '{000001CE-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class IComThreadingInfo extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IComThreadingInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetCurrentApartmentType(
    Pointer<Int32> pAptType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pAptType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pAptType,
          )>()(
        ptr.ref.lpVtbl,
        pAptType,
      );

  int GetCurrentThreadType(
    Pointer<Int32> pThreadType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pThreadType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pThreadType,
          )>()(
        ptr.ref.lpVtbl,
        pThreadType,
      );

  int GetCurrentLogicalThreadId(
    Pointer<GUID> pguidLogicalThreadId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidLogicalThreadId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidLogicalThreadId,
          )>()(
        ptr.ref.lpVtbl,
        pguidLogicalThreadId,
      );

  int SetCurrentLogicalThreadId(
    Pointer<GUID> rguid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rguid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rguid,
          )>()(
        ptr.ref.lpVtbl,
        rguid,
      );
}
