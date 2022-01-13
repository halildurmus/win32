// ISIInbandEPGEvent.dart

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
import '../../media/directshow/IDVB_EIT2.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISIInbandEPGEvent = '{7E47913A-5A89-423D-9A2B-E15168858934}';

/// {@category Interface}
/// {@category com}
class ISIInbandEPGEvent extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ISIInbandEPGEvent(Pointer<COMObject> ptr) : super(ptr);

  int SIObjectEvent(
    Pointer<COMObject> pIDVB_EIT,
    int dwTable_ID,
    int dwService_ID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIDVB_EIT,
            Uint32 dwTable_ID,
            Uint32 dwService_ID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIDVB_EIT,
            int dwTable_ID,
            int dwService_ID,
          )>()(
        ptr.ref.lpVtbl,
        pIDVB_EIT,
        dwTable_ID,
        dwService_ID,
      );
}
