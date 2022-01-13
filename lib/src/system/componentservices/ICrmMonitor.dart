// ICrmMonitor.dart

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
import '../../system/componentservices/ICrmMonitorClerks.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_ICrmMonitor = '{70C8E443-C7ED-11D1-82FB-00A0C91EEDE9}';

/// {@category Interface}
/// {@category com}
class ICrmMonitor extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ICrmMonitor(Pointer<COMObject> ptr) : super(ptr);

  int GetClerks(
    Pointer<Pointer<COMObject>> pClerks,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pClerks,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pClerks,
          )>()(
        ptr.ref.lpVtbl,
        pClerks,
      );

  int HoldClerk(
    VARIANT Index,
    Pointer<VARIANT> pItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT Index,
            Pointer<VARIANT> pItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT Index,
            Pointer<VARIANT> pItem,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        pItem,
      );
}
