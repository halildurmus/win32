// IWbemProviderIdentity.dart

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
import '../../system/wmi/IWbemClassObject.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWbemProviderIdentity = '{631F7D97-D993-11D2-B339-00105A1F4AAF}';

/// {@category Interface}
/// {@category com}
class IWbemProviderIdentity extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWbemProviderIdentity(Pointer<COMObject> ptr) : super(ptr);

  int SetRegistrationObject(
    int lFlags,
    Pointer<COMObject> pProvReg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
            Pointer<COMObject> pProvReg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
            Pointer<COMObject> pProvReg,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
        pProvReg,
      );
}
