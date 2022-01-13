// IDXGIOutput5.dart

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

import '../../graphics/dxgi/IDXGIOutput4.dart';
import '../../specialTypes.dart';
import '../../graphics/dxgi/common/structs.g.dart';
import '../../graphics/dxgi/IDXGIOutputDuplication.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDXGIOutput5 = '{80A07424-AB52-42EB-833C-0C42FD282D98}';

/// {@category Interface}
/// {@category com}
class IDXGIOutput5 extends IDXGIOutput4 {
  // vtable begins at 26, is 1 entries long.
  IDXGIOutput5(Pointer<COMObject> ptr) : super(ptr);

  int DuplicateOutput1(
    Pointer<COMObject> pDevice,
    int Flags,
    int SupportedFormatsCount,
    Pointer<Uint32> pSupportedFormats,
    Pointer<Pointer<COMObject>> ppOutputDuplication,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDevice,
            Uint32 Flags,
            Uint32 SupportedFormatsCount,
            Pointer<Uint32> pSupportedFormats,
            Pointer<Pointer<COMObject>> ppOutputDuplication,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDevice,
            int Flags,
            int SupportedFormatsCount,
            Pointer<Uint32> pSupportedFormats,
            Pointer<Pointer<COMObject>> ppOutputDuplication,
          )>()(
        ptr.ref.lpVtbl,
        pDevice,
        Flags,
        SupportedFormatsCount,
        pSupportedFormats,
        ppOutputDuplication,
      );
}
