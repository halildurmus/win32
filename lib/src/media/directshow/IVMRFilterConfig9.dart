// IVMRFilterConfig9.dart

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
import '../../media/directshow/IVMRImageCompositor9.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IVMRFilterConfig9 = '{5A804648-4F66-4867-9C43-4F5C822CF1B8}';

/// {@category Interface}
/// {@category com}
class IVMRFilterConfig9 extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IVMRFilterConfig9(Pointer<COMObject> ptr) : super(ptr);

  int SetImageCompositor(
    Pointer<COMObject> lpVMRImgCompositor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> lpVMRImgCompositor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> lpVMRImgCompositor,
          )>()(
        ptr.ref.lpVtbl,
        lpVMRImgCompositor,
      );

  int SetNumberOfStreams(
    int dwMaxStreams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwMaxStreams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwMaxStreams,
          )>()(
        ptr.ref.lpVtbl,
        dwMaxStreams,
      );

  int GetNumberOfStreams(
    Pointer<Uint32> pdwMaxStreams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwMaxStreams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwMaxStreams,
          )>()(
        ptr.ref.lpVtbl,
        pdwMaxStreams,
      );

  int SetRenderingPrefs(
    int dwRenderFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwRenderFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwRenderFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwRenderFlags,
      );

  int GetRenderingPrefs(
    Pointer<Uint32> pdwRenderFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwRenderFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwRenderFlags,
          )>()(
        ptr.ref.lpVtbl,
        pdwRenderFlags,
      );

  int SetRenderingMode(
    int Mode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Mode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Mode,
          )>()(
        ptr.ref.lpVtbl,
        Mode,
      );

  int GetRenderingMode(
    Pointer<Uint32> pMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pMode,
          )>()(
        ptr.ref.lpVtbl,
        pMode,
      );
}
