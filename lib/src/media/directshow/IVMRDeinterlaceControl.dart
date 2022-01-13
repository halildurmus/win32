// IVMRDeinterlaceControl.dart

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
import '../../media/directshow/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IVMRDeinterlaceControl = '{BB057577-0DB8-4E6A-87A7-1A8C9A505A0F}';

/// {@category Interface}
/// {@category com}
class IVMRDeinterlaceControl extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IVMRDeinterlaceControl(Pointer<COMObject> ptr) : super(ptr);

  int GetNumberOfDeinterlaceModes(
    Pointer<VMRVideoDesc> lpVideoDescription,
    Pointer<Uint32> lpdwNumDeinterlaceModes,
    Pointer<GUID> lpDeinterlaceModes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VMRVideoDesc> lpVideoDescription,
            Pointer<Uint32> lpdwNumDeinterlaceModes,
            Pointer<GUID> lpDeinterlaceModes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VMRVideoDesc> lpVideoDescription,
            Pointer<Uint32> lpdwNumDeinterlaceModes,
            Pointer<GUID> lpDeinterlaceModes,
          )>()(
        ptr.ref.lpVtbl,
        lpVideoDescription,
        lpdwNumDeinterlaceModes,
        lpDeinterlaceModes,
      );

  int GetDeinterlaceModeCaps(
    Pointer<GUID> lpDeinterlaceMode,
    Pointer<VMRVideoDesc> lpVideoDescription,
    Pointer<VMRDeinterlaceCaps> lpDeinterlaceCaps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> lpDeinterlaceMode,
            Pointer<VMRVideoDesc> lpVideoDescription,
            Pointer<VMRDeinterlaceCaps> lpDeinterlaceCaps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> lpDeinterlaceMode,
            Pointer<VMRVideoDesc> lpVideoDescription,
            Pointer<VMRDeinterlaceCaps> lpDeinterlaceCaps,
          )>()(
        ptr.ref.lpVtbl,
        lpDeinterlaceMode,
        lpVideoDescription,
        lpDeinterlaceCaps,
      );

  int GetDeinterlaceMode(
    int dwStreamID,
    Pointer<GUID> lpDeinterlaceMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamID,
            Pointer<GUID> lpDeinterlaceMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamID,
            Pointer<GUID> lpDeinterlaceMode,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamID,
        lpDeinterlaceMode,
      );

  int SetDeinterlaceMode(
    int dwStreamID,
    Pointer<GUID> lpDeinterlaceMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamID,
            Pointer<GUID> lpDeinterlaceMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamID,
            Pointer<GUID> lpDeinterlaceMode,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamID,
        lpDeinterlaceMode,
      );

  int GetDeinterlacePrefs(
    Pointer<Uint32> lpdwDeinterlacePrefs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> lpdwDeinterlacePrefs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> lpdwDeinterlacePrefs,
          )>()(
        ptr.ref.lpVtbl,
        lpdwDeinterlacePrefs,
      );

  int SetDeinterlacePrefs(
    int dwDeinterlacePrefs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwDeinterlacePrefs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwDeinterlacePrefs,
          )>()(
        ptr.ref.lpVtbl,
        dwDeinterlacePrefs,
      );

  int GetActualDeinterlaceMode(
    int dwStreamID,
    Pointer<GUID> lpDeinterlaceMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamID,
            Pointer<GUID> lpDeinterlaceMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamID,
            Pointer<GUID> lpDeinterlaceMode,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamID,
        lpDeinterlaceMode,
      );
}
