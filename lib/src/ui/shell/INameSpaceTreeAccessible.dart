// INameSpaceTreeAccessible.dart

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
import '../../ui/shell/IShellItem.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_INameSpaceTreeAccessible = '{71F312DE-43ED-4190-8477-E9536B82350B}';

/// {@category Interface}
/// {@category com}
class INameSpaceTreeAccessible extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  INameSpaceTreeAccessible(Pointer<COMObject> ptr) : super(ptr);

  int OnGetDefaultAccessibilityAction(
    Pointer<COMObject> psi,
    Pointer<Pointer<Utf16>> pbstrDefaultAction,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psi,
            Pointer<Pointer<Utf16>> pbstrDefaultAction,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psi,
            Pointer<Pointer<Utf16>> pbstrDefaultAction,
          )>()(
        ptr.ref.lpVtbl,
        psi,
        pbstrDefaultAction,
      );

  int OnDoDefaultAccessibilityAction(
    Pointer<COMObject> psi,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psi,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psi,
          )>()(
        ptr.ref.lpVtbl,
        psi,
      );

  int OnGetAccessibilityRole(
    Pointer<COMObject> psi,
    Pointer<VARIANT> pvarRole,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psi,
            Pointer<VARIANT> pvarRole,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psi,
            Pointer<VARIANT> pvarRole,
          )>()(
        ptr.ref.lpVtbl,
        psi,
        pvarRole,
      );
}
