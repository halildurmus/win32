// IResolveShellLink.dart

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
const IID_IResolveShellLink = '{5CD52983-9449-11D2-963A-00C04F79ADF0}';

/// {@category Interface}
/// {@category com}
class IResolveShellLink extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IResolveShellLink(Pointer<COMObject> ptr) : super(ptr);

  int ResolveShellLink(
    Pointer<COMObject> punkLink,
    int hwnd,
    int fFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punkLink,
            IntPtr hwnd,
            Uint32 fFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punkLink,
            int hwnd,
            int fFlags,
          )>()(
        ptr.ref.lpVtbl,
        punkLink,
        hwnd,
        fFlags,
      );
}
