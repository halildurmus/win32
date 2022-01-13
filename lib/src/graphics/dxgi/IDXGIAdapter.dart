// IDXGIAdapter.dart

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

import '../../graphics/dxgi/IDXGIObject.dart';
import '../../graphics/dxgi/IDXGIOutput.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/dxgi/structs.g.dart';

/// @nodoc
const IID_IDXGIAdapter = '{2411E7E1-12AC-4CCF-BD14-9798E8534DC0}';

/// {@category Interface}
/// {@category com}
class IDXGIAdapter extends IDXGIObject {
  // vtable begins at 7, is 3 entries long.
  IDXGIAdapter(Pointer<COMObject> ptr) : super(ptr);

  int EnumOutputs(
    int Output,
    Pointer<Pointer<COMObject>> ppOutput,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Output,
            Pointer<Pointer<COMObject>> ppOutput,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Output,
            Pointer<Pointer<COMObject>> ppOutput,
          )>()(
        ptr.ref.lpVtbl,
        Output,
        ppOutput,
      );

  int GetDesc(
    Pointer<DXGI_ADAPTER_DESC> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DXGI_ADAPTER_DESC> pDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DXGI_ADAPTER_DESC> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
      );

  int CheckInterfaceSupport(
    Pointer<GUID> InterfaceName,
    Pointer<Int64> pUMDVersion,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> InterfaceName,
            Pointer<Int64> pUMDVersion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> InterfaceName,
            Pointer<Int64> pUMDVersion,
          )>()(
        ptr.ref.lpVtbl,
        InterfaceName,
        pUMDVersion,
      );
}
