// INetRasConnectionIpUiInfo.dart

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
import '../../networkmanagement/netmanagement/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_INetRasConnectionIpUiInfo = '{FAEDCF58-31FE-11D1-AAD2-00805FC1270E}';

/// {@category Interface}
/// {@category com}
class INetRasConnectionIpUiInfo extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  INetRasConnectionIpUiInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetUiInfo(
    Pointer<RASCON_IPUI> pInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RASCON_IPUI> pInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RASCON_IPUI> pInfo,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
      );
}
