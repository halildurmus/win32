// IVdsAdmin.dart

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
import '../../storage/virtualdiskservice/structs.g.dart';

/// @nodoc
const IID_IVdsAdmin = '{D188E97D-85AA-4D33-ABC6-26299A10FFC1}';

/// {@category Interface}
/// {@category com}
class IVdsAdmin extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IVdsAdmin(Pointer<COMObject> ptr) : super(ptr);

  int RegisterProvider(
    GUID providerId,
    GUID providerClsid,
    Pointer<Utf16> pwszName,
    int type,
    Pointer<Utf16> pwszMachineName,
    Pointer<Utf16> pwszVersion,
    GUID guidVersionId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID providerId,
            GUID providerClsid,
            Pointer<Utf16> pwszName,
            Int32 type,
            Pointer<Utf16> pwszMachineName,
            Pointer<Utf16> pwszVersion,
            GUID guidVersionId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID providerId,
            GUID providerClsid,
            Pointer<Utf16> pwszName,
            int type,
            Pointer<Utf16> pwszMachineName,
            Pointer<Utf16> pwszVersion,
            GUID guidVersionId,
          )>()(
        ptr.ref.lpVtbl,
        providerId,
        providerClsid,
        pwszName,
        type,
        pwszMachineName,
        pwszVersion,
        guidVersionId,
      );

  int UnregisterProvider(
    GUID providerId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID providerId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID providerId,
          )>()(
        ptr.ref.lpVtbl,
        providerId,
      );
}
