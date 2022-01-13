// IIdentityAdvise.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../../combase.dart';
import '../../../../constants.dart';
import '../../../../exceptions.dart';
import '../../../../guid.dart';
import '../../../../macros.dart';
import '../../../../ole32.dart';
import '../../../../utils.dart';

import '../../../../system/com/IUnknown.dart';
import '../../../../security/authentication/identity/provider/structs.g.dart';
import '../../../../foundation/structs.g.dart';

/// @nodoc
const IID_IIdentityAdvise = '{4E982FED-D14B-440C-B8D6-BB386453D386}';

/// {@category Interface}
/// {@category com}
class IIdentityAdvise extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IIdentityAdvise(Pointer<COMObject> ptr) : super(ptr);

  int IdentityUpdated(
    int dwIdentityUpdateEvents,
    Pointer<Utf16> lpszUniqueID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIdentityUpdateEvents,
            Pointer<Utf16> lpszUniqueID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIdentityUpdateEvents,
            Pointer<Utf16> lpszUniqueID,
          )>()(
        ptr.ref.lpVtbl,
        dwIdentityUpdateEvents,
        lpszUniqueID,
      );
}
