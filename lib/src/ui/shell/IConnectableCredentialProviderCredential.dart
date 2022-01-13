// IConnectableCredentialProviderCredential.dart

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

import '../../ui/shell/ICredentialProviderCredential.dart';
import '../../ui/shell/IQueryContinueWithStatus.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IConnectableCredentialProviderCredential =
    '{9387928B-AC75-4BF9-8AB2-2B93C4A55290}';

/// {@category Interface}
/// {@category com}
class IConnectableCredentialProviderCredential
    extends ICredentialProviderCredential {
  // vtable begins at 20, is 2 entries long.
  IConnectableCredentialProviderCredential(Pointer<COMObject> ptr) : super(ptr);

  int Connect(
    Pointer<COMObject> pqcws,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pqcws,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pqcws,
          )>()(
        ptr.ref.lpVtbl,
        pqcws,
      );

  int Disconnect() => ptr.ref.lpVtbl.value
          .elementAt(21)
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
