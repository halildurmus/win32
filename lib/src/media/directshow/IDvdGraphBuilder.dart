// IDvdGraphBuilder.dart

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
import '../../media/directshow/IGraphBuilder.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IDvdGraphBuilder = '{FCC152B6-F372-11D0-8E00-00C04FD7C08B}';

/// {@category Interface}
/// {@category com}
class IDvdGraphBuilder extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IDvdGraphBuilder(Pointer<COMObject> ptr) : super(ptr);

  int GetFiltergraph(
    Pointer<Pointer<COMObject>> ppGB,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppGB,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppGB,
          )>()(
        ptr.ref.lpVtbl,
        ppGB,
      );

  int GetDvdInterface(
    Pointer<GUID> riid,
    Pointer<Pointer> ppvIF,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvIF,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvIF,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        ppvIF,
      );

  int RenderDvdVideoVolume(
    Pointer<Utf16> lpcwszPathName,
    int dwFlags,
    Pointer<AM_DVD_RENDERSTATUS> pStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> lpcwszPathName,
            Uint32 dwFlags,
            Pointer<AM_DVD_RENDERSTATUS> pStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> lpcwszPathName,
            int dwFlags,
            Pointer<AM_DVD_RENDERSTATUS> pStatus,
          )>()(
        ptr.ref.lpVtbl,
        lpcwszPathName,
        dwFlags,
        pStatus,
      );
}
