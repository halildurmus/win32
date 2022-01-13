// IComponentAuthenticate.dart

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
import '../../foundation/structs.g.dart';
import '../../media/audio/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IComponentAuthenticate = '{A9889C00-6D2B-11D3-8496-00C04F79DBC0}';

/// {@category Interface}
/// {@category com}
class IComponentAuthenticate extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IComponentAuthenticate(Pointer<COMObject> ptr) : super(ptr);

  int SACAuth(
    int dwProtocolID,
    int dwPass,
    Pointer<Uint8> pbDataIn,
    int dwDataInLen,
    Pointer<Pointer<Uint8>> ppbDataOut,
    Pointer<Uint32> pdwDataOutLen,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwProtocolID,
            Uint32 dwPass,
            Pointer<Uint8> pbDataIn,
            Uint32 dwDataInLen,
            Pointer<Pointer<Uint8>> ppbDataOut,
            Pointer<Uint32> pdwDataOutLen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwProtocolID,
            int dwPass,
            Pointer<Uint8> pbDataIn,
            int dwDataInLen,
            Pointer<Pointer<Uint8>> ppbDataOut,
            Pointer<Uint32> pdwDataOutLen,
          )>()(
        ptr.ref.lpVtbl,
        dwProtocolID,
        dwPass,
        pbDataIn,
        dwDataInLen,
        ppbDataOut,
        pdwDataOutLen,
      );

  int SACGetProtocols(
    Pointer<Pointer<Uint32>> ppdwProtocols,
    Pointer<Uint32> pdwProtocolCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint32>> ppdwProtocols,
            Pointer<Uint32> pdwProtocolCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint32>> ppdwProtocols,
            Pointer<Uint32> pdwProtocolCount,
          )>()(
        ptr.ref.lpVtbl,
        ppdwProtocols,
        pdwProtocolCount,
      );
}
