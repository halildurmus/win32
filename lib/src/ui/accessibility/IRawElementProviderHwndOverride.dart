// IRawElementProviderHwndOverride.dart

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
import '../../ui/accessibility/IRawElementProviderSimple.dart';

/// @nodoc
const IID_IRawElementProviderHwndOverride =
    '{1D5DF27C-8947-4425-B8D9-79787BB460B8}';

/// {@category Interface}
/// {@category com}
class IRawElementProviderHwndOverride extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IRawElementProviderHwndOverride(Pointer<COMObject> ptr) : super(ptr);

  int GetOverrideProviderForHwnd(
    int hwnd,
    Pointer<Pointer<COMObject>> pRetVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
            Pointer<Pointer<COMObject>> pRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
            Pointer<Pointer<COMObject>> pRetVal,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
        pRetVal,
      );
}
