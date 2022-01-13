// IWizardSite.dart

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
import '../../ui/controls/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWizardSite = '{88960F5B-422F-4E7B-8013-73415381C3C3}';

/// {@category Interface}
/// {@category com}
class IWizardSite extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IWizardSite(Pointer<COMObject> ptr) : super(ptr);

  int GetPreviousPage(
    Pointer<IntPtr> phpage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> phpage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> phpage,
          )>()(
        ptr.ref.lpVtbl,
        phpage,
      );

  int GetNextPage(
    Pointer<IntPtr> phpage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> phpage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> phpage,
          )>()(
        ptr.ref.lpVtbl,
        phpage,
      );

  int GetCancelledPage(
    Pointer<IntPtr> phpage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> phpage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> phpage,
          )>()(
        ptr.ref.lpVtbl,
        phpage,
      );
}
