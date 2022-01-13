// IPublishedApp.dart

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

import '../../ui/shell/IShellApp.dart';
import '../../foundation/structs.g.dart';
import '../../ui/shell/structs.g.dart';

/// @nodoc
const IID_IPublishedApp = '{1BC752E0-9046-11D1-B8B3-006008059382}';

/// {@category Interface}
/// {@category com}
class IPublishedApp extends IShellApp {
  // vtable begins at 8, is 3 entries long.
  IPublishedApp(Pointer<COMObject> ptr) : super(ptr);

  int Install(
    Pointer<SYSTEMTIME> pstInstall,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SYSTEMTIME> pstInstall,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SYSTEMTIME> pstInstall,
          )>()(
        ptr.ref.lpVtbl,
        pstInstall,
      );

  int GetPublishedAppInfo(
    Pointer<PUBAPPINFO> ppai,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PUBAPPINFO> ppai,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PUBAPPINFO> ppai,
          )>()(
        ptr.ref.lpVtbl,
        ppai,
      );

  int Unschedule() => ptr.ref.lpVtbl.value
          .elementAt(10)
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
}
