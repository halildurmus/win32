// IExtractImage.dart

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
const IID_IExtractImage = '{BB2E617C-0920-11D1-9A0B-00C04FC2D6C1}';

/// {@category Interface}
/// {@category com}
class IExtractImage extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IExtractImage(Pointer<COMObject> ptr) : super(ptr);

  int GetLocation(
    Pointer<Utf16> pszPathBuffer,
    int cch,
    Pointer<Uint32> pdwPriority,
    Pointer<SIZE> prgSize,
    int dwRecClrDepth,
    Pointer<Uint32> pdwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPathBuffer,
            Uint32 cch,
            Pointer<Uint32> pdwPriority,
            Pointer<SIZE> prgSize,
            Uint32 dwRecClrDepth,
            Pointer<Uint32> pdwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPathBuffer,
            int cch,
            Pointer<Uint32> pdwPriority,
            Pointer<SIZE> prgSize,
            int dwRecClrDepth,
            Pointer<Uint32> pdwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pszPathBuffer,
        cch,
        pdwPriority,
        prgSize,
        dwRecClrDepth,
        pdwFlags,
      );

  int Extract(
    Pointer<IntPtr> phBmpThumbnail,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> phBmpThumbnail,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> phBmpThumbnail,
          )>()(
        ptr.ref.lpVtbl,
        phBmpThumbnail,
      );
}
