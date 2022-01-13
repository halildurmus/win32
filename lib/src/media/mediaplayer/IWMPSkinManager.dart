// IWMPSkinManager.dart

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

/// @nodoc
const IID_IWMPSkinManager = '{076F2FA6-ED30-448B-8CC5-3F3EF3529C7A}';

/// {@category Interface}
/// {@category com}
class IWMPSkinManager extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWMPSkinManager(Pointer<COMObject> ptr) : super(ptr);

  int SetVisualStyle(
    Pointer<Utf16> bstrPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrPath,
          )>()(
        ptr.ref.lpVtbl,
        bstrPath,
      );
}
