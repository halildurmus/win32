// IThumbnailProvider.dart

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
import '../../graphics/gdi/structs.g.dart';
import '../../ui/shell/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IThumbnailProvider = '{E357FCCD-A995-4576-B01F-234630154E96}';

/// {@category Interface}
/// {@category com}
class IThumbnailProvider extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IThumbnailProvider(Pointer<COMObject> ptr) : super(ptr);

  int GetThumbnail(
    int cx,
    Pointer<IntPtr> phbmp,
    Pointer<Int32> pdwAlpha,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cx,
            Pointer<IntPtr> phbmp,
            Pointer<Int32> pdwAlpha,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cx,
            Pointer<IntPtr> phbmp,
            Pointer<Int32> pdwAlpha,
          )>()(
        ptr.ref.lpVtbl,
        cx,
        phbmp,
        pdwAlpha,
      );
}
