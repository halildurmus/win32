// IDXGIOutput1.dart

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

import '../../graphics/dxgi/IDXGIOutput.dart';
import '../../graphics/dxgi/common/structs.g.dart';
import '../../graphics/dxgi/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../graphics/dxgi/IDXGIResource.dart';
import '../../graphics/dxgi/IDXGIOutputDuplication.dart';

/// @nodoc
const IID_IDXGIOutput1 = '{00CDDEA8-939B-4B83-A340-A685226666CC}';

/// {@category Interface}
/// {@category com}
class IDXGIOutput1 extends IDXGIOutput {
  // vtable begins at 19, is 4 entries long.
  IDXGIOutput1(Pointer<COMObject> ptr) : super(ptr);

  int GetDisplayModeList1(
    int EnumFormat,
    int Flags,
    Pointer<Uint32> pNumModes,
    Pointer<DXGI_MODE_DESC1> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 EnumFormat,
            Uint32 Flags,
            Pointer<Uint32> pNumModes,
            Pointer<DXGI_MODE_DESC1> pDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int EnumFormat,
            int Flags,
            Pointer<Uint32> pNumModes,
            Pointer<DXGI_MODE_DESC1> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        EnumFormat,
        Flags,
        pNumModes,
        pDesc,
      );

  int FindClosestMatchingMode1(
    Pointer<DXGI_MODE_DESC1> pModeToMatch,
    Pointer<DXGI_MODE_DESC1> pClosestMatch,
    Pointer<COMObject> pConcernedDevice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DXGI_MODE_DESC1> pModeToMatch,
            Pointer<DXGI_MODE_DESC1> pClosestMatch,
            Pointer<COMObject> pConcernedDevice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DXGI_MODE_DESC1> pModeToMatch,
            Pointer<DXGI_MODE_DESC1> pClosestMatch,
            Pointer<COMObject> pConcernedDevice,
          )>()(
        ptr.ref.lpVtbl,
        pModeToMatch,
        pClosestMatch,
        pConcernedDevice,
      );

  int GetDisplaySurfaceData1(
    Pointer<COMObject> pDestination,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDestination,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDestination,
          )>()(
        ptr.ref.lpVtbl,
        pDestination,
      );

  int DuplicateOutput(
    Pointer<COMObject> pDevice,
    Pointer<Pointer<COMObject>> ppOutputDuplication,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDevice,
            Pointer<Pointer<COMObject>> ppOutputDuplication,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDevice,
            Pointer<Pointer<COMObject>> ppOutputDuplication,
          )>()(
        ptr.ref.lpVtbl,
        pDevice,
        ppOutputDuplication,
      );
}
