// ICompositionCapabilitiesInteropFactory.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/winrt/IInspectable.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_ICompositionCapabilitiesInteropFactory =
    '{2C9DB356-E70D-4642-8298-BC4AA5B4865C}';

/// {@category Interface}
/// {@category com}
class ICompositionCapabilitiesInteropFactory extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  ICompositionCapabilitiesInteropFactory(Pointer<COMObject> ptr) : super(ptr);

  int GetForWindow(
    int hwnd,
    Pointer<Pointer<COMObject>> result,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
            Pointer<Pointer<COMObject>> result,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
            Pointer<Pointer<COMObject>> result,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
        result,
      );
}
