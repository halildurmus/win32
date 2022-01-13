// IWICDdsEncoder.dart

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
import '../../graphics/imaging/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/imaging/IWICBitmapFrameEncode.dart';

/// @nodoc
const IID_IWICDdsEncoder = '{5CACDB4C-407E-41B3-B936-D0F010CD6732}';

/// {@category Interface}
/// {@category com}
class IWICDdsEncoder extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IWICDdsEncoder(Pointer<COMObject> ptr) : super(ptr);

  int SetParameters(
    Pointer<WICDdsParameters> pParameters,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WICDdsParameters> pParameters,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WICDdsParameters> pParameters,
          )>()(
        ptr.ref.lpVtbl,
        pParameters,
      );

  int GetParameters(
    Pointer<WICDdsParameters> pParameters,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WICDdsParameters> pParameters,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WICDdsParameters> pParameters,
          )>()(
        ptr.ref.lpVtbl,
        pParameters,
      );

  int CreateNewFrame(
    Pointer<Pointer<COMObject>> ppIFrameEncode,
    Pointer<Uint32> pArrayIndex,
    Pointer<Uint32> pMipLevel,
    Pointer<Uint32> pSliceIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIFrameEncode,
            Pointer<Uint32> pArrayIndex,
            Pointer<Uint32> pMipLevel,
            Pointer<Uint32> pSliceIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIFrameEncode,
            Pointer<Uint32> pArrayIndex,
            Pointer<Uint32> pMipLevel,
            Pointer<Uint32> pSliceIndex,
          )>()(
        ptr.ref.lpVtbl,
        ppIFrameEncode,
        pArrayIndex,
        pMipLevel,
        pSliceIndex,
      );
}
