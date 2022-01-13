// ISCPSecureAuthenticate.dart

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
import '../../media/devicemanager/ISCPSecureQuery.dart';
import '../../foundation/structs.g.dart';
import '../../media/audio/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_ISCPSecureAuthenticate = '{1DCB3A0F-33ED-11D3-8470-00C04F79DBC0}';

/// {@category Interface}
/// {@category com}
class ISCPSecureAuthenticate extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ISCPSecureAuthenticate(Pointer<COMObject> ptr) : super(ptr);

  int GetSecureQuery(
    Pointer<Pointer<COMObject>> ppSecureQuery,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSecureQuery,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSecureQuery,
          )>()(
        ptr.ref.lpVtbl,
        ppSecureQuery,
      );
}
