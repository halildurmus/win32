// IDirectMusicPortDownload.dart

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

import '../../../system/com/IUnknown.dart';
import '../../../media/audio/directmusic/IDirectMusicDownload.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDirectMusicPortDownload = '{D2AC287A-B39B-11D1-8704-00600893B1BD}';

/// {@category Interface}
/// {@category com}
class IDirectMusicPortDownload extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IDirectMusicPortDownload(Pointer<COMObject> ptr) : super(ptr);

  int GetBuffer(
    int dwDLId,
    Pointer<Pointer<COMObject>> ppIDMDownload,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwDLId,
            Pointer<Pointer<COMObject>> ppIDMDownload,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwDLId,
            Pointer<Pointer<COMObject>> ppIDMDownload,
          )>()(
        ptr.ref.lpVtbl,
        dwDLId,
        ppIDMDownload,
      );

  int AllocateBuffer(
    int dwSize,
    Pointer<Pointer<COMObject>> ppIDMDownload,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSize,
            Pointer<Pointer<COMObject>> ppIDMDownload,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSize,
            Pointer<Pointer<COMObject>> ppIDMDownload,
          )>()(
        ptr.ref.lpVtbl,
        dwSize,
        ppIDMDownload,
      );

  int GetDLId(
    Pointer<Uint32> pdwStartDLId,
    int dwCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwStartDLId,
            Uint32 dwCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwStartDLId,
            int dwCount,
          )>()(
        ptr.ref.lpVtbl,
        pdwStartDLId,
        dwCount,
      );

  int GetAppend(
    Pointer<Uint32> pdwAppend,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwAppend,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwAppend,
          )>()(
        ptr.ref.lpVtbl,
        pdwAppend,
      );

  int Download(
    Pointer<COMObject> pIDMDownload,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIDMDownload,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIDMDownload,
          )>()(
        ptr.ref.lpVtbl,
        pIDMDownload,
      );

  int Unload(
    Pointer<COMObject> pIDMDownload,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIDMDownload,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIDMDownload,
          )>()(
        ptr.ref.lpVtbl,
        pIDMDownload,
      );
}
