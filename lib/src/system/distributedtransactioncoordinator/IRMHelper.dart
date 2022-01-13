// IRMHelper.dart

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
import '../../system/distributedtransactioncoordinator/structs.g.dart';

/// @nodoc
const IID_IRMHelper = '{E793F6D1-F53D-11CF-A60D-00A0C905416E}';

/// {@category Interface}
/// {@category com}
class IRMHelper extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IRMHelper(Pointer<COMObject> ptr) : super(ptr);

  int RMCount(
    int dwcTotalNumberOfRMs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwcTotalNumberOfRMs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwcTotalNumberOfRMs,
          )>()(
        ptr.ref.lpVtbl,
        dwcTotalNumberOfRMs,
      );

  int RMInfo(
    Pointer<xa_switch_t> pXa_Switch,
    int fCDeclCallingConv,
    Pointer<Utf8> pszOpenString,
    Pointer<Utf8> pszCloseString,
    GUID guidRMRecovery,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<xa_switch_t> pXa_Switch,
            Int32 fCDeclCallingConv,
            Pointer<Utf8> pszOpenString,
            Pointer<Utf8> pszCloseString,
            GUID guidRMRecovery,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<xa_switch_t> pXa_Switch,
            int fCDeclCallingConv,
            Pointer<Utf8> pszOpenString,
            Pointer<Utf8> pszCloseString,
            GUID guidRMRecovery,
          )>()(
        ptr.ref.lpVtbl,
        pXa_Switch,
        fCDeclCallingConv,
        pszOpenString,
        pszCloseString,
        guidRMRecovery,
      );
}
