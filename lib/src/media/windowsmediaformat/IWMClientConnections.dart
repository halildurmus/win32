// IWMClientConnections.dart

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
import '../../media/windowsmediaformat/structs.g.dart';

/// @nodoc
const IID_IWMClientConnections = '{73C66010-A299-41DF-B1F0-CCF03B09C1C6}';

/// {@category Interface}
/// {@category com}
class IWMClientConnections extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWMClientConnections(Pointer<COMObject> ptr) : super(ptr);

  int GetClientCount(
    Pointer<Uint32> pcClients,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcClients,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcClients,
          )>()(
        ptr.ref.lpVtbl,
        pcClients,
      );

  int GetClientProperties(
    int dwClientNum,
    Pointer<WM_CLIENT_PROPERTIES> pClientProperties,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwClientNum,
            Pointer<WM_CLIENT_PROPERTIES> pClientProperties,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwClientNum,
            Pointer<WM_CLIENT_PROPERTIES> pClientProperties,
          )>()(
        ptr.ref.lpVtbl,
        dwClientNum,
        pClientProperties,
      );
}
