// IWizardExtension.dart

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
const IID_IWizardExtension = '{C02EA696-86CC-491E-9B23-74394A0444A8}';

/// {@category Interface}
/// {@category com}
class IWizardExtension extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IWizardExtension(Pointer<COMObject> ptr) : super(ptr);

  int AddPages(
    Pointer<IntPtr> aPages,
    int cPages,
    Pointer<Uint32> pnPagesAdded,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> aPages,
            Uint32 cPages,
            Pointer<Uint32> pnPagesAdded,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> aPages,
            int cPages,
            Pointer<Uint32> pnPagesAdded,
          )>()(
        ptr.ref.lpVtbl,
        aPages,
        cPages,
        pnPagesAdded,
      );

  int GetFirstPage(
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

  int GetLastPage(
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
