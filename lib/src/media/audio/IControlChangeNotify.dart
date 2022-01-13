// IControlChangeNotify.dart

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

/// @nodoc
const IID_IControlChangeNotify = '{A09513ED-C709-4D21-BD7B-5F34C47F3947}';

/// {@category Interface}
/// {@category com}
class IControlChangeNotify extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IControlChangeNotify(Pointer<COMObject> ptr) : super(ptr);

  int OnNotify(
    int dwSenderProcessId,
    Pointer<GUID> pguidEventContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSenderProcessId,
            Pointer<GUID> pguidEventContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSenderProcessId,
            Pointer<GUID> pguidEventContext,
          )>()(
        ptr.ref.lpVtbl,
        dwSenderProcessId,
        pguidEventContext,
      );
}
