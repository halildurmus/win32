// ID3D11VideoDevice2.dart

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

import '../../graphics/direct3d11/ID3D11VideoDevice1.dart';
import '../../graphics/direct3d11/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d11/ID3D11CryptoSession.dart';

/// @nodoc
const IID_ID3D11VideoDevice2 = '{59C0CB01-35F0-4A70-8F67-87905C906A53}';

/// {@category Interface}
/// {@category com}
class ID3D11VideoDevice2 extends ID3D11VideoDevice1 {
  // vtable begins at 24, is 2 entries long.
  ID3D11VideoDevice2(Pointer<COMObject> ptr) : super(ptr);

  int CheckFeatureSupport(
    int Feature,
    Pointer pFeatureSupportData,
    int FeatureSupportDataSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Feature,
            Pointer pFeatureSupportData,
            Uint32 FeatureSupportDataSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Feature,
            Pointer pFeatureSupportData,
            int FeatureSupportDataSize,
          )>()(
        ptr.ref.lpVtbl,
        Feature,
        pFeatureSupportData,
        FeatureSupportDataSize,
      );

  int NegotiateCryptoSessionKeyExchangeMT(
    Pointer<COMObject> pCryptoSession,
    int flags,
    int DataSize,
    Pointer pData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCryptoSession,
            Uint32 flags,
            Uint32 DataSize,
            Pointer pData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCryptoSession,
            int flags,
            int DataSize,
            Pointer pData,
          )>()(
        ptr.ref.lpVtbl,
        pCryptoSession,
        flags,
        DataSize,
        pData,
      );
}
