// IMFNetSchemeHandlerConfig.dart

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
import '../../media/mediafoundation/structs.g.dart';

/// @nodoc
const IID_IMFNetSchemeHandlerConfig = '{7BE19E73-C9BF-468A-AC5A-A5E8653BEC87}';

/// {@category Interface}
/// {@category com}
class IMFNetSchemeHandlerConfig extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMFNetSchemeHandlerConfig(Pointer<COMObject> ptr) : super(ptr);

  int GetNumberOfSupportedProtocols(
    Pointer<Uint32> pcProtocols,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcProtocols,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcProtocols,
          )>()(
        ptr.ref.lpVtbl,
        pcProtocols,
      );

  int GetSupportedProtocolType(
    int nProtocolIndex,
    Pointer<Int32> pnProtocolType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nProtocolIndex,
            Pointer<Int32> pnProtocolType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nProtocolIndex,
            Pointer<Int32> pnProtocolType,
          )>()(
        ptr.ref.lpVtbl,
        nProtocolIndex,
        pnProtocolType,
      );

  int ResetProtocolRolloverSettings() => ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
