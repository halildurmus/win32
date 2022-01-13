// IVisualProperties.dart

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
const IID_IVisualProperties = '{E693CF68-D967-4112-8763-99172AEE5E5A}';

/// {@category Interface}
/// {@category com}
class IVisualProperties extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IVisualProperties(Pointer<COMObject> ptr) : super(ptr);

  int SetWatermark(
    int hbmp,
    int vpwf,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hbmp,
            Int32 vpwf,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hbmp,
            int vpwf,
          )>()(
        ptr.ref.lpVtbl,
        hbmp,
        vpwf,
      );

  int SetColor(
    int vpcf,
    int cr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 vpcf,
            Uint32 cr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int vpcf,
            int cr,
          )>()(
        ptr.ref.lpVtbl,
        vpcf,
        cr,
      );

  int GetColor(
    int vpcf,
    Pointer<Uint32> pcr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 vpcf,
            Pointer<Uint32> pcr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int vpcf,
            Pointer<Uint32> pcr,
          )>()(
        ptr.ref.lpVtbl,
        vpcf,
        pcr,
      );

  int SetItemHeight(
    int cyItemInPixels,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 cyItemInPixels,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cyItemInPixels,
          )>()(
        ptr.ref.lpVtbl,
        cyItemInPixels,
      );

  int GetItemHeight(
    Pointer<Int32> cyItemInPixels,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> cyItemInPixels,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> cyItemInPixels,
          )>()(
        ptr.ref.lpVtbl,
        cyItemInPixels,
      );

  int SetFont(
    Pointer<LOGFONT> plf,
    int bRedraw,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<LOGFONT> plf,
            Int32 bRedraw,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<LOGFONT> plf,
            int bRedraw,
          )>()(
        ptr.ref.lpVtbl,
        plf,
        bRedraw,
      );

  int GetFont(
    Pointer<LOGFONT> plf,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<LOGFONT> plf,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<LOGFONT> plf,
          )>()(
        ptr.ref.lpVtbl,
        plf,
      );

  int SetTheme(
    Pointer<Utf16> pszSubAppName,
    Pointer<Utf16> pszSubIdList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszSubAppName,
            Pointer<Utf16> pszSubIdList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszSubAppName,
            Pointer<Utf16> pszSubIdList,
          )>()(
        ptr.ref.lpVtbl,
        pszSubAppName,
        pszSubIdList,
      );
}
