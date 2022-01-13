// IWICDdsDecoder.dart

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
import '../../graphics/imaging/IWICBitmapFrameDecode.dart';

/// @nodoc
const IID_IWICDdsDecoder = '{409CD537-8532-40CB-9774-E2FEB2DF4E9C}';

/// {@category Interface}
/// {@category com}
class IWICDdsDecoder extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWICDdsDecoder(Pointer<COMObject> ptr) : super(ptr);

  int GetParameters(
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

  int GetFrame(
    int arrayIndex,
    int mipLevel,
    int sliceIndex,
    Pointer<Pointer<COMObject>> ppIBitmapFrame,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 arrayIndex,
            Uint32 mipLevel,
            Uint32 sliceIndex,
            Pointer<Pointer<COMObject>> ppIBitmapFrame,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int arrayIndex,
            int mipLevel,
            int sliceIndex,
            Pointer<Pointer<COMObject>> ppIBitmapFrame,
          )>()(
        ptr.ref.lpVtbl,
        arrayIndex,
        mipLevel,
        sliceIndex,
        ppIBitmapFrame,
      );
}
