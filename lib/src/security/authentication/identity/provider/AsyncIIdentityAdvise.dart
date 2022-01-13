// AsyncIIdentityAdvise.dart

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
import '../../../../foundation/structs.g.dart';

/// @nodoc
const IID_AsyncIIdentityAdvise = '{3AB4C8DA-D038-4830-8DD9-3253C55A127F}';

/// {@category Interface}
/// {@category com}
class AsyncIIdentityAdvise extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  AsyncIIdentityAdvise(Pointer<COMObject> ptr) : super(ptr);

  int Begin_IdentityUpdated(
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

  int Finish_IdentityUpdated() => ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
