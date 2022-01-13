// IPublishedApp2.dart

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

import '../../ui/shell/IPublishedApp.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IPublishedApp2 = '{12B81347-1B3A-4A04-AA61-3F768B67FD7E}';

/// {@category Interface}
/// {@category com}
class IPublishedApp2 extends IPublishedApp {
  // vtable begins at 11, is 1 entries long.
  IPublishedApp2(Pointer<COMObject> ptr) : super(ptr);

  int Install2(
    Pointer<SYSTEMTIME> pstInstall,
    int hwndParent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SYSTEMTIME> pstInstall,
            IntPtr hwndParent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SYSTEMTIME> pstInstall,
            int hwndParent,
          )>()(
        ptr.ref.lpVtbl,
        pstInstall,
        hwndParent,
      );
}
