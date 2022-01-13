// IVssProviderNotifications.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IVssProviderNotifications = '{E561901F-03A5-4AFE-86D0-72BAEECE7004}';

/// {@category Interface}
/// {@category com}
class IVssProviderNotifications extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IVssProviderNotifications(Pointer<COMObject> ptr) : super(ptr);

  int OnLoad(
    Pointer<COMObject> pCallback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCallback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCallback,
          )>()(
        ptr.ref.lpVtbl,
        pCallback,
      );

  int OnUnload(
    int bForceUnload,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bForceUnload,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bForceUnload,
          )>()(
        ptr.ref.lpVtbl,
        bForceUnload,
      );
}
