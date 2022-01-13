// IDialBranding.dart

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
import '../../graphics/gdi/structs.g.dart';

/// @nodoc
const IID_IDialBranding = '{8AECAFA9-4306-43CC-8C5A-765F2979CC16}';

/// {@category Interface}
/// {@category com}
class IDialBranding extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDialBranding(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<Utf16> pwzConnectoid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwzConnectoid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwzConnectoid,
          )>()(
        ptr.ref.lpVtbl,
        pwzConnectoid,
      );

  int GetBitmap(
    int dwIndex,
    Pointer<IntPtr> phBitmap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIndex,
            Pointer<IntPtr> phBitmap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIndex,
            Pointer<IntPtr> phBitmap,
          )>()(
        ptr.ref.lpVtbl,
        dwIndex,
        phBitmap,
      );
}
