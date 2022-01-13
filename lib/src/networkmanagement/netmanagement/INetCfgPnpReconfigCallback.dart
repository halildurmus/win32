// INetCfgPnpReconfigCallback.dart

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
const IID_INetCfgPnpReconfigCallback = '{8D84BD35-E227-11D2-B700-00A0C98A6A85}';

/// {@category Interface}
/// {@category com}
class INetCfgPnpReconfigCallback extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  INetCfgPnpReconfigCallback(Pointer<COMObject> ptr) : super(ptr);

  int SendPnpReconfig(
    int Layer,
    Pointer<Utf16> pszwUpper,
    Pointer<Utf16> pszwLower,
    Pointer pvData,
    int dwSizeOfData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Layer,
            Pointer<Utf16> pszwUpper,
            Pointer<Utf16> pszwLower,
            Pointer pvData,
            Uint32 dwSizeOfData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Layer,
            Pointer<Utf16> pszwUpper,
            Pointer<Utf16> pszwLower,
            Pointer pvData,
            int dwSizeOfData,
          )>()(
        ptr.ref.lpVtbl,
        Layer,
        pszwUpper,
        pszwLower,
        pvData,
        dwSizeOfData,
      );
}
