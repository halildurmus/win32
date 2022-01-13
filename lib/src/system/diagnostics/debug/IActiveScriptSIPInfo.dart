// IActiveScriptSIPInfo.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IActiveScriptSIPInfo = '{764651D0-38DE-11D4-A2A3-00104BD35090}';

/// {@category Interface}
/// {@category com}
class IActiveScriptSIPInfo extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IActiveScriptSIPInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetSIPOID(
    Pointer<GUID> poid_sip,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> poid_sip,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> poid_sip,
          )>()(
        ptr.ref.lpVtbl,
        poid_sip,
      );
}
